# Movierizer Docker Documentation 

# Introduction :
You can find on this project a docker compose for the movierizer application. This project is essential for the application because he is the base of all my project. 

# Before the execution :
You have to make sure to declare some environnement variable for example :
```
POSTGRES_PASSWORD=My_database_password
POSTGRES_USER=My_database_user
BEARER_TOKEN_TDMB=your_token_for_the_TMDB_API
```

# Launch the app :
You can easily launch the aplication with this command : 
```
docker compose up -d
```
and you can find all the command option [here](https://docs.docker.com/reference/cli/docker/compose/run/)

# Stop the application :
You can stop the application with this command : 
```
docker compose down
```




