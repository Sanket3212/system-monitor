# Base image
FROM ubuntu:22.04

# Install required dependencies
RUN apt-get update && \
    apt-get install -y \
    bash 

# Set working directory
WORKDIR /app

# Copy script into container
COPY monitor.sh .

# Make script executable
RUN chmod +x monitor.sh

# Mount point for log files
VOLUME ["/app/logs"]

# Default entrypoint
ENTRYPOINT ["./monitor.sh"]


