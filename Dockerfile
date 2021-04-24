FROM nginx

RUN apt update && apt install -y fcgiwrap procps spawn-fcgi lm-sensors

ADD ./server.conf /etc/nginx/conf.d/default.conf
ADD ./start.sh /
RUN chmod +x /start.sh
RUN chmod 755 -R /root
CMD ["/start.sh"]