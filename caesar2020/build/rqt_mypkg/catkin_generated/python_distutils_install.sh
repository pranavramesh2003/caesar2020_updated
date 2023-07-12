#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/pranav/caesar2020/src/rqt_mypkg"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/pranav/caesar2020/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/pranav/caesar2020/install/lib/python3/dist-packages:/home/pranav/caesar2020/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/pranav/caesar2020/build" \
    "/usr/bin/python3" \
    "/home/pranav/caesar2020/src/rqt_mypkg/setup.py" \
     \
    build --build-base "/home/pranav/caesar2020/build/rqt_mypkg" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/pranav/caesar2020/install" --install-scripts="/home/pranav/caesar2020/install/bin"
