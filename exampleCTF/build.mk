handout.tar.xz: $(HANDOUT)
	tar -cJf handout.tar.xz $^

docker-build: Dockerfile $(DOCKER_DEPS)
	docker build -t $(DOCKER_NAME) .

docker-start: docker-build
	@if [ -e .dockerid ]; then\
	  echo "docker is already running!";\
	else\
      docker run -d --rm $(DOCKER_ARGS) $(DOCKER_NAME) > .dockerid;\
      echo -n "Started docker container for "; basename ${PWD};\
	fi

docker-stop: .dockerid
	docker kill $(shell cat .dockerid)
	rm .dockerid

handout: handout.tar.xz

.PHONY: docker-stop docker-start docker-build
