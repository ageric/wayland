$(srcdir)/%-protocol.c: $(top_srcdir)/protocol/%.xml
	$(AM_V_GEN)$(wayland_scanner) code < $< > $@

$(srcdir)/%-server-protocol.h: $(top_srcdir)/protocol/%.xml
	$(AM_V_GEN)$(wayland_scanner) server-header < $< > $@

$(srcdir)/%-client-protocol.h: $(top_srcdir)/protocol/%.xml
	$(AM_V_GEN)$(wayland_scanner) client-header < $< > $@
