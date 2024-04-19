FROM python:3.8

EXPOSE 8888
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD exec gunicorn --bind :8888  --workers 1 --threads 8 --timeout 0 main:app