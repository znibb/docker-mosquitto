# Mosquitto in Docker
- Linux x64
- Deployed with Docker Swarm

## Before starting
1. Clone/download this repo: `git clone https://github.com/znibb/docker-mosquitto`
2. Create config: `docker config create mosquitto_config_v1 path/to/mosquitto.conf`
  - NOTE Example config in files/

## Starting
Deploy: `docker stack deploy -c docker-stack.yml mosquitto
