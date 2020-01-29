IMAGE_NAME = quay.io/schseba/dpdk-s2i-base
UPSTREAM = latest
RHEL = ubi8

all: build

.PHONY: build
build:
	docker build -t $(IMAGE_NAME):$(UPSTREAM) .

.PHONY: build-rhel8
build-rhel8:
	docker build -t $(IMAGE_NAME):$(RHEL) -f Dockerfile.rhel8 .

.PHONY: test
test:
	docker build -t $(IMAGE_NAME)-candidate .
	IMAGE_NAME=$(IMAGE_NAME)-candidate test/run
