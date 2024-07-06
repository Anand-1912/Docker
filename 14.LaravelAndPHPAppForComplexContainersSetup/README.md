### Notes

1. to build a laravel project using the Composer service.

   `docker-compose run --rm composer create-project --prefer-dist laravel/laravel .`

2. to create and run only specific services available in the config file

   `docker-compose up -d --build server php mysql`

   `docker-compose up -d --build server` - this is sufficient if dependencies are configured properly in the compose file.
