DOCKER_IMAGE=monit
VERSIONS=1-debian

include Makefile.docker

.PHONY: check-version
check-version:
	docker run --rm --entrypoint dpkg $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) -l| grep $(DOCKER_IMAGE)|awk '{print $$3}'
