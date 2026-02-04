# 安装Docker
curl -fsSL https://get.docker.com | bash -s docker
systemctl start docker && systemctl enable docker

# 安装Docker-Compose
curl -L "https://github.com/docker/compose/releases/download/v2.40.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

#安装xray
bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install -u root

#安装AdguardHome
curl -s -S -L https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -v