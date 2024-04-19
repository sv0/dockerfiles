TAG="slavik0/debian-11-systemd"
.PHONY: build
build:
	docker build -t $(TAG):latest \
				 -t $(TAG):$(shell date +%Y%m%d%H) .

.PHONY: run
run:
	docker run -ti $(TAG):latest bash

.PHONY: push
push: build
	docker push $(TAG):latest
	docker push $(TAG):$(shell date +%Y%m%d%H)

.PHONY: clean
clean:
	docker images | grep $(TAG) | awk '{print $$3}' | xargs docker rmi -f
