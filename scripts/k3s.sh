
MASTER_IP="192.168.0.17"
TOKEN="K10ab71a60438a0103de175b502ed7cec5fbfe9e7d01bc6db40fb9702aabd73b9e2::server:96508abeec4c3b406f78664b89883eea"

curl -sfL https:get.k3s.io | sh -s - agent \
  --server https://${MASTER_IP}:6443 --token ${TOKEN}