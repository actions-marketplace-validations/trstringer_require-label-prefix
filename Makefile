IMAGE_REPO=ghcr.io/trstringer/require-label-prefix

.PHONY: build
build:
	@if [ -z "$$VERSION" ]; then \
		echo "VERSION is required"; \
		exit 1; \
	fi
	docker build -t $(IMAGE_REPO):$$VERSION .

.PHONY: push
push:
	@if [ -z "$$VERSION" ]; then \
		echo "VERSION is required"; \
		exit 1; \
	fi
	docker push $(IMAGE_REPO):$$VERSION