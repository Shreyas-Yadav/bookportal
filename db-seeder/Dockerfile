FROM --platform=linux/amd64 mysql:8.0

# Install unzip for extracting the bundled archive
RUN microdnf update -y \
    && microdnf install -y unzip \
    && microdnf clean all

WORKDIR /seed

COPY dbData.zip ./dbData.zip
COPY scripts/seed-db.sh /usr/local/bin/seed-db.sh

RUN chmod +x /usr/local/bin/seed-db.sh

ENTRYPOINT ["/usr/local/bin/seed-db.sh"]
