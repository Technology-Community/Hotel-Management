# Hotel Manager

## Installation

First, change `.env.example` to `.env` and update it

```
composer install --no-interaction
php artisan key:generate
php artisan migrate
php artisan db:seed
```

Run by `php artisan serve`

Admin:<br />
Login: admin@example.com<br />
Password: testadmin

User:<br />
Login: user@example.com<br />
Password: testuser
