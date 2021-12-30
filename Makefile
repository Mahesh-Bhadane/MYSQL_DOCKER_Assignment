build:
	docker build -t simple-mysql-test .
	
run: 
	docker run -itd --name simple-mysql-example -p 3306:3306 simple-mysql-test

exec:
	docker exec -it simple-mysql-example /bin/bash	

clean:
	docker stop simple-mysql-example; docker rm simple-mysql-example; docker rmi simple-mysql-test

.PHONY: build run clean exec
