build-image:
	docker build -f Dockerfile.dev -t didiyudha/frontend .

rm-container:
	docker rm -f frontend

run-container:
	docker container run --name frontend -p 3000:3000 -v /app/node_modules -v $(shell pwd):/app didiyudha/frontend:latest
