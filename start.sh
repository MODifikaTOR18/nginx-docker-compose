YLW='\033[0;33m'
GRN='\033[0;32m'
NC='\033[0m'
echo "Preparing to setup Nginx Load Balancer example..."

echo "Check if Docker is installed..."
if [ -x "$(command -v docker)" ]; then
    echo -e "${GRN}Docker is already installed${NC}"
else
    echo -e "${YLW}Docker is not installed on this machine. Installing...${NC}"
    bash docker_install.sh
fi

echo "Start up Nginx containers"
sudo docker compose up -d