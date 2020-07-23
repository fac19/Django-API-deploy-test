FROM python:3.7
MAINTAINER ivatko

# copy files from . in our operating system to /usr/src/app in the Docker container
ADD . /usr/src/app
# Location to execute commands from in the container
WORKDIR /usr/src/app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD exec gunicorn tutorial.wsgi:application --bind 0.0.0.0:8000 --workers 3