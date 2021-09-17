#!/usr/bin/env sh

DOCKER_VOLUME="/volume1/docker"
PROMETHEUS_ROOT="${DOCKER_VOLUME}/prometheus"

[ ! -d ${PROMETHEUS_ROOT} ] && mkdir -p ${PROMETHEUS_ROOT} \
&& echo "folder created ${PROMETHEUS_ROOT}"

curl -fsS -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/merc1031/synology-prometheus-node-exporter/master/docker-compose.yml > ${PROMETHEUS_ROOT}/docker-compose.yml
echo "docker-compose file created ${PROMETHEUS_ROOT}/docker-compose.yml"

docker-compose -f ${PROMETHEUS_ROOT}/docker-compose.yml up -d

echo "
#############################################
Node-Exporter http://`hostname`:9100/metrics
#############################################
"
