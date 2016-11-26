#!/bin/bash
function steamL {
	export LD_PRELOAD='/usr/$LIB/libstdc++.so.6' #Export so all child processes are affected as well
	export DISPLAY=:0
	#export LIBGL_DEBUG=verbose
	steam
	if [ $? ]
	then
		xbmcL
	fi
}
function xbmcL {
	kodi
	if [ $? ]
	then
		steamL
	fi
}
xbmcL
exit
