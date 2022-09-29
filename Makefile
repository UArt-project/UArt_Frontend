local-run:
	flutter run

docker-build:
	docker build --no-cache -t uartweb/frontend .

docker-run:
	echo "Running on port 8888"
	docker run --rm -d -p 8888:80 --net uart_net --name uart-frontend uartweb/frontend

docker-stop:
	docker stop uart-frontend

docker-remove:
	make docker-stop
	docker rm uart-frontend

docker-push:
	make docker-build
	docker push uartweb/frontend:latest

docker-deploy:
	make docker-build
	make docker-run
