docker-rm-image:
	- docker rmi -f $(shell docker images -q)
docker-rm-container:
	- docker rm $(shell docker ps -aq)
docker-rm-volume:
	- docker volume rm -f $(shell docker volume ls -q)
docker-rm-network:
	- docker network rm $(shell docker network ls -q)
docker-stop:
	- docker stop $(docker ps -aq)
