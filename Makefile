run:
	docker network create network-project  --driver bridge
	docker-compose --env-file setup.env -f setup/docker-compose-services.yml -f setup/docker-compose-dependencies.yml up -d

ifeq ($(clear),true)
  down:
	docker-compose --env-file setup.env -f setup/docker-compose-services.yml -f setup/docker-compose-dependencies.yml down -v --remove-orphans
	docker network rm network-project
else
  down:
	docker-compose --env-file setup.env -f setup/docker-compose-services.yml -f setup/docker-compose-dependencies.yml down
endif
