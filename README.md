# docker-laravel
Build laravel development environment with docker-compose.

## Environment
- nginx latest
- PHP 7.4
- MySQL 5.7
- Redis 5.0
- docker-compose 3.7

## Usage
### Create Laravel Project
```
$ git clone git@github.com:yashiki25/docker-laravel.git
$ make
```

#### Option
- Laravel Version
```
$ make v=7
```

- Application Name
```
$ make v=7 name=laravel-project
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
