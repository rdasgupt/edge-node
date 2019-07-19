# edge-node
Create edge node

Prerequisite:
- docker-compose
- curl


## Get docker-compose file

Use one of the following steps to download docker-compose.yml file

Use git command to clone this github project or use curl command to download docker-compose.yml file:
```
$ git clone https://github.com/rdasgupt/edge-node
```

OR

Use curl command to get docker-compose file
```
$ curl -o docker-compose.yml https://raw.githubusercontent.com/rdasgupt/edge-node/master/docker-compose.yml
```

## Run containers

Run the following command to create container:
```
$ WIOTP_IDENTITY_ORGID=<orgid> WIOTP_IDENTITY_TYPEID=<gwtype> WIOTP_IDENTITY_DEVICEID=<gwid> WIOTP_AUTH_TOKEN=<gwtoken> docker-compose up -d
```



