%-protocol.c: $(top_srcdir)/protocol/%.xml
	$(wayland_scanner) code < $< > $@

%-server-protocol.h: $(top_srcdir)/protocol/%.xml
	$(wayland_scanner) server-header < $< > $@

%-client-protocol.h: $(top_srcdir)/protocol/%.xml
	$(wayland_scanner) client-header < $< > $@
