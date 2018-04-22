# Drupal 8 dev stack

## Usage

```
cd drupal-8-dev && chmod 777 files && docker-compose up -d

docker exec -u user -w /var/www/web drupal-8-dev_web drush si standard --db-url=mysql://drupal:drupal@db:3306/drupal
```

Open http://localhost:8080/
