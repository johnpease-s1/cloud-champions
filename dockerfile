# Use Ubuntu as the base image
FROM ubuntu:latest

# Set environment variables to prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install Python3 + bash utilities
RUN apt-get update && \
    apt-get install -y <application_1> bash && \
    apt-get install -y <application_2> bash && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy the script into the container
COPY attack.sh /usr/local/bin/<your_script.sh>

# Make sure the script is executable
RUN chmod +x /usr/local/bin/<your_script.sh>

# Set the working directory
WORKDIR /usr/local/bin

# Set the default command to run the script
CMD ["bash", "-c", "<your_script.sh>"]
