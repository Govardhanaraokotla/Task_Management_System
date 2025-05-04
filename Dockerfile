FROM python:3.12-slim-bookworm

# Make /app as a working directory in the container
WORKDIR /app

# Copy requirements from host, to docker container in /app
COPY ./requirements.txt /app/

# Install the dependencies
RUN pip3 install -r requirements.txt

# Copy everything from ./src directory to /app in the container
COPY . /app/

ADD docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod a+x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

# Expose the port 80 in which our application runs
EXPOSE 80

# Run the application in the port 80
CMD ["uvicorn", "master_server.asgi:application", "--host", "0.0.0.0", "--port", "80", "--workers", "3", "--log-config", "log_config.json","--timeout-keep-alive","300", "--lifespan", "off"]

# Dockerfile
FROM python:3.10
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
