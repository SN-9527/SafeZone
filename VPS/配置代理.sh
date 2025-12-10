tee /etc/environment > /dev/null <<'EOF'
http_proxy="http://127.0.0.1:2333"
https_proxy="http://127.0.0.1:2333"
ftp_proxy="http://127.0.0.1:2333"
no_proxy="localhost,127.0.0.1,::1"
EOF

mkdir -p /etc/systemd/system/docker.service.d

tee /etc/systemd/system/docker.service.d/http-proxy.conf > /dev/null <<'EOF'
[Service]
Environment="HTTP_PROXY=http://127.0.0.1:2333" "HTTPS_PROXY=http://127.0.0.1:2333" "NO_PROXY=localhost,127.0.0.1,::1"
EOF
