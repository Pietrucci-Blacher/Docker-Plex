run:
	docker-compose --env-file setup.env -f setup/docker-compose-services.yml -f setup/docker-compose-dependencies.yml up -d

down :
	docker-compose --env-file setup.env  -f setup/docker-compose-services.yml -f setup/docker-compose-dependencies.yml down -v --remove-orphans