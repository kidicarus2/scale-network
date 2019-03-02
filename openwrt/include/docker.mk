# Docker parameters
DOCKERCMD = docker
# TODO: dockerhub for scale eventually
DOCKERREPO = sarcasticadmin
IMAGENAME ?= openwrt-build
DOCKERBUILD = $(DOCKERCMD) build

VERSION := $(shell git rev-parse --short HEAD)

docker-build:
	$(DOCKERBUILD) -t "$(DOCKERREPO)/$(IMAGENAME):$(VERSION)" .

docker-push: build
	$(DOCKERCMD) push "$(DOCKERREPO)/$(IMAGENAME):$(VERSION)"
