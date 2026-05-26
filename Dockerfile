FROM python:3.10-slim

WORKDIR /app

# System dependencies (important for numpy/scipy/tensorflow)
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip tooling (CRITICAL for TensorFlow)
RUN pip install --upgrade pip setuptools wheel

# Copy requirements first (better Docker caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Fix Python import path
ENV PYTHONPATH=/app

# Render port compatibility (safe even for Flask)
EXPOSE 10000

# Start app
CMD ["python", "app.py"]