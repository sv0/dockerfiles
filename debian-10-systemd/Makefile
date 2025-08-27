TAG=debian-10-systemd
HUB_DOCKER_COM_USER=slavik0
HUB_DOCKER_COM_TAG=$(HUB_DOCKER_COM_USER)/$(TAG)
GITHUB_REGISTRY_USER=sv0
GITHUB_REGISTRY_TAG=ghcr.io/$(GITHUB_REGISTRY_USER)/$(TAG)

# Get the current date in YYYYMMDD format for tagging.
DATE := $(shell date +%Y%m%d)

.PHONY: all
all: build

.PHONY: build
build:
	docker buildx build \
		--platform linux/amd64,linux/arm64,linux/arm/v7 \
		-t $(HUB_DOCKER_COM_TAG):latest \
		-t $(HUB_DOCKER_COM_TAG):$(DATE) \
		-t $(GITHUB_REGISTRY_TAG):latest \
		-t $(GITHUB_REGISTRY_TAG):$(DATE) \
		--push \
		.

.PHONY: run
run:
	docker run --tty --interactive \
		$(HUB_DOCKER_COM_TAG):latest \
		bash
