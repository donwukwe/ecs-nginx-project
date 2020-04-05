DOCKER_COMPOSE_COMMAND=sudo docker-compose -f docker-compose-local.yml

up:
	${DOCKER_COMPOSE_COMMAND} up -d

down:
	${DOCKER_COMPOSE_COMMAND} down

nuke:
	${DOCKER_COMPOSE_COMMAND} down -v --rmi all
	${DOCKER_COMPOSE_COMMAND} up -d
