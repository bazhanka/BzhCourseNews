FROM python:3.8
LABEL Course Bzh, Fake News
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8180
EXPOSE 8181
VOLUME ./CourseBzhNews
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
