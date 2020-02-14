ifeq ($(PREFIX),)
	PREFIX := /usr/local
endif

.PHONY: install
install:
	sed 's|@pkgdatadir[@]|$(PREFIX)/share/mantabassets|g' mantablockscreen.in > mantablockscreen
	install -D mantablockscreen '$(DESTDIR)$(PREFIX)/bin/mantablockscreen'
	install -D mantabassets/* -t '$(DESTDIR)$(PREFIX)/share/mantabassets/'

.PHONY: uninstall
uninstall:
	rm -f '$(DESTDIR)$(PREFIX)/bin/mantablockscreen'
	rm -rf '$(DESTDIR)$(PREFIX)/share/mantabassets'
