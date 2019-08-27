APP_ENV ?= dev

.DEFAULT_GOAL := help

console: ## Jump into the console and interact wih the services
	APP_ENV=$(APP_ENV) bundle exec ruby tasks/console.rb
.PHONY: console

test: ## Run all the tests
	bundle exec rspec spec

help: ## Display this message
	@echo "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\1:\2/' | column -c2 -t -s :)"
.PHONY: help
