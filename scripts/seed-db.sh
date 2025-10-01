#!/bin/sh
set -eu

: "${MYSQL_HOST:=mysql}"
: "${MYSQL_PORT:=3306}"
: "${MYSQL_USER:?MYSQL_USER is required}"
: "${MYSQL_PASSWORD:?MYSQL_PASSWORD is required}"
: "${MYSQL_DB:?MYSQL_DB is required}"
: "${DATA_ZIP:=/seed/dbData.zip}"
: "${TABLE_CHECK:=books}"

if [ ! -f "$DATA_ZIP" ]; then
  printf '%s\n' "Seed archive not found at $DATA_ZIP" >&2
  exit 1
fi

ensure_pkg() {
  if command -v apk >/dev/null 2>&1; then
    apk add --no-cache "$1" >/dev/null
    return
  fi

  if command -v apt-get >/dev/null 2>&1; then
    apt-get update >/dev/null
    apt-get install -y "$1" >/dev/null
    rm -rf /var/lib/apt/lists/*
    return
  fi

  if command -v microdnf >/dev/null 2>&1; then
    microdnf install -y "$1" >/dev/null
    return
  fi

  printf '%s\n' "No supported package manager found to install $1" >&2
  exit 1
}

if ! command -v mysql >/dev/null 2>&1 || ! command -v mysqladmin >/dev/null 2>&1; then
  ensure_pkg mysql-client
fi

if ! command -v unzip >/dev/null 2>&1; then
  ensure_pkg unzip
fi

printf '%s\n' "Waiting for MySQL at ${MYSQL_HOST}:${MYSQL_PORT}..."
tries=0
until mysqladmin ping -h"$MYSQL_HOST" -P"$MYSQL_PORT" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" >/dev/null 2>&1; do
  tries=$((tries + 1))
  if [ "$tries" -ge 60 ]; then
    printf '%s\n' "MySQL did not become ready" >&2
    exit 1
  fi
  sleep 2
done

count=$(mysql -N -s -h"$MYSQL_HOST" -P"$MYSQL_PORT" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" <<SQL
SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = '$MYSQL_DB' AND table_name = '$TABLE_CHECK';
SQL
)

if [ "$count" -gt 0 ]; then
  printf '%s\n' "Table $TABLE_CHECK already exists; skipping seed import."
  exit 0
fi

workdir=$(mktemp -d)
trap 'rm -rf "$workdir"' EXIT
unzip -oq "$DATA_ZIP" -d "$workdir"

for file in $(find "$workdir" -type f -name '*.sql' | sort); do
  printf '%s\n' "Importing $(basename "$file")"
  mysql -h"$MYSQL_HOST" -P"$MYSQL_PORT" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DB" < "$file"
done

printf '%s\n' "Seed import completed."
