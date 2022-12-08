run:
	docker network create network-project  --driver bridge
	docker-compose --env-file setup.env -f setup/docker-compose-services.yml -f setup/docker-compose-dependencies.yml up -d

down :
	docker network rm network-project
	docker-compose --env-file setup.env  -f setup/docker-compose-services.yml -f setup/docker-compose-dependencies.yml down -v --remove-orphans