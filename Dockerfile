
FROM python:3.10

RUN apt update \
    && apt install -y mc \
    && apt install -y vim

RUN mkdir -p /opt/src
WORKDIR /opt/src

EXPOSE 8080

COPY ./src/ .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]