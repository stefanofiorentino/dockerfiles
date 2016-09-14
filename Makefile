
TAG=yakkety

.PHONY: boost quantlib quantlib-python quantlib-notebook testbox devbox

quantlib-notebook: quantlib-python
	cd quantlib-notebook && docker build -t lballabio/quantlib-notebook:$(TAG) .

quantlib-python: quantlib
	cd quantlib-python && docker build -t lballabio/quantlib-python:$(TAG) .

quantlib:
	cd quantlib && docker build -t lballabio/quantlib:$(TAG) .

boost:
	cd boost && docker build -t lballabio/boost:$(TAG) .

testbox:
	cd testbox && docker build -t testbox:$(TAG) .

devbox:
	cd devbox && docker build -t devbox:$(TAG) .

