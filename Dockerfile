FROM python:3.10-slim

# Set the working directory
WORKDIR /

# Copy files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port
EXPOSE 8080

# Set the default command
CMD ["python", "server.py"]