TAG = requestgen-example-docker

run: build
	docker run -it --rm $(TAG)

build:
	docker build -f Dockerfile -t $(TAG) .
