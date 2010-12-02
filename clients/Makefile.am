noinst_PROGRAMS = dnd flower gears image screenshot smoke terminal view
noinst_LTLIBRARIES = libtoytoolkit.la

AM_CPPFLAGS =						\
	-DDATADIR='"$(datadir)"'			\
	$(CLIENT_CFLAGS)

LDADD =							\
	libtoytoolkit.la				\
	$(top_builddir)/wayland/libwayland-client.la	\
	$(CLIENT_LIBS) -lrt -lm

# dnd: drag 'n' drop demo
dnd_SOURCES =						\
	dnd.c

# flower: display a rotating flower
flower_SOURCES =					\
	flower.c

# gears: similar to the X11 glxgears demo
gears_SOURCES =						\
	gears.c

# image: display image
image_SOURCES =						\
	image.c

# screeshot: create a screenshot image
screenshot_SOURCES =					\
	screenshot.c					\
	screenshooter-protocol.c

# smoke:
smoke_SOURCES =						\
	smoke.c

# terminal: a simple terminal emulator
terminal_LDADD = -lutil

terminal_SOURCES =					\
	terminal.c

# view: display PDF files (requires a URI)
view_CPPFLAGS =						\
	$(POPPLER_CFLAGS)

view_LDADD = $(POPPLER_LIBS)

view_SOURCES =						\
	view.c

# libtoytoolkit: support library
libtoytoolkit_la_SOURCES =				\
	window.c					\
	window.h					\
	wayland-glib.c					\
	wayland-glib.h					\
	cairo-util.c					\
	cairo-util.h

BUILT_SOURCES =						\
	$(srcdir)/screenshooter-client-protocol.h	\
	$(srcdir)/screenshooter-protocol.c

CLEANFILES = $(BUILT_SOURCES)

include $(top_srcdir)/wayland/scanner.mk
