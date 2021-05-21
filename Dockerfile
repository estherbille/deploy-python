FROM python:latest

RUN mkdir /app_python && tar -xzvf flask-pytest-example-master.tar.gz

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py /app_python

WORKDIR /app_python

CMD python app.py
