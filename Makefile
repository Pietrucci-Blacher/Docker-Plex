run:
	docker-compose -f setup/docker-compose.yml -f setup/docker-compose2.yml up -d

down :
	docker-compose -f setup/docker-compose.yml -f setup/docker-compose2.yml down -v --remove-orphans