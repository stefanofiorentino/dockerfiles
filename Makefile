
.PHONY: boost cmake mongo ubuntu ubuntu_demonize ubuntu_clean

BUILD_DIR=${PWD}

all: boost cmake mongo

demonize: ubuntu_demonize

clean: ubuntu_clean

boost:
	cd ${BUILD_DIR}/boost && sudo docker build -t boost:latest . && cd ..

cmake:
	cd ${BUILD_DIR}/cmake && sudo docker build -t cmake:latest . && cd ..

mongo:
	cd ${BUILD_DIR}/mongo && sudo docker build -t mongo:mp . && cd ..

ubuntu:
	cd ${BUILD_DIR}/ubuntu && sudo docker build -t ubuntu:dev . && cd ..

ubuntu_demonize:
	sudo docker run -d ubuntu:dev -p 5917:5917

ubuntu_clean:
	sudo docker rmi -f ubuntu:dev