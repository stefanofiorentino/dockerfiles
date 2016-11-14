To create the image:

    docker build -t boost:latest .

To create a data volume with your boost application:

    docker run --name boost_local -v $PWD/app:/data/app -it --rm boost:latest

To test if boost has been installed 

    $> cd /data/app && make
