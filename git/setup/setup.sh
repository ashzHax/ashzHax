#!/bin/sh
# by: ashz
# ex: script for setting up personal Git configuration

usage()
{
	echo "[error] usage: ./setup.sh"
	exit
}

#if [ $EUID -ne 0 ]; then
#	echo "[error] require super-user permission. [usage: sudo ./setup.sh]"
#    exit
#fi

echo "[alert] starting GIT configuration for Linux System"

cp ./gitconfig ~/.gitconfig

echo "[alert] completed"
