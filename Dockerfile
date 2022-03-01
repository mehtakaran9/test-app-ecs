FROM alpine:latest
RUN apk add python3 git py3-pip
RUN git clone https://github.com/mehtakaran9/simple-python-app.git /tmp
WORKDIR /tmp
RUN mv /tmp/pages /app/templates
RUN rm -r /tmp/*
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["gunicorn"]
CMD ["app:app"]
