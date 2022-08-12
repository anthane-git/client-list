.PHONY: update update-all all

update:
	git pull origin main
	git submodule update --init

update-all: update
	git submodule foreach git pull origin main

all: update-all
