FROM python:3.7

RUN apt update

WORKDIR /usr/src/app

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./src .

ENV FLASK_APP=app.py
ENV DB_DATABASE=desafio1
ENV DB_HOST=pfa-desafio-1-mysql
ENV DB_USER=root
ENV DB_PASSWD=root

EXPOSE 5000

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]