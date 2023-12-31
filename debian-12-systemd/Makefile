TAG=slavik0/debian-12-systemd
.PHONY: all
all: build push

.PHONY: build
build:
	docker build -t $(TAG):latest \
		-t $(TAG):$(shell date +%Y%m%d) .

.PHONY: run
run:
	docker run -ti $(TAG):latest bash

.PHONY: push
push:
	docker push $(TAG):latest
	docker push $(TAG):$(shell date +%Y%m%d)

.PHONY: clean
clean:
	docker images | grep "$(TAG)" | awk '{print $$3}' | xargs docker rmi -f
