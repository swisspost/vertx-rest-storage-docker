# The Docker Image for the vertx-rest-storage.

To start the rest-storage with the filesystem as persistence use: `docker-compose up rest-storage-filesystem`  
To start the rest-storage with redis as persistence use: `docker-compose up rest-storage-redis`

The storage serves on port 8989.

## Example 
`curl -X PUT http://localhost:8989/redis -d '{"rest":"storage"}'`  
`curl -X GET http://localhost:8989/redis`  
`curl -X DELETE http://localhost:8989/redis`  
`curl -X GET http://localhost:8989/redis`

For further information visit https://github.com/swisspush/vertx-rest-storage
