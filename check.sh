#!/bin/bash

if ! ps aux|grep 'monit'|grep -v 'grep' >> /dev/null; then
	exit 1
fi
