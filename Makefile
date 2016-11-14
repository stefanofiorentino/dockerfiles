
.PHONY: boost cmake mongo

BUILD_DIR=${PWD}

all: boost cmake mongo

boost:
	cd ${BUILD_DIR}/boost && docker build -t boost:latest .

cmake:
	cd ${BUILD_DIR}/cmake && docker build -t cmake:latest .

mongo:
	cd ${BUILD_DIR}/mongo && docker build -t mongo:mp .
