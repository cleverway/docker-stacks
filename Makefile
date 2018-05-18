.ONESHELL:
all: drupal7 drupal8 drupal8dev

drupal7:
	cd drupal-7
	chmod 777 sites/default/files sites/default/settings.php
	docker-compose up -d
	sleep 10
	docker exec -u user -w /var/www/web drupal-7_web drush si standard -y --db-url=mysql://drupal:drupal@db:3306/drupal
	docker-compose down

drupal8:
	cd drupal-8
	chmod 777 files settings.php
	docker-compose up -d
	sleep 10
	docker exec -u user -w /var/www/web drupal-8_web drush si standard -y --db-url=mysql://drupal:drupal@db:3306/drupal
	docker-compose down

drupal8dev:
	cd drupal-8-dev
	chmod 777 files settings.php
	docker-compose up -d
	sleep 10
	docker exec -u user -w /var/www/web drupal-8-dev_web drush si standard -y --db-url=mysql://drupal:drupal@db:3306/drupal
	docker-compose down
