lib_LTLIBRARIES = libwayland-client.la libwayland-server.la
noinst_LTLIBRARIES = libwayland-util.la

include_HEADERS =				\
	wayland-client.h			\
	wayland-client-protocol.h		\
	wayland-server.h			\
	wayland-server-protocol.h		\
	wayland-util.h

libwayland_util_la_CPPFLAGS = $(FFI_CFLAGS)
libwayland_util_la_SOURCES =			\
	connection.c				\
	connection.h				\
	wayland-hash.c				\
	wayland-util.c				\
	wayland-util.h

libwayland_server_la_CPPFLAGS = $(FFI_CFLAGS)
libwayland_server_la_LIBADD = $(FFI_LIBS) libwayland-util.la
libwayland_server_la_SOURCES =			\
	event-loop.c				\
	wayland-protocol.c			\
	wayland-server.c			\
	wayland-server-protocol.h

libwayland_client_la_CPPFLAGS = $(FFI_CFLAGS)
libwayland_client_la_LIBADD = $(FFI_LIBS) libwayland-util.la
libwayland_client_la_SOURCES =			\
	wayland-client.c			\
	wayland-client-protocol.h		\
	wayland-protocol.c

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = 				\
	wayland-client.pc 			\
	wayland-server.pc

if CROSS_COMPILING
else
bin_PROGRAMS = wayland-scanner

wayland_scanner_SOURCES =			\
	scanner.c

wayland_scanner_LDADD = libwayland-util.la

$(BUILT_SOURCES): wayland-scanner
endif

BUILT_SOURCES =					\
	$(srcdir)/wayland-protocol.c		\
	$(srcdir)/wayland-client-protocol.h 	\
	$(srcdir)/wayland-server-protocol.h

CLEANFILES = $(BUILT_SOURCES)

include scanner.mk
