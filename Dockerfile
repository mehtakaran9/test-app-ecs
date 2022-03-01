FROM alpine:latest
RUN apk add python3 git py3-pip
COPY . /app
WORKDIR /app
RUN git clone --depth=1 https://github.com/mehtakaran9/simple-python-app.git /tmp
RUN ./mv-file.sh
RUN pip install -r requirements.txt
CMD ["gunicorn", "app:app"]