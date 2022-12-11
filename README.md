# Assignment 1 Writeup (October 9, 2022)
 
[The writeup for A1 can be found here](https://docs.google.com/document/d/13oWfhbKjyR-rqHgePtYeOm5C5SETE_u0oMiI64eTn2M/edit?usp=sharing)


# Assignment 2 Writeup (November 4, 2022)
 
[The writeup for A2 can be found here](https://docs.google.com/document/d/1vduE1n-evvWOY41xiLUakpZxUQwNTGTxCLf1SO8_XTo/edit?usp=sharing). 

# Team Meeting Notes

[Team meeting notes can be found here](https://docs.google.com/document/d/166w040zMWrSeviLZHL2206l9rXHMqSI9bw6Py3FipdU/edit?usp=sharing). See the [FAQ section in A2](https://docs.google.com/document/d/1vduE1n-evvWOY41xiLUakpZxUQwNTGTxCLf1SO8_XTo/edit#heading=h.4ie6hly3mav8) for an explanation as to why we are still using Google Docs for our meeting notes.

# Installation Prerequisites 
 
* Be in a modern linux system 
* Have Internet connection (to install dependencies and load data)
* Have CURL installed
* Have docker installed - [get docker here](https://docs.docker.com/get-docker/)
* No service is running on ports 3000, 3306, and 5000
 
# How to install/run the app locally
 
The command below will start three containers. The first one is hosting the backend server that runs the Flask API. The first one is hosting a React web app, and the last one is hosting the MySQL server.    
 
`sudo ./startup.sh`
 
Notice that the above command expects the user to have Docker installed locally. If this is not the case, the script will not proceed to starting the containers and will prompt the user to install Docker. Once you have Docker installed, you will need to run the above command again.
 
Once the container is up and running and the applications have started on containers, you can reach following endpoints:
* localhost:3000: This endpoint reaches the frontend React application. (access the application here)
* localhost:3306: This endpoint reaches the MySQL database.
* localhost:5000: This endpoint reaches the Flask application.

# Source Code

[The source code for the app is available at this repostiory](https://github.com/Team-ANANA/pet-stats)

# Database schema

[The database schema is available here](https://dbdiagram.io/d/6355b9bb4709410195c43573)
