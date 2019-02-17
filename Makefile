build:
	docker build -t mkieblesz/bootstrap .

push_version:
	docker push mkieblesz/bootstrap:latest
