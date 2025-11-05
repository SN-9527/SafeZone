tee /etc/environment > /dev/null <<'EOF'
http_proxy="http://192.168.31.195:7897"
https_proxy="http://192.168.31.195:7897"
ftp_proxy="http://192.168.31.195:7897"
no_proxy="localhost,127.0.0.1,::1"
EOF

mkdir -p /etc/systemd/system/docker.service.d

tee /etc/systemd/system/docker.service.d/http-proxy.conf > /dev/null <<'EOF'
[Service]
Environment="HTTP_PROXY=http://192.168.31.195:7897" "HTTPS_PROXY=http://192.168.31.195:7897" "NO_PROXY=localhost,127.0.0.1,::1"
EOF
