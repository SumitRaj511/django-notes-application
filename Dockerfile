FROM python:3.12-slim

WORKDIR /app/backend

# Add non-root user for security
RUN useradd -m -r app

COPY requirements.txt /app/backend/

RUN apt-get update \
    && apt-get install -y --no-install-recommends gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Install python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code and set ownership
COPY --chown=app:app . /app/backend/

# Switch to non-root user
USER app

EXPOSE 8000
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
