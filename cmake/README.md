To create the image:

    docker build -t cmake:latest .

To create a data volume with your boost application:

    docker run --name cmake_local -v $PWD/app:/data/app -it --rm cmake:latest

To test if boost has been installed 

    $> cd /data/app && rm -rf build && mkdir -p build && cd build && cmake ../src && make && ./main
