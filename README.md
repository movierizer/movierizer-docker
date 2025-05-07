# Movierizer Docker Documentation 

# Introduction 
This repository contains the Docker Compose configuration for the Movierizer application. It serves as the foundation for the entire project.

# Prerequisites 
Before running the application, you must create a configuration file named :  
```
".private.env"
```
This file should include the following environment variables :
```
POSTGRES_PASSWORD=My_database_password
POSTGRES_USER=My_database_user
BEARER_TOKEN_TDMB=your_token_for_the_TMDB_API
```

# How to Launch the Application 
To start the application, simply run: 
```
docker compose up -d
```
You can find all available `docker compose` options in the [official documentation](https://docs.docker.com/reference/cli/docker/compose/run/).

# Accessing the Application 

Once running, you can access the different components of the app at the following addresses :
- Frontend : [http://localhost:8080](http://localhost:8080)
- Backend(API) : [http://localhost:8081/movies](http://localhost:8081/movies)
- Database : [http://localhost:8082](http://localhost:8082)

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




