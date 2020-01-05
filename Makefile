CONFIG = project.yaml
PORT   ?= /dev/ttyUSB0

default: upload

all: env deps compile

env:
	virtualenv -p python3 env

deps:
	./env/bin/pip install -r requirements.pip

$(CONFIG):
	./env/bin/esphome $(CONFIG) wizard

compile:
	./env/bin/esphome $(CONFIG) compile

upload: compile
	./env/bin/esphome $(CONFIG) upload

upload-phy: compile
	./env/bin/esphome $(CONFIG) upload --upload-port=$(PORT)

run:
	./env/bin/esphome $(CONFIG) run

dash:
	./env/bin/esphome . dashboard