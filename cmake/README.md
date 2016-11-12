To create the image:

    docker build -t cmake:local .

To create a data volume with your boost application:

    docker run --name cmake_local -v $PWD/app:/data/app -it --rm cmake:local

To test if boost has been installed 

    $> cd /data/app && mkdir -p build && cd build && cmake ../src && make && ./main
