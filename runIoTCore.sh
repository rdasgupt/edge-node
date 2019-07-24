#!/bin/sh

ORG=$1
TYPEID=$2
GWID=$3
TOKEN=$3
export ORG
export TYPEID
export GWID
export TOKEN

# Check and install docker
docker -v > /dev/null 2>&1
if [ $? -ne 0 ]
then
    echo "Install docker"
    apt-get update
    apt-get install -y -qq wget jq mosquitto-clients apt-transport-https ca-certificates curl net-tools lsb-release

    if [ "${CODENAME}" == "buster" ] ; then

        # Workaround for installing dockerr on buster
        apt-get install sudo
        sudo apt-get -y -qq install gnupg2 software-properties-common
        curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
        sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian buster stable"
        sudo apt-get update -qq

    else

        curl -fsSL get.docker.com | sh
        apt-get update -qq

    fi
fi

# Install docker-compose
docker-compose --version > /dev/null 2>&1
if [ $? -ne 0 ]
then
    echo "Install docker compose"
    curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
fi

# Get IoT Core docker-compose file and run compose
mkdir -p /tmp/edge
cd /tmp/edge
curl -fsSL https://github.com/rdasgupt/edge-node/blob/master/docker-compose.yml -o docker-compose.yml
docker ps -a | grep edge-mqttbroker > /dev/null 2>&1
if [ $? -eq 1 ]; then
    WIOTP_IDENTITY_ORGID=${ORG} WIOTP_IDENTITY_TYPEID=${TYPEID} WIOTP_IDENTITY_DEVICEID=${GWID} WIOTP_AUTH_TOKEN=${TOKEN} sudo docker-compose -f /tmp/edge/docker-compose.yml up -d
fi


