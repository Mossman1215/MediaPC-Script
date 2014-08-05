#!/bin/bash
function steamL {
	steam
	if [ $? ]
	then
		xbmcL
	fi
}
function xbmcL {
	xbmc
	if [ $? ]
	then
		steamL
	fi
}
xbmcL
exit
