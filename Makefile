build-arm:
	docker build --platform linux/arm64 -t zerotier-nginx:latest .
build-x86:
	docker build --platform linux/amd64 -t zerotier-nginx:latest .

run:
	docker run \
	-v /var/lib/zerotier-one:/var/lib/zerotier-one \
	--device /dev/net/tun \
	 -it --rm zerotier-nginx

clean:
	docker rmi zerotier-nginx