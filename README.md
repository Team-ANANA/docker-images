# Project Background
Our project focuses on the pet adoption dataset made available through the [petfinder API](https://www.petfinder.com/developers/v2/docs/), which supports both live data around pets currently available for adoption, and historical data regarding pet adoption outcomes. According to the Petfinder documentation, their adoption data originates from a network of “over ten thousand animal welfare organizations” covering the United States, Canada, and Mexico. 

A tool already exists that uses this API to provide individuals with the ability to view and adopt currently available pets. Our project, however, aims to achieve a different **goal: help our users understand large-scale trends on historic and current pet adoption in the United States and Canada.** 

Specifically, our goal is to provide information around how certain factors, such as geography, time, significant events (such as the COVID-19 pandemic), and pet-related data (such as breed or gender), affect adoption availability and outcomes. 

# Achieving Our Goal
This project will achieve our goal through the use of data visualization. Specifically, two visualization types will be used: 

- pie charts
- geographical heatmaps

Pie charts will be used to display data regarding the distribution of subsets — for example, availability of different breeds of dogs. Geographical heatmaps also the user to easily see trends over geography regions. Our project contains two geographic maps, one for the United States and one for Canada.

# Features Not Delivered
(1) Line Graph Visualization 

On Dec 7th (the day before the presentation), the Line graph visualization is done; however, the filter and api connections are far from complete. In addition, adjusting the line graph to a single line is still time consuming. Due to a lack of time and need to complete other work such as the writeup and presentation we voted on whether to cut this feature. As a group, we made the decision to cut Line Graph Visualization from scope.

(2) Examples/Premade 

Completing this feature would require work from the db, api, and frontend. In addition, not much code can be reused and result in a huge workload. The addition of this feature is not that impactful to achieving our goal. So we brought this up in a group meeting and voted to cut this feature from our scope.


(3) Mexico

After validing the amount of data PetFinderAPI has for each of the countries. We recognize that there was too little data from Mexico. Analysis done on Mexico would be limited and biased on data avaibility. So we voted and cut Maxico from our scope.



# Assignment Writeups
## Assignment 1 Writeup (October 9, 2022)
 
[The writeup for A1 can be found here](https://docs.google.com/document/d/13oWfhbKjyR-rqHgePtYeOm5C5SETE_u0oMiI64eTn2M/edit?usp=sharing)


## Assignment 2 Writeup (November 4, 2022)
 
[The writeup for A2 can be found here](https://docs.google.com/document/d/1vduE1n-evvWOY41xiLUakpZxUQwNTGTxCLf1SO8_XTo/edit?usp=sharing). 

## Assignment 3 Writeup (December 11, 2022)
 
[The writeup for A3 can be found here](https://docs.google.com/document/d/1xPesMctTYMXewh6EW6kKY2oC2OsfQhfeJFa6TDbqigs/edit?usp=sharing). 


# Team Meeting Notes

[Team meeting notes can be found here](https://docs.google.com/document/d/166w040zMWrSeviLZHL2206l9rXHMqSI9bw6Py3FipdU/edit?usp=sharing). See the [FAQ section in A2](https://docs.google.com/document/d/1vduE1n-evvWOY41xiLUakpZxUQwNTGTxCLf1SO8_XTo/edit#heading=h.4ie6hly3mav8) for an explanation as to why we are still using Google Docs for our meeting notes.

# Installation Prerequisites 
 
* Be in a modern linux system 
* Have Internet connection (to install dependencies and load data)
* Have CURL installed (run `sudo apt install curl`)
* Have wget installed (run `sudo apt install wget`)
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

# How to see logs

run `docker exec -it <container_name> bash` to enter containers and view their perspective logs.

For DB Migration container, the log is called `db.log`.

For API container, the log is called `api.log`.


# Source Code

[The source code for the app is available at this repostiory](https://github.com/Team-ANANA/pet-stats)

# Database schema

[The database schema is available here](https://dbdiagram.io/d/6355b9bb4709410195c43573)
