# Use $(CURDIR) for CI/CD and WSL2 compatibility
DOCKER_CMD = docker run --rm -it -p 8000:8000 -v $(CURDIR):/docs squidfunk/mkdocs-material

.PHONY: serve build new clean

serve:
	# Starts a live-reloading local server
	$(DOCKER_CMD) serve -a 0.0.0.0:8000

build:
	# Compiles the static HTML site
	$(DOCKER_CMD) build

clean:
	rm -rf site/
