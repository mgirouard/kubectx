PREFIX ?= $(HOME)/bin
comp_prefix = $(shell pkg-config --variable=completionsdir bash-completion)

install:
	install -D -p -m 755 kubectx $(PREFIX)/kubectx
	install -D -p -m 755 kubens $(PREFIX)/kubens

completions:
	install -D -p -m 644 completion/kubectx.bash $(comp_prefix)/kubectx
	install -D -p -m 644 completion/kubens.bash $(comp_prefix)/kubens

uninstall:
	$(RM) $(PREFIX)/kubectx
	$(RM) $(PREFIX)/kubens
	$(RM) $(comp_prefix)/kubectx
	$(RM) $(comp_prefix)/kubens

.PHONY: install uninstall
