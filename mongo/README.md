To run MongoDB instance

    docker rm -f mongo_local
    docker run --name mongo_local -p 27017:27017 -d mongo:mp

To connect to running MongoDB instance

    docker exec -it $( docker ps | grep mongo_local | awk '{print $1}' ) /bin/bash
