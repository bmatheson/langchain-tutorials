start:
	docker-compose -f docker/dc/docker-compose.yml up notebook

stop:
	docker-compose -f docker/dc/docker-compose.yml down