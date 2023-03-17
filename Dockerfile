# syntax=docker/dockerfile:1

FROM python:3.8

WORKDIR /app

RUN apt-get update && apt-get install -y

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0"]
