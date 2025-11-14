# Build docker image
build:
	docker build -t myapp:latest -f docker/Dockerfile.node .

# Run docker-compose
up:
	docker-compose -f docker/docker-compose.yml up -d

down:
	docker-compose -f docker/docker-compose.yml down

# Run tests
test:
	npm test

# Lint
lint:
	npm run lint

# Deploy
deploy:
	./scripts/deploy.sh