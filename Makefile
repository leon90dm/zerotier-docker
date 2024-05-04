build-arm:
	docker build --platform linux/arm64 -t zerotier-nginx:latest .
build-x86:
	docker build --platform linux/amd64 -t zerotier-nginx:latest .

run:
	docker run --device=/dev/net/tun \
  	--cap-add=NET_ADMIN --cap-add=SYS_ADMIN \
  	-v /var/lib/zerotier-one:/var/lib/zerotier-one \
	-p 9994:9993 \
	-p 80:80 \
	-it --rm neoethan888/zerotier-nginx:latest

clean:
	docker rmi zerotier-nginx