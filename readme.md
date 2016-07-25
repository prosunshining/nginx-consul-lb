# nginx-consul-lb

Nginx load-balacing with docker, consul, and consul template.

## Usage

```
docker run --name nginx -d -p 80:80 -v /etc/nginx nginx:alpine
```

```
$ docker run --name nginx-consul-template \
-e CONSUL_TEMPLATE_LOG=debug \
-e FRONTEND_SERVICE_NAME=web \
-e WS_SERVICE_NAME=socketio \
--volumes-from nginx \
smithclay/nginx-consul-lb
```

