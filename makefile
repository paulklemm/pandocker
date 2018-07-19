all:
	docker login
	docker build --no-cache -t pandocker .
	docker tag pandocker paulklemm/pandocker:latest
	docker push paulklemm/pandocker:latest