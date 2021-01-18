<p><img src="https://steering.com.ua/c/images/others/Logo_ms_ru.svg" width="400" alt=""></p>

<p>
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## Тестовый шаблон Laravel+Mysql+FPM Docker

## Проблематика
В даной сборке время ответа из контейнера чистого проекта больше в 10 раз https://prnt.sc/x4ibq3 от этого же проекта запущенного
на самом дешевом хостинге без использование docker https://prnt.sc/x4iex7.

## Задача
Сконфигурировать так эту сборку, что бы время ответа максимально было приближено к показаниям 
ответа от проекта развернутого на обычном хостинге без использования docker

## Команды для запуска проекта
- устанавливаем нужные библиотеки для проекта
```html 
composer install
```
- запускаем docker
```html 
docker-compose up --build
```
- доступен по http://localhost
- сделать возможным подключения к базе mysql docker контейнера для сторонних программ
```html
docker exec db mysql -u root  -proot -e "ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';"
```
- все команды связаные с миграцией, выполнять через эту конструкцию
```html
docker exec -it app php artisan migrate
```

