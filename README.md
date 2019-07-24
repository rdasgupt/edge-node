# edge-node

Create edge node

## Dependencies
- git
- curl

## Run IoT Core containerrs

Use one of the following options to run IoT Core containers

### Clone the repository and run scripts

Use git command to clone this github project and execute `runIoTCore.sh` script.
```
$ git clone https://github.com/rdasgupt/edge-node
$ cd edge-node
$ sudo ./runIoTCore.sh <orgid> <typeid> <deviceid> <token>
```

### Use curl command to download scrript and run script

Run the following command to create container.
```
$ curl -fsSL https://raw.githubusercontent.com/rdasgupt/edge-node/master/runIoTCore.sh | bash -s <orgrid> <typeiid> <deviceid> <token>
```



