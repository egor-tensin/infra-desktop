include prelude.mk

.PHONY: DO
DO:

.PHONY: deps
deps:
	@echo
	@echo -----------------------------------------------------------------
	@echo Installing Ansible dependencies
	@echo -----------------------------------------------------------------
	@ansible-galaxy install -r ansible/requirements.yml

LIMIT ?= all
$(eval $(call noexpand,LIMIT))

.PHONY: configure
configure: deps
	@echo
	@echo -----------------------------------------------------------------
	@echo ansible-playbook
	@echo -----------------------------------------------------------------
	@cd -- ansible/ && \
		ansible-playbook --limit '$(call escape,$(LIMIT))' playbook.yml

.PHONY: config
config: configure

.PHONY: maintenance
maintenance:
	@$(MAKE) configure 'LIMIT=$(call escape,$(LIMIT))'

.PHONY: reboot
reboot:
	@echo
	@echo -----------------------------------------------------------------
	@echo Rebooting hosts
	@echo -----------------------------------------------------------------
	@cd -- ansible/ && \
		ansible --become --limit '$(call escape,$(LIMIT))' -m reboot all
