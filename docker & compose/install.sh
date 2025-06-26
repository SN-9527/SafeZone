# 安装Docker
curl -fsSL https://get.docker.com | bash -s docker
systemctl start docker && systemctl enable docker

# 安装Docker-Compose
curl -L "https://github.com/docker/compose/releases/download/v2.37.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
