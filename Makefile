all:

clean:

install:
	mkdir -p $(DESTDIR)/etc/apt/preferences.d
	mkdir -p $(DESTDIR)/etc/apt/sources.list.d
	mkdir -p $(DESTDIR)/usr/bin
	mkdir -p $(DESTDIR)/usr/local/bin

	cp preferences.d/foxxy-pinning $(DESTDIR)/etc/apt/preferences.d/foxxy-pinning
	cp sources.list.foxxy $(DESTDIR)/etc/apt/sources.list.foxxy
	cp foxxy-mirror-selector $(DESTDIR)/usr/bin/foxxy-mirror-selector
	cp apt $(DESTDIR)/usr/local/bin/apt
	cp apt-get $(DESTDIR)/usr/local/bin/apt-get

	chown root:root $(DESTDIR)/etc/apt/sources.list.foxxy
	chmod 644 $(DESTDIR)/etc/apt/sources.list.foxxy

	chown root:root $(DESTDIR)/etc/apt/preferences.d/foxxy-pinning
	chmod 644 $(DESTDIR)/etc/apt/preferences.d/foxxy-pinning

	chown root:root $(DESTDIR)/usr/bin/foxxy-mirror-selector
	chmod 755 $(DESTDIR)/usr/bin/foxxy-mirror-selector

	chown root:root $(DESTDIR)/usr/local/bin/apt
	chmod 755 $(DESTDIR)/usr/local/bin/apt

	chown root:root $(DESTDIR)/usr/local/bin/apt-get
	chmod 755 $(DESTDIR)/usr/local/bin/apt-get
