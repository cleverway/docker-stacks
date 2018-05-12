# Drupal 8 stack

## Usage

```
chmod 777 files
docker-compose up -d
docker exec -u user -w /var/www/web drupal-8_web drush si standard -y --db-url=mysql://drupal:drupal@db:3306/drupal
```

Drupal 8 available at http://localhost:8080/

## Configuration

Customise variables in .env file.
