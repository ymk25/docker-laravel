ifdef v
	VERSION=${v}
endif

ifdef name
	WORKDIR=${name}
else
	WORKDIR=src
endif

create:
	docker build -t app/create-project ./infrastructure/.docker/php
	docker run --rm -v ${PWD}:/app app/create-project composer create-project --prefer-dist laravel/laravel=${VERSION} ${WORKDIR}
	cp ./infrastructure/docker-compose.yml ${WORKDIR}
	cp -r ./infrastructure/.docker ${WORKDIR}
	cp ./infrastructure/Makefile ${WORKDIR}
	cat ./infrastructure/environments/.env.example >> ${WORKDIR}/.env.example
	sed -i '' \
    		-e 's/DB_HOST=127.0.0.1/DB_HOST=mysql/g' \
    		-e 's/REDIS_HOST=127.0.0.1/REDIS_HOST=redis/g' \
    		${WORKDIR}/.env.example
#For Linux
#	sed -i \
#		-e 's/DB_HOST=127.0.0.1/DB_HOST=mysql/g' \
#		-e 's/REDIS_HOST=127.0.0.1/REDIS_HOST=redis/g' \
#		${WORKDIR}/.env.example
	@echo Project Created !!