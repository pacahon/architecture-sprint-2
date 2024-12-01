```shell
docker compose up -d

./scripts/mongo-init.sh
# Наполняем данными
./scripts/data-init.sh
# Проверяем кол-во документов
./scripts/count-docs.sh
```