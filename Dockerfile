# syntax=docker/dockerfile:1

FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# System deps for building some wheels (e.g., lxml)
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       build-essential \
       libxml2-dev \
       libxslt1-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install Python deps first (better layer caching)
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy source
COPY wnc/ ./wnc/
COPY README.md LICENSE ./

# Use a non-root user
RUN useradd -m appuser
USER appuser

# Default entrypoint runs the CLI module; default command runs the wizard
ENTRYPOINT ["python", "-m", "wnc"]
CMD ["wizard"]
