FROM python:3.9-slim

WORKDIR /data

COPY requirements.txt /data

COPY . .

RUN apt-get update -y 

RUN apt-get upgrade -y 

RUN apt-get install -y gcc default-libmysqlclient-dev pkg-config

RUN pip install mysqlclient
 
RUN pip install -r requirements.txt

EXPOSE 5000 


CMD ["python", "app.py"]

