
docker-compose -f docker-compose.yml down -v
docker-compose -f docker-compose.yml up -d --build
docker-compose exec web python manage.py flush --no-input
docker-compose -f docker-compose.yml exec web python manage.py migrate --noinput