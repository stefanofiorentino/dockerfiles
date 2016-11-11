To create the image:

    docker build -t boost:local .

To create a data volume with your boost application:

    docker run --name boost_local -v $PWD/app:/data/app -it --rm boost:local
