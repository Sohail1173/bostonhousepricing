FROM python:3.9
COPY ./app
workDIR /app
RUN pip install -r requirements.txt
CMD gunicorn --workers=4 --bind 0.0.0.0:8080 app:app
