deploy:
	./deploy.sh

server:
	open http://localhost:1313/ && hugo server -w
