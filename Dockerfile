FROM python:3.8
RUN mkdir -p /app_python
COPY flash-pytest-example-master.tar.gz /app_python
WORKDIR /app_python
RUN tar -xvf flash-pytest-example-master.tar.gz
WORKDIR /app_python/flash-pytest-example-master
RUN pip install --no-cache-dir -r requirements.txt
CMD python app.py
