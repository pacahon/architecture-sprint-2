echo "Всего документов всего: "
docker compose exec -T mongos_router mongosh --port 27020 --quiet << 'EOF'
use somedb;
db.helloDoc.countDocuments(); 
EOF
echo ""

echo "Кол-во документов на шарде 1: "
docker compose exec -T shard1 mongosh --port 27018 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
exit(); 
EOF
echo ""


echo "Кол-во документов на шарде 2: "
docker compose exec -T shard2 mongosh --port 27019 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
exit(); 
EOF