# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt /app/

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY . /app/

# Expose port 8000 for the Django application
EXPOSE 8000

# Define the command to start the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

