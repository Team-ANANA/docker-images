#!/bin/bash

if [[ $(which docker) ]]; then
  docker pull team0anana/csc302:frontend
  docker pull team0anana/csc302:backend

  docker run -d --name team0anana-backend team0anana/csc302:backend
  docker run -d --name team0anana-frontend team0anana/csc302:frontend
else
  echo "You need to install docker"
fi
