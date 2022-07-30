FROM python:3.10-slim

WORKDIR /code
COPY . /code
RUN pip install -r requirements.txt
COPY app.py .

CMD flask run -h 0.0.0.0 -p 80