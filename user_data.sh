#!/bin/bash
set -e
exec > /var/log/user-data.log 2>&1

echo "Starting user data script..."

# Update system
echo "Updating system..."
yum update -y

# Install Docker
echo "Installing Docker..."
yum install -y docker
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user

# Install Docker Compose
echo "Installing Docker Compose..."
mkdir -p /usr/local/lib/docker/cli-plugins
curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 \
  -o /usr/local/lib/docker/cli-plugins/docker-compose
chmod +x /usr/local/lib/docker/cli-plugins/docker-compose

# Install Docker Buildx
echo "Installing Docker Buildx..."
mkdir -p /root/.docker/cli-plugins
curl -Lo /root/.docker/cli-plugins/docker-buildx \
  https://github.com/docker/buildx/releases/download/v0.17.1/buildx-v0.17.1.linux-amd64
chmod +x /root/.docker/cli-plugins/docker-buildx

# Install Git
echo "Installing Git..."
yum install -y git

echo "All done!"