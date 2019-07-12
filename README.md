# edge-node
Create edge node

Prerequisite:
- docker-compose
- curl


Use the following steps to download docker-compose.yml file and create create core containers.

Use git command to clone this github project or use curl command to download docker-compose.yml file:
```
$ git clone https://github.com/rdasgupt/edge-node
```

```
$ curl -o docker-compose.yml https://raw.githubusercontent.com/rdasgupt/edge-node/master/docker-compose.yml
```

Run the following command to create container:
```
$ WIOTP_IDENTITY_ORGID=<orgid> WIOTP_IDENTITY_TYPEID=<gwtype> WIOTP_IDENTITY_DEVICEID=<gwid> WIOTP_AUTH_TOKEN=<gwtoken> docker-compose up -d
```



