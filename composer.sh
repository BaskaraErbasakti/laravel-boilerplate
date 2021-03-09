#!/bin/sh
set -e

echo 'running prestart apache script'

echo 'running composer install'
composer install

echo 'Artisan Commands'
php artisan key:generate
php artisan migrate
php artisan db:seed

