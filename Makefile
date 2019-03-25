help:
	@cat Makefile

install-roles:
	@sudo ansible-galaxy install -r required-roles.yml --force

deploy:
	@ansible-playbook -i inventory playbook.yml -e cli_host=controller
