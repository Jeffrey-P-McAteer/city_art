
container:
	-@sudo systemctl start docker &
	docker build -t city_art .
  
run: container
	docker run --rm -it -p 8080:80 -p 4430:443 -v $$PWD/www/:/usr/share/nginx/html:ro city_art

demo:
	echo "pgrep ngrok || ngrok http 8080" | at now
	@# This line just checks for a URL from ngrok every .2 seconds and then prints / opens ff when we get it
	URL=null; while [ "$$URL" == "null" ] || [ "$$URL" == "" ]; do URL=$$(curl --silent http://127.0.0.1:4040/api/tunnels | jq '."tunnels"[0]."public_url"' | tr -d '"' | sed 's/tcp:\/\///g'); sleep 0.2; done; echo; echo "$$URL"; echo; firefox "$$URL"
	make run

