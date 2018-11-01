ifeq ($(PREFIX),)
	PREFIX := /usr
endif

.PHONY: install
install:
	install -d $(DESTDIR)$(PREFIX)/local/bin
	install -d $(DESTDIR)$(PREFIX)/share/mantabassets
	install -m 755 mantablockscreen $(DESTDIR)$(PREFIX)/local/bin/mantablockscreen
	install -m 755 mantabassets/* $(DESTDIR)$(PREFIX)/share/mantabassets/

.PHONY: uninstall
uninstall:
	test -e $(DESTDIR)$(PREFIX)/local/bin/mantablockscreen && rm $(DESTDIR)$(PREFIX)/local/bin/mantablockscreen
	test -d $(DESTDIR)$(PREFIX)/share/mantabassets && rm -rf $(DESTDIR)$(PREFIX)/share/mantabassets || exit 0
