# Use an official Ubuntu image as the base image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /app

# Update the package index and install required packages
RUN apt-get update && \
    apt-get install -y gcc libc6-dev

# Copy the local C code to the container
COPY hello.c .

# Compile the C program
RUN gcc -o hello hello.c

# Specify the command to run when the container starts
CMD ["./hello"]

