SERVICE:= autqr

help:
	@echo cat Makefile

########### fooks ###########
dir-fook:
	@make --directory $(path) $(target)

########### R ########### 
.PHONY: r-install
r-install:
	R -e "renv::install("$(pkj)")"

.PHONY: r-snap
r-snap:
	R -e "renv::snapshot()"
# @make dir-fook path=$(SRC) target=create-r-snap


########### env ###########
.PHONY: touch
touch:
	docker exec -it autoqr /bin/bash
.PHONY: up
up:
	docker-compose up

.PHONY: up/d
up/d:
	docker-compose up -d
# docker-compose up -d --no-deps --build
# docker run --rm --platform linux/amd64 -it autoqr-autqr
	docker exec -it $(SERVICE) /bin/bash

.PHONY: up/re
up/re:
	docker-compose up -d --build
	docker exec -it $(SERVICE) /bin/bash

.PHONY: stop
stop:
	docker-compose stop

.PHONY: down
down:
	docker-compose down

.PHONY: rm
rm: 
	docker-compose down --rmi all --volumes --remove-orphans

.PHONY: logs
logs:
	docker-compose logs -f

##########@mac docker deamon clash. ##############