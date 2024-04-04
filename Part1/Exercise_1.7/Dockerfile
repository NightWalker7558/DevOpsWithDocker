# Start from the ubuntu image
FROM ubuntu:22.04

# Use /usr/src/app as our workdir
WORKDIR /usr/src/app

# Copy the script.sh file from this location to /usr/src/app/ creating /usr/src/app/script.sh.
COPY script.sh .

# Install curl 
RUN apt-get update && apt-get install curl -y

# Authorize to run script
RUN chmod +x script.sh

# When running Docker run the command will be ./script.sh
CMD ./script.sh