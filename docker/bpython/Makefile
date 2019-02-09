PYTHON_VERSION	= latest

default: build clean

build:
	sed 's/PYTHON_VERSION/$(PYTHON_VERSION)/' < Dockerfile > Dockerfile.tmp
	docker build -t colvin/bpython:$(PYTHON_VERSION) -f Dockerfile.tmp .

clean:
	rm Dockerfile.tmp
