# https://adoptium.net/installation/containers
FROM eclipse-temurin:25-jre-alpine

# Destination to copy all assets to during the build process.
ARG _WORKDIR=/app

# Set working directory to WORKDIR Argument
WORKDIR ${_WORKDIR}

# Copy all non-ignored files to image
COPY . ${_WORKDIR}

# Default port for the app to start with
ENV APPLICATION_PORT=25565

EXPOSE ${APPLICATION_PORT}

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
