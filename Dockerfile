
FROM python:3.11-slim

WORKDIR /app

ENV APP_ENV=development

# Update operating system packages
RUN apt-get update && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

# Copy requirements
COPY requirements.txt .

# Upgrade Python packaging tools
RUN python -m pip install --no-cache-dir --upgrade \
    pip \
    "setuptools>=80.10.2" \
    "wheel>=0.46.2"

# Install application dependencies
RUN python -m pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Run tests
CMD ["pytest"]


# FROM python:3.11-slim

# WORKDIR /app


# ENV  APP_ENV = development

# COPY requirements.txt .

# RUN pip install -r requirements.txt

# COPY . .

# CMD pytest

