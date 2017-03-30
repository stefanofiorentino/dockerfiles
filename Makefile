
.PHONY: boost cmake mongo

BUILD_DIR=${PWD}

all: boost cmake mongo

boost:
	cd ${BUILD_DIR}/boost && sudo docker build -t boost:latest . && cd ..

cmake:
	cd ${BUILD_DIR}/cmake && sudo docker build -t cmake:latest . && cd ..

mongo:
	cd ${BUILD_DIR}/mongo && sudo docker build -t mongo:mp . && cd ..
