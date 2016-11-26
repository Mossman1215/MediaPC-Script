#!/bin/bash
function steamL {
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
