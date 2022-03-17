# Deploy the Prometheus Node Exporter on a Synology Node, with Docker.

## Dependencies
- [Synology Docker](https://www.synology.com/en-global/dsm/packages/Docker) package already installed.
- SSH access to synology.
- Administrator user access.


## Install
```bash
sudo -i
curl -fsSL https://raw.githubusercontent.com/sohnemann/synology-prometheus-node-exporter/master/setup.sh --output synology-prometheus-setup.sh
bash ./synology-prometheus-setup.sh
```

## Endpoints 
- Node-Exporter `http://<synology ip/hostname>:9100/metrics`
