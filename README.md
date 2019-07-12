# edge-node
Create edge node

Prerequisite:
- docker-compose
- curl


Use the following command on edge node to create core containers:

```
$ curl -o docker-compose.yml https://github.com/rdasgupt/edge-node/docker-compose.yml
$ WIOTP_IDENTITY_ORGID=<orgid> WIOTP_IDENTITY_TYPEID=<gwtype> WIOTP_IDENTITY_DEVICEID=<gwid> WIOTP_AUTH_TOKEN=<gwtoken> docker-compose up -d
```



