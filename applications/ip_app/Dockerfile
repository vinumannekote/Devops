FROM python:3.8-alpine
WORKDIR /app
COPY ip_app.py /app
COPY requirements.txt /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENTRYPOINT ["python","web_app.py"]
