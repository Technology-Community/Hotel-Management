composer-install:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm composer install
composer-install-production-mode:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm composer install --optimize-autoloader --no-dev
composer-update:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm composer update
composer-dump-autoload:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm composer dump-autoload
