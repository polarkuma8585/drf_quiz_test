FROM python:3.11.3

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app

WORKDIR ./quiz_backend

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

EXPOSE 8000