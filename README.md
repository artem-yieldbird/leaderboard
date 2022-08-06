# Leaderboard

Запуск:
1. docker-compose build
2. docker-compose up

Если не создалась база, выполнить: docker exec leaderboard bundle exec rails db:setup

localhost:3000 - таблица лидеров с фильтрами (active admin)
localhost:3000/leaders - JSON эндопинт с лидерами. Можно передать параметр  ?country= для получения лидеров страны
