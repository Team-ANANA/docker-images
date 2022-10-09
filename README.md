# Guid on starting the servers

The command below will start three containers. The first one is hosting the backend server that runs Flask application. The second one is hosting a React server and the last one is hosting MySQL server.    

`sudo ./startuo.sh` 

Notice that the above command expects the user to have Docker installed locally. The script will not proceed to starting the containers and will prompt the user to install Docker. Once you have Docker installed, you will need to run the above command again. 

Once the container is up and running and the appliccations have started on containers, you can reach following endpoints:
* localhost:5000: This enpoint reaches the Flask application. At this point, only "/hello" route is available which returns "".
* localhost:3000: This enpoint reaches the React applicatoin. At this point, if you try accessing the endpoint on your browser, you will receive the template React application.
* localhost:4000: This endpoints reaches the MySQL database. At this point, database does not have anything in it.


Notice that you are required to have ports 5000, 4000 and 3000 not occupied to be able to start all three containers. 
