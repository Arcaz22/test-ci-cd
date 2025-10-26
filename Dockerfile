FROM python:3.11-slim

WORKDIR /app

# 1) install uv
RUN pip install --no-cache-dir uv

# 2) copy proyek
COPY . .

# 3) install deps ke sistem (bukan venv)
RUN uv pip install --system --no-cache-dir fastapi uvicorn

EXPOSE 8000

# 4) jalanin server
CMD ["uv", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
