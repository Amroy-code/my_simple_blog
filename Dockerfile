# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all project files into the container
COPY . .

# Install Python dependencies
RUN pip install flask

# Expose the port Flask uses
EXPOSE 5000

# Command to run the Flask application
CMD ["python", "app.py"]