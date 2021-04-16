#!/bin/sh

if [ "${TZ}x" = "x" ]; then
	export TZ=UTC
fi
setup-timezone -z "${TZ}"
poetry $@
