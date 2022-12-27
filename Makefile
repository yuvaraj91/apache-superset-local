
.PHONY: default build clean-venv init-venv

.PHONY: activate
activate:
ifneq (,$(wildcard $(VENV)))
	. $(VENV)/bin/activate
else
	@echo "Run $(BOLD)make init-venv $(RESET) to initialize a venv"
endif

.PHONY: build
build:
	@docker-compose build

.PHONY: clean-venv
clean-venv:
	@rm -rf venv

.PHONY: init-venv
init-venv: clean-venv
	pip3 install virtualenv; \
	virtualenv venv --python=python3.10; \
	. ./venv/bin/activate; \
	pip3 install -r requirements.txt;
