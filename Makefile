include .env
include ./Makefiles/*.mk

up: 
	- make compose-up-d
	- make composer-install
	- make npm-install
	- make artisan-storage-link
	- make db-refresh
down: compose-down-rmi-local
start: compose-start
stop: compose-stop
check: compose-ps
db-refresh: artisan-migrate-fresh-seeder
optimize: artisan-optimize-clear
clean-storage:
	- make npm-clean-storage
	- make artisan-storage-link
artisan-cache:
	- make artisan-config-cache
	- make artisan-route-cache
	- make artisan-view-cache
deploy:
	- make compose-up-d
	- make npm-clean-storage
	- make npm-install
	- make composer-install-production-mode
	- make artisan-storage-link
	- make artisan-key-generate
	- make npm-run-production
	- make artisan-cache
	- make optimize
	- make db-refresh