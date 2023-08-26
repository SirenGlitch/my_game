# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set up environment
RUN apt-get update && apt-get install -y python3.9 python3-pip

# Install dependencies
RUN pip3 install --upgrade pip
RUN pip3 install pyinstaller

# Set the working directory
WORKDIR /app

# Copy your project files into the container
COPY . /app

# Run your compilation command
CMD ["pyinstaller", "--onefile", "--name=Game", "--add-data", "Assets:Assets", "main.py"]
