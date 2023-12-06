.PHONY: clean build run
.DEFAULT_GOAL := build

clean:
	docker image prune -af

clean-all:
	docker system prune -f

run:
	docker run -it -p 9000:9000 levelup-coder-ide:latest

build:
	echo ${GITHUB_TOKEN} | docker login https://ghcr.io -u ${GIT_AUTHOR_EMAIL} --password-stdin && \
	docker build . -t levelup-coder-ide:latest --platform linux/amd64 --progress=plain

test:
	python3 -m unittest discover scripts/tests/ -v