#!/bin/bash
# export DOCKER_BUILDKIT=1
# export COMPOSE_DOCKER_CLI_BUILD=1
sudo rm -rf /var/postgresql /var/mattermost /var/nginx/conf.d

sudo mkdir -p /var/postgresql/{docker,data,data_bk}
sudo mkdir -p /var/mattermost/{docker,config,data,logs,plugins,client/plugins,bleve-indexes}
sudo mkdir -p /var/nginx/{conf.d,log}
sudo cp -r ./mattermost/default/* /var/mattermost
sudo cp -r ./nginx/conf.d/* /var/nginx/conf.d
sudo chown -R 2000:2000 /var/mattermost
sudo chmod -R g+w /var/mattermost
