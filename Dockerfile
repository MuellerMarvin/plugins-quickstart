# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5002 available to the world outside this container
EXPOSE 5002

# Define environment variable
ENV QUART_APP=main.py
ENV QUART_RUN_HOST=0.0.0.0
ENV QUART_RUN_PORT=5002

# Run main.py when the container launches
CMD ["quart", "run"]
