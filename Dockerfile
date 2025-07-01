# Base Image
FROM python:3.11

# Set Workdir
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Expose Port
EXPOSE 5000

# Run the App
CMD ["python", "app.py"]
