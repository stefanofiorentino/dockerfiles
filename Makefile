
.PHONY: boost

all: boost

boost:
	cd boost && docker build -t boost:local .
