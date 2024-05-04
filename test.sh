docker run --name zerotier-one --device=/dev/net/tun \
  --cap-add=NET_ADMIN --cap-add=NET_RAW --cap-add=SYS_ADMIN \
  --env TZ=Asia/Shanghai --env PUID=1000 --env PGID=1000 \
  --env ZEROTIER_ONE_LOCAL_PHYS=eth0 \
  --env ZEROTIER_ONE_USE_IPTABLES_NFT=false \
  --env ZEROTIER_ONE_GATEWAY_MODE=inbound \
  --env ZEROTIER_ONE_NETWORK_IDS=e93000bd947c706b \
  -v /var/lib/zerotier-one:/var/lib/zerotier-one zyclonite/zerotier:router