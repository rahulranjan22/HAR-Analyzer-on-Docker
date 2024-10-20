# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file if you have one
# In this case, we will install dependencies directly
# COPY requirements.txt .

# Install Flask and haralyzer
RUN pip install Flask haralyzer

# Copy the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 5020

# Define the command to run the application
CMD ["python", "har_analyzer.py"]
