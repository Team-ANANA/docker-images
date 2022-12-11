#!/bin/bash

if [[ $(which docker) ]]; then
  # pull docker images
  docker pull team0anana/csc302:db_import
  docker pull team0anana/csc302:backend
  docker pull team0anana/csc302:frontend
  docker pull mysql/mysql-server:latest
  # run docker images
  docker run -d -p 3306:3306 --name team0anana-database -e MYSQL_ROOT_PASSWORD=my-secret-pw -e MYSQL_DATABASE=pet-stats mysql:latest
  docker run -d -p 5000:5000 --name team0anana-backend team0anana/csc302:backend
  docker run -d -p 3000:3000 --name team0anana-frontend team0anana/csc302:frontend

  # wait for mysql endpoint
  echo "Waiting for mysql server to spin up"
  until $(curl --output /dev/null --silent --head --fail http://localhost:3306)
  done
    BAR='.....'
    for i in 1 2 3 4 5
    do
        echo -ne "\r${BAR:0:$i}"
        sleep .5
    done
  done
  echo -e "\rDatabase running at http://localhost:3306/"

  # wait for flask endpoint
  echo "Waiting for Flask api to spin up"
  until $(curl --output /dev/null --silent --head --fail http://localhost:5000)
  do
    BAR='.....'
    for i in 1 2 3 4 5
    do
        echo -ne "\r${BAR:0:$i}"
        sleep .5
    done
    echo -ne "\r     "
  done
  echo -ne "\rFlask backend running at http://localhost:5000/\n"

  # wait for react endpoint
  echo "Waiting for React app to spin up"
  until $(curl --output /dev/null --silent --head --fail http://localhost:3000)
  do
    BAR='.....'
    for i in 1 2 3 4 5
    do
        echo -ne "\r${BAR:0:$i}"
        sleep .5
    done
    echo -ne "\r     "
  done
  echo -ne "\rReact template running at http://localhost:3000/\n"

  echo "All containers are up and running!"
  echo "Importing data from Petfinder"
  sleep 2
  docker run --name team0anana-db_import team0anana/csc302:db_import
else
  echo "You need to install docker.\nGet docker at https://docs.docker.com/get-docker/"
fi
