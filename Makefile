VERSION := 4.11.1

build:
	docker build \
		--build-arg VERSION=${VERSION} \
		-t maxmiorim/junit-viewer:${VERSION} \
		.

tag: build
	docker tag maxmiorim/junit-viewer:${VERSION} \
		maxmiorim/junit-viewer:latest

publish: tag
	docker push maxmiorim/junit-viewer:${VERSION}
	docker push maxmiorim/junit-viewer:latest
