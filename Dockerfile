FROM python:3.11.3

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

WORKDIR ./quiz_backend

CMD ["python", "./manage.py", "runserver", "0.0.0.0:8000"]

EXPOSE 8000