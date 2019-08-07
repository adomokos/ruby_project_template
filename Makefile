APP_ENV ?= dev

.DEFAULT_GOAL := help

console: ## Jump into the console and interact wih the services
	APP_ENV=$(APP_ENV) bundle exec ruby tasks/console.rb
.PHONY: console

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
