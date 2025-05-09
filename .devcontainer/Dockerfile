# Base image
FROM mcr.microsoft.com/devcontainers/python:3.11

# Install OS dependencies (if needed)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install pipx + uv + dbt
RUN pip install pipx && \
    pipx install uv && \
    pipx install dbt-core && \
    pipx inject dbt-core dbt-snowflake

# Make sure pipx tools are in PATH
ENV PATH=/root/.local/bin:$PATH
