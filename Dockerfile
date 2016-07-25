FROM avthart/consul-template
MAINTAINER Clay Smith <smithclay@gmail.com>

COPY nginx.conf.ctmpl /tmp/

CMD ["-consul=127.0.0.1:8500","-wait=5s","-template=/tmp/nginx.conf.ctmpl:/etc/nginx/nginx.conf:/bin/docker kill -s HUP nginx"]

