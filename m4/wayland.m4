#serial 1

# WAYLAND_GCC_OPTIONS(options)
# ----------------------------
# Enable compiler options for gcc.
AC_DEFUN([WAYLAND_GCC_OPTIONS],
[if test "x$GCC" = "xyes"; then
    for option in "$1"; do
        case " $CFLAGS " in
        *[[\ \	]]$option[[\ \	]]*) ;;
        *) CFLAGS="$CFLAGS $option" ;;
        esac
    done
fi
])dnl
