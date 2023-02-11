.PHONY: all build up down clean

all: build

NAME=tensorboard
TAG=1.0-alpine

build:
	docker build \
	-t junekimdev/$(NAME):$(TAG) .

up:
	@docker-compose up -d \
	&& sleep 5 \
	&& docker logs -t --tail 5 $(NAME)

down:
	docker-compose down
