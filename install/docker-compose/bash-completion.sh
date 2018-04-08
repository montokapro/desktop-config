#!/bin/bash

echo "Downloading Docker Compose Bash Completion ..."
wget -q https://raw.githubusercontent.com/docker/compose/1.20.1/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

