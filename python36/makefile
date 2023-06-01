TAG="slavik0/python36"

.PHONNY: build
build:
	docker build -t $(TAG):latest \
				 -t $(TAG):$(shell date +%Y%m%d%H%I) .

.PHONNY: run
run:
	docker run -ti $(TAG):latest bash

.PHONNY: push
push:
	docker push $(TAG):latest
	docker push $(TAG):$(shell date +%Y%m%d%H%I)
