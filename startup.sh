#!/bin/bash

if [[ $(which docker) ]]; then
  docker pull team0anana/csc302:backend
  docker pull team0anana/csc302:frontend
  docker pull mysql/mysql-server:latest

  docker run -d -p 5000:5000 --name team0anana-backend team0anana/csc302:backend
  docker run -d -p 3000:3000 --name team0anana-frontend team0anana/csc302:frontend
  docker run -d -p 3306:4000 --name team0anana-database mysql/mysql-server:latest

  printf "React template running at http://localhost:3000/\n"
  printf "Flask backend running at http://localhost:5000/\n"
  printf "Database running at http://localhost:4000/\n"
else
  echo "You need to install docker.\nGet docker at https://docs.docker.com/get-docker/"
fi


