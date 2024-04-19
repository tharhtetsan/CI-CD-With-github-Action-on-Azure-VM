FROM python:3.8

EXPOSE ${PORT}
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD exec gunicorn --bind :${PORT}  --workers 1 --threads 8 --timeout 0 main:app