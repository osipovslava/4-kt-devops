
# Docker Project: Nginx Web Server and MySQL Database

## Описание
Этот проект демонстрирует создание и использование Docker контейнеров для веб-сервера Nginx и базы данных MySQL. В проекте используются образы Ubuntu и MySQL для настройки окружения и инициализации веб-сайта и базы данных.

## Содержимое репозитория
- `nginx/`: Директория с Dockerfile и файлами сайта для Nginx контейнера.
  - `Dockerfile`: Файл конфигурации Docker для сборки образа с Nginx.
  - `your-site/`: Директория с файлами сайта, которые будут размещены на веб-сервере.
- `mysql/`: Директория с Dockerfile и SQL скриптом для MySQL контейнера.
  - `Dockerfile`: Файл конфигурации Docker для сборки образа с MySQL.
  - `init-db.sql`: SQL скрипт для инициализации базы данных.

## Инструкции по установке и запуску

### 1. Сборка и запуск Nginx контейнера
1. Перейдите в директорию `nginx`:
    ```bash
    cd nginx
    ```
2. Соберите Docker образ:
    ```bash
    docker build -t my-nginx-image .
    ```
3. Запустите контейнер:
    ```bash
    docker run -d -p 80:80 -p 443:443 --name my-nginx-container my-nginx-image
    ```
4. Откройте браузер и перейдите на `http://localhost` для проверки сайта.

### 2. Сборка и запуск MySQL контейнера
1. Перейдите в директорию `mysql`:
    ```bash
    cd ../mysql
    ```
2. Соберите Docker образ:
    ```bash
    docker build -t my-mysql-image .
    ```
3. Запустите контейнер:
    ```bash
    docker run -d -p 3306:3306 --name my-mysql-container -e MYSQL_ROOT_PASSWORD=my-secret-pw my-mysql-image
    ```
4. Подключитесь к базе данных MySQL, чтобы убедиться, что база данных инициализирована правильно:
    ```bash
    docker exec -it my-mysql-container mysql -u root -p
    ```
    Введите пароль `my-secret-pw`.

## Проверка запущенных контейнеров
Для проверки статуса запущенных контейнеров выполните команду:
```bash
docker ps
```
