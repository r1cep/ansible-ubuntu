SHELL = bash
.DEFAULT_GOAL := help

#########################################################################################

.PHONY: check
check: ## e.g.) ansible-playbook -i inventory/hosts.ini -l focal playbook.yml --diff --check
	@ansible-playbook -i inventory/hosts.ini -l focal playbook.yml --diff --check

.PHONY: dep
dep: ## e.g.) ansible-playbook -i inventory/hosts.ini -l focal playbook.yml --diff
	@ansible-playbook -i inventory/hosts.ini -l focal playbook.yml --diff

#########################################################################################

export LOGO
.PHONY: help
help: ## display help
	@echo -e "$${LOGO}"
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-30s\033[0m %s\n", $$1, $$2}'

#########################################################################################

# @see http://patorjk.com/software/taag/#p=display&f=Slant&t=Ansible%20Ubuntu
#      Font: Slant
define LOGO
\e[1;34m
    ___               _ __    __        __  ____                __
   /   |  ____  _____(_) /_  / /__     / / / / /_  __  ______  / /___  __
  / /| | / __ \/ ___/ / __ \/ / _ \   / / / / __ \/ / / / __ \/ __/ / / /
 / ___ |/ / / (__  ) / /_/ / /  __/  / /_/ / /_/ / /_/ / / / / /_/ /_/ /
/_/  |_/_/ /_/____/_/_.___/_/\___/   \____/_.___/\__,_/_/ /_/\__/\__,_/

\e[m\e[33mUsage:\e[m
  command [options] [arguments]

\e[33mAvailable Commands:\e[m
endef
