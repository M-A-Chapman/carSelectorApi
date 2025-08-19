# carSelectorApi
An API that returns information about cars

# Setup
- Setup a local database
```CREATE DATABASE cars```
- Give a user access to the database
```GRANT ALL PRIVILEGES ON cars.* TO '<user>'@'localhost';```
- Give file permissions for the user to run .sql files that import the corresponding CSV to the database table
```GRANT FILE ON *.* TO '<user>'@'localhost';```
- Allow local files to be used to write to the database
```SET GLOBAL local_infile=1```

- Run the SQL files via `make setup_db`

# Installation
To install the program:
``` npm i ```

# Running
To run the program:
``` npm run start ```
The api endpoints can then be accessed [here](http://localhost:3005).

## Endpoints
Health check
```/```
- Success
    returns http code 200
- Failure
    returns http code 500

Get All Makes
```/makes```
- Success
    returns http code 200 & all makes of cars
    ```
    {
        makes:[
            {
		    "id" : integer,
		    "MakeId" : integer,
		    "MakeName" : string,
		    "MakeCreated" : string,
		    "MakeModified" : string            
            },
            {   
            ...
        ]
    }
    ```
- Failure
    returns 500 & Error response

```/makes/:makeName```
- Success
    returns 200 & specified make of car
    e.g. `curl localhost:3005/makes/audi`
    ```
    [
        {
            "id":4,
            "MakeId":2,
            "MakeName":"Audi",
            "MakeCreated":"8/30/22, 10:19 PM",
            "MakeModified":"8/30/22, 10:19 PM"
        }
    ]
    ```
- Failure
    returns 500 & Error response

```/models/```
- Success
    returns 200 & all models of cars
    ```
    {
        "models": [
            {
                "id" : integer,
                "MakeId" : integer,
                "ModelId" : integer,
                "ModelYear" : integer,
                "MakeName" : string,
                "ModelName" : string,
                "ModelCreated" : string,
                "ModelModified" : string"
            },
            {
                ...
        ]
    }
    ```
- Failure
    returns 500 & Error response

```/models/:makeName```
- Success
    returns 200 & models of the specified make
    e.g. ```curl localhost:3005/models/bugatti```
    ```
    [
        {
            "id":103,
            "MakeId":56,
            "ModelId":7271,
            "ModelYear":2020,
            "MakeName":"Bugatti",
            "ModelName":"Chiron",
            "ModelCreated":"12/27/24, 2:52 PM",
            "ModelModified":"12/27/24, 3:20 PM"
        },
        {
            "id":104,
            "MakeId":56,
            "ModelId":7402,
            "ModelYear":2020,
            "MakeName":"Bugatti",
            "ModelName":"Divo",
            "ModelCreated":"12/27/24, 2:54 PM",
            "ModelModified":"12/27/24, 3:20 PM"
        },
        {
            ...
    ]
    ```
- Failure
    returns 500 & Error response

```/submodels/```
- Success
    returns 200 & all submodels of cars
    ```
    {
    "submodels": [
        {
            "id" : integer,
            "MakeId" : integer,
            "ModelId" : integer,
            "SubmodelId" : integer,
            "ModelYear" : integer,
            "MakeName" : string,
            "ModelName" : string,
            "SubmodelName" : string,
            "SubmodelCreated" : string,
            "SubmodelModified" : string
        },
        {
            ...
    ]
    }
    ```
- Failure
    returns 500 & Error response

```/submodels/:modelName```
- Success
    returns 200 & submodels of the specified car model
    e.g. ```curl localhost:3005/submodels/a3```
    ```
    [
        {
            "id":29,
            "MakeId":2,
            "ModelId":6478,
            "SubmodelId":72390,
            "ModelYear":2020,
            "MakeName":"Audi",
            "ModelName":"A3",
            "SubmodelName":"Premium Plus",
            "SubmodelCreated":"12/27/24, 2:54 PM",
            "SubmodelModified":"12/27/24, 2:54 PM"
            },
        {
        ...
    ]
    ```
- Failure
    returns 500 & Error response
