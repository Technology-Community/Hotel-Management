artisan-storage-link:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm artisan storage:link
artisan-migrate:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm artisan migrate
artisan-migrate-fresh:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm artisan migrate:fresh
artisan-migrate-fresh-seeder:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm artisan migrate:fresh --seed
artisan-db-seeder:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm artisan db:seed
artisan-optimize-clear:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm artisan optimize:clear
artisan-route-list:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm artisan route:list
artisan-tinker:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm artisan tinker
artisan-config-cache:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm artisan config:cache
artisan-route-cache:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm artisan route:cache
artisan-view-cache:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm artisan view:cache
artisan-key-generate:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} run --rm artisan key:generate
