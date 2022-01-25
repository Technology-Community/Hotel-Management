compose-up: 
	- docker-compose -f ${DOCKER_COMPOSE_FILE} up
compose-up-d:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} up -d
compose-up-build: 
	- docker-compose -f ${DOCKER_COMPOSE_FILE} up --build
compose-up-build-d: 
	- docker-compose -f ${DOCKER_COMPOSE_FILE} up --build -d
compose-down:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} down
compose-down-rmi-local:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} down --rmi local
compose-destroy:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} down --rmi local
compose-start:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} start
compose-stop:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} stop
compose-ps:
	- docker ps
