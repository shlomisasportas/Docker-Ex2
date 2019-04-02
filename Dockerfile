FROM alpine:3.9

LABEL maintainer="shlomi.sasportas@gmail.com"

RUN apk update && \
    apk add python3 && \
    apk add py-pip && \
    apk add --upgrade py-pip

RUN pip3 install Click==7.0 Flask==1.0.2 itsdangerous==1.1.0 Jinja2==2.10 MarkupSafe==1.1.1 Werkzeug==0.14.1

ADD app.py /

CMD [ "python3", "./app.py"]
