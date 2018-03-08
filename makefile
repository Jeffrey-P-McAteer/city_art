
container:
	-@sudo systemctl start docker &
	docker build -t city_art .
  
run: container
	docker run --rm -it -p 8080:80 -p 4430:443 -v $$PWD/www/:/usr/share/nginx/html:ro city_art

demo:
	make run
	# Get NGROK up and running

