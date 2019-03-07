PREFIX ?= $(HOME)/bin

install:
	@echo Installing to $(PREFIX)
	install -D -p -m 755 kubectx $(PREFIX)/kubectx
	install -D -p -m 755 kubens $(PREFIX)/kubens

uninstall:
	$(RM) $(PREFIX)/kubectx
	$(RM) $(PREFIX)/kubens

.PHONY: install uninstall
