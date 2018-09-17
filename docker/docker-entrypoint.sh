#!/bin/sh
# copy of configuration files
APP=ergw-gtp-path-prober
RELPATH=$(find /opt/$APP/releases/ -mindepth 1 -maxdepth 1 -type d)
[ -f /config/$APP/sys.config ] && cp /config/$APP/sys.config $RELPATH/sys.config
[ -f /config/$APP/vm.args ] && cp /config/$APP/vm.args $RELPATH/vm.args

exec "$@"
