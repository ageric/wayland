%-protocol.c: $(top_srcdir)/protocol/%.xml
	$(AM_V_GEN)$(wayland_scanner) code < $< > $(top_srcdir)/wayland/$@

%-server-protocol.h: $(top_srcdir)/protocol/%.xml
	$(AM_V_GEN)$(wayland_scanner) server-header < $< > $(top_srcdir)/wayland/$@

%-client-protocol.h: $(top_srcdir)/protocol/%.xml
	$(AM_V_GEN)$(wayland_scanner) client-header < $< > $(top_srcdir)/wayland/$@
