FROM python:3.7

RUN mkdir /app
WORKDIR /app
ADD . /app/
ENV PYTHONUNBUFFERED=1
RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "/app/hello.py"]