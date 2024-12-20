PKGNAME ?= hotspot-fix

.PHONY: install

install:
	@install -Dm755 -t "$(DESTDIR)/usr/bin/" hotspot-fix
	@install -Dm755 -t "$(DESTDIR)/usr/bin/" hotspot-unfix
	@install -Dm644 -t "$(LIB_DIR)/usr/share/polkit-1/actions/" actions/hotspot-fix
	@install -Dm644 -t "$(LIB_DIR)/usr/share/polkit-1/actions/" actions/hotspot-unfix
	@install -Dm644 -t "$(LIB_DIR)/usr/share/applications/" hotspot-fix.desktop
	@install -Dm644 -t "$(LIB_DIR)/usr/share/applications/" hotspot-unfix.desktop

uninstall:
	rm -f "$(DESTDIR)/usr/bin/hotspot-fix"
	rm -f "$(DESTDIR)/usr/bin/hotspot-unfix"
	rm -f "$(LIB_DIR)/usr/share/polkit-1/actions/hotspot-fix"
	rm -f "$(LIB_DIR)/usr/share/polkit-1/actions/hotspot-unfix"
	rm -f "$(LIB_DIR)/usr/share/applications/hotspot-fix.desktop"
	rm -f "$(LIB_DIR)/usr/share/applications/hotspot-unfix.desktop"
