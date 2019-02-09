PERL_VERSION	= latest

default: build clean

build:
	sed 's/PERL_VERSION/$(PERL_VERSION)/' < Dockerfile > Dockerfile.tmp
	docker build -t colvin/reply:$(PERL_VERSION) -f Dockerfile.tmp .

clean:
	rm Dockerfile.tmp
