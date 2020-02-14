ifeq ($(PREFIX),)
	PREFIX := /usr/local
endif

.PHONY: install
install:
	install -d $(DESTDIR)$(PREFIX)/bin
	install -d $(DESTDIR)$(PREFIX)/share/mantabassets
	install -m 755 mantablockscreen $(DESTDIR)$(PREFIX)/bin/mantablockscreen
	install -m 755 mantabassets/* $(DESTDIR)$(PREFIX)/share/mantabassets/

.PHONY: uninstall
uninstall:
	test -e $(DESTDIR)$(PREFIX)/bin/mantablockscreen && rm $(DESTDIR)$(PREFIX)/bin/mantablockscreen
	test -d $(DESTDIR)$(PREFIX)/share/mantabassets && rm -rf $(DESTDIR)$(PREFIX)/share/mantabassets || exit 0
