FROM python:3
USER root

COPY . /python/

RUN apt-get update
RUN pip3 install pandas
RUN pip3 install numpy