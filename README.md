# docker-laravel
Build laravel development environment with docker-compose.

## Environment
- nginx latest
- PHP 8.0
- MySQL 8.0.26
- Redis 6.0
- docker-compose 3.9

## Usage
### Create Laravel Project
```
$ git clone git@github.com:yashiki25/docker-laravel.git
$ make name=laravel-project
```

#### Option
- Laravel Version
```
$ make v=^8.0
```

- Application Name
```
$ make name=laravel-project
```

### Initialization
```
$ cd ${project-name}
```

edit `.env.example`
```
vi .env.example

>>>
- APP_NAME=Laravel
+ APP_NAME=YOUR_PROJECT_NAME
- COMPOSE_PROJECT_NAME=Laravel
+ COMPOSE_PROJECT_NAME=YOUR_PROJECT_NAME
- DB_DATABASE=laravel
+ DB_DATABASE=YOUR_DATABASE
- DB_USERNAME=root
+ DB_USERNAME=YOUR_USERNAME
- DB_PASSWORD=
+ DB_PASSWORD=YOUR_PASSWORD
<<<
```

```
$ make init
```
