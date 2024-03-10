# Використовуємо базовий образ Python
FROM python:3.10

# Встановлюємо залежності
COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt

# Копіюємо код застосунку
COPY . /app


# Встановлюємо команду запуску
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]