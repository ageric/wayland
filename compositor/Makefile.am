noinst_PROGRAMS = compositor

compositor_CPPFLAGS = 				\
	-DDATADIR='"$(datadir)"'		\
	-I$(top_srcdir)/wayland			\
	-I$(top_builddir)/wayland		\
	$(COMPOSITOR_CFLAGS)

compositor_LDADD =					\
	$(top_builddir)/wayland/libwayland-server.la	\
	$(top_builddir)/wayland/libwayland-client.la	\
	$(COMPOSITOR_LIBS)

compositor_SOURCES =				\
	compositor.c				\
	compositor.h				\
	compositor-drm.c			\
	compositor-x11.c			\
	compositor-wayland.c			\
	screenshooter.c				\
	screenshooter-protocol.c		\
	screenshooter-server-protocol.h		\
	drm.c					\
	shm.c

udevrulesddir = $(sysconfdir)/udev/rules.d

dist_udevrulesd_DATA =				\
	70-wayland.rules

if CROSS_COMPILING
else
$(BUILT_SOURCES): $(top_srcdir)/wayland/wayland-scanner
endif

BUILT_SOURCES =						\
	$(srcdir)/screenshooter-server-protocol.h	\
	$(srcdir)/screenshooter-protocol.c

CLEANFILES = $(BUILT_SOURCES)

include $(top_srcdir)/wayland/scanner.mk
