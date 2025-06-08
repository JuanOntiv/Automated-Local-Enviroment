FROM python:3.11

WORKDIR /app

COPY . /app

RUN pip install django psycopg2-binary

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

