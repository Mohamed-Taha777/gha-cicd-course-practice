#FROM python:3.12-slim

#WORKDIR /app

#COPY app ./app

#EXPOSE 8000

#CMD ["python", "app/app.py"]
ARG BASE_IMAGE
FROM ${BASE_IMAGE}

ARG APP_PORT
ARG IMAGE_NAME
ARG CONTAINER_NAME

ENV APP_PORT=${APP_PORT}
ENV IMAGE_NAME=${IMAGE_NAME}
ENV CONTAINER_NAME=${CONTAINER_NAME}

# COPY source code inside image
WORKDIR /app
COPY . /app

# Install dependencies if any
# RUN pip install -r requirements.txt

EXPOSE ${APP_PORT}

CMD ["python", "app.py"]
