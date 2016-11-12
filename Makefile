
.PHONY: boost

all: boost

boost:
	cd boost && docker build -t boost:local .

cmake:
	cd cmake && docker build -t cmake:local .
