FROM python:3.13-slim

WORKDIR /app1

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "-m", "uvicorn", "app:app1", "--host", "0.0.0.0", "--port", "8000"]