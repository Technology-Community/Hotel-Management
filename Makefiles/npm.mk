npm-install:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm npm install
npm-install-production:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm npm install --production
npm-run-dev:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm npm run dev
npm-run-watch:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm npm run watch
npm-run-production:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm npm run production
npm-clean-public:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm npm run clean_public
npm-clean-storage:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm npm run clean_storage
npm-clean-node-modules:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm npm run clean_node_modules
npm-clean:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm npm run clean

