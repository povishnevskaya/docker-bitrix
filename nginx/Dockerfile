FROM nginx:1.18

RUN apt-get update -y > /dev/null 2>&1 && apt-get install -y apt-transport-https > /dev/null 2>&1 && apt install python-certbot-nginx -y > /dev/null 2>&1 && apt-get -y install cron > /dev/null

ADD conf/nginx.conf /etc/nginx/
COPY conf/conf.d/ /etc/nginx/conf.d/
COPY letsencrypt/ /etc/letsencrypt/

COPY cron/cronjob /etc/cron.d/cronjob
RUN chmod 0644 /etc/cron.d/cronjob
RUN crontab /etc/cron.d/cronjob
RUN touch /var/log/cron.log
CMD cron

RUN usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80 443
