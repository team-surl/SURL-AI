# Base image
FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy the main.py file
COPY server/main.py

# Install dependencies
COPY requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the necessary port(s)
EXPOSE 8000

# Run the application
CMD ["python", "main.py"]
