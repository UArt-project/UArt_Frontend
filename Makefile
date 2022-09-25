local-run:
	flutter run

docker-build:
	docker build -t uart-front .

docker-run:
	echo "Running on port 8888"
	docker run -d -p 8888:80 --name uart-front uart-front

docker-stop:
	docker stop uart-front

docker-remove:
	make docker-stop
	docker rm uart-front

docker-all:
	make docker-build
	make docker-run
