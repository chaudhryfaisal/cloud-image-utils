NAME := cloud-image-utils

BASE_IMAGE_URL := chaudhryfaisal/$(NAME)
IMAGE_URL := $(BASE_IMAGE_URL):latest

build:
	docker build --pull -t ${IMAGE_URL} .

run: build
	docker run -w /ws -v $(pwd)/:/ws --rm -it ${IMAGE_URL}

push: build
	docker push ${IMAGE_URL}
