# Use the official Python 3.8 image as the base image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and pre setup file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application's source code to the working directory
COPY . .

# Expose port 5000 for the Flask app
EXPOSE 5000

# Set the entry point for the container
ENTRYPOINT ["python"]

# Set the default command to run the app.py file
CMD ["app.py"]
