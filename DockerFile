# Base Python image
FROM python:3.11-slim

# Environment variables to reduce noise and improve performance
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

# Set working directory
WORKDIR /app

# Copy only the requirements file to install dependencies
COPY requirements.txt .

# Upgrade pip and install Python packages
RUN pip install --upgrade pip \
    && pip install -r requirements.txt
