.PHONY: lint
lint:
	docker run --rm -v "$(shell pwd):/mnt" koalaman/shellcheck:stable kind-wrapper
