FROM python:alpine
WORKDIR /app
ENV FLASK_APP=app
RUN pip install -U --no-cache-dir Flask
COPY app.py /app
CMD ["flask", "run", "--host=0.0.0.0"]
