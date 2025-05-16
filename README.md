# Movierizer Docker Documentation 

# Introduction 
This repository contains the Docker Compose configuration for the Movierizer application. It serves as the foundation for the entire project.

# Prerequisites 

Before starting this Docker Compose setup, ensure you have the following installed:

 - Java: Version 21 
 - Maven: At least version 3.8.7
 - Node: At least version 18.19.1
 - npm: At least version 9.2.0
 - docker: At least version 28.1.1

# Installation and launch

Before running the application, you must create a configuration file named :  
```
".private.env"
```
This file should include the following environment variables :

 - `POSTGRES_PASSWORD`=My_database_password

 - `POSTGRES_USER`=My_database_user

 - `BEARER_TOKEN_TDMB`=your_token_for_the_TMDB_API

Also, ensure that all environment variables in the `.env` file are correctly set:


 - `POSTGRES_DB` : the name of your database

 - `DATASOURCE_URL` : the URL to your database 

 - `BACK_SERVER_PORT` : the port where you can find the movierizer API

 - `BACK_ALLOWED_ORIGINS_LOCALHOST` : the URL of your frontend outside the container

 - `BACK_ALLOWED_ORIGINS_FRONT` : the URL of your frontend inside the container

 - `REACT_APP_BASE_URL` : the URL where you can find the front 

 - `API_TMDB_URL_SOURCE` : the default URL of TMDB API 

 - `API_VERSION` : the version of the API docker images you want to use 

 - `FRONT_VERSION` : the version of the front docker images you want to use 

 - `DB_VERSION` : the version of the database docker images you want to use 

 - `REACT_APP_TMDB_BACKDROP_URL` : the URL where you can find backdrop of movie in TMDB API 

 - `REACT_APP_TMDB_POSTER_URL` : the URL where you can find poster of movie in TMDB API 

# How to Launch the Application 
To start the application, simply run: 
```
docker compose up -d
```
You can find all available `docker compose` options in the [official documentation](https://docs.docker.com/reference/cli/docker/compose/run/).

This command will pull all specified Docker images from Docker Hub. It will also create two networks: one for the backend (including the database and the backend service) and one for the frontend (connecting the backend and the frontend service).

To launch this application without docker, you can refer directly to the READMEs of the specific projects:


- [The frontend](https://gitlab.com/movierizer/movierizer-front/-/blob/develop/README%20.md?ref_type=heads)
- [The API](https://gitlab.com/movierizer/movierizer-api/-/blob/develop/README.md?ref_type=heads)
- [The Database](https://gitlab.com/movierizer/movierizer-database/-/blob/develop/README.md?ref_type=heads)
# Accessing the Application 

Once running, you can access the different components of the app at the following addresses :
- The Frontend:  [http://localhost:8080](http://localhost:8080)
- The backend(API): [http://localhost:8081/movies](http://localhost:8081/movies)
- The Database : [http://localhost:8082](http://localhost:8082)

To use this application correctly, you'll need to create an account for the API. You have two methods:

1. Via the Frontend: Use the "Register" and "Login" buttons located at the top right of the home page.


2. With command lines : 

- register :
    ```sh
    curl -v -X POST -H "Content-Type: application/json" -d "@user.json" http://localhost:8080/auth/signup
    ```
- login :
    ```sh
    curl -v -X POST -H "Content-Type: application/json" -d "@user.json" http://localhost:8080/auth/login
    ```

    For more information on this method, please refer [here](https://gitlab.com/movierizer/movierizer-api/-/blob/develop/README.md?ref_type=heads)

# Related Repositories

- [movierizer Api](https://gitlab.com/movierizer/movierizer-api)
- [movierizer Front](https://gitlab.com/movierizer/movierizer-front)
- [movierizer Docker](https://gitlab.com/movierizer/movierizer-docker)
- [movierizer Database](https://gitlab.com/movierizer/movierizer-database)


# Stopping the application :
To stop the application, run :
```
docker compose down
```


