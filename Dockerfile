FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir uv

COPY . .

RUN uv pip install --no-cache-dir fastapi uvicorn

EXPOSE 8000

# jalankan server FastAPI via uv
CMD ["uv", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
