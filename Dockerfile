FROM python:3.11

run pip3 install django==3.2

COPY . .

run python3 manage.py migrate

CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
