# Assignment 1 Writeup (October 9, 2022)
 
[The writeup for A1 can be found here](https://docs.google.com/document/d/13oWfhbKjyR-rqHgePtYeOm5C5SETE_u0oMiI64eTn2M/edit?usp=sharing)


# Assignment 2 Writeup (November 4, 2022)
 
[The writeup for A2 can be found here](https://docs.google.com/document/d/1vduE1n-evvWOY41xiLUakpZxUQwNTGTxCLf1SO8_XTo/edit?usp=sharing)

# Team Meeting Notes

[Team meeting notes can be found here](https://docs.google.com/document/d/166w040zMWrSeviLZHL2206l9rXHMqSI9bw6Py3FipdU/edit?usp=sharing)

# Installation Prerequisites 
 
* Be in a modern linux system 
* Have docker installed - [get docker here](https://docs.docker.com/get-docker/)
* No service is running on ports 3000, 4000, and 5000
 
# How to install/run the app locally
 
The command below will start three containers. The first one is hosting the backend server that runs the Flask API. The first one is hosting a React web app, and the last one is hosting the MySQL server.    
 
`sudo ./startup.sh`
 
Notice that the above command expects the user to have Docker installed locally. If this is not the case, the script will not proceed to starting the containers and will prompt the user to install Docker. Once you have Docker installed, you will need to run the above command again.
 
Once the container is up and running and the applications have started on containers, you can reach following endpoints:
* localhost:3000: This endpoint reaches the boilerplate React application. 
* localhost:4000: This endpoint reaches the MySQL database. At this point, the database does not have anything in it.
* localhost:5000: This endpoint reaches the Flask application. There are currently two routes that exists, being the default route ("/") and a dummy route ("/hello").

# Source Code

[The source code for the app is available at this repostiory](https://github.com/Team-ANANA/pet-stats)
