FROM python:3.9.0

WORKDIR /home/

RUN echo 'asdgaweg'

RUN git clone https://github.com/LEECHANGDAEE/webclass_4.git

WORKDIR /home/webclass_4/

RUN echo "SECRET_KEY=django-insecure-g!r0y+$a&zr^_)r#$#qj2w%ve^v&s8qfcp9$y7_wrqd7r#wip3" > .env

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash","-c", "python manage.py collectstatic --noinput --settings=webclass.settings.deploy && python manage.py migrate --settings=webclass.settings.deploy && gunicorn", "--env", "DJANGO_SETTINGS_MODULE=webclass.settings.deploy" ,"webclass.wsgi", "--bind", "0.0.0.0:8000"]









