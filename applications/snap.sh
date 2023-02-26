#!/bin/bash

source "$(dirname $0)/../tools/funcs.sh"

func_snap_install() {
	for e in $*
	do
		func_echo_info " - Installing ${e}"
		sudo snap install ${e}
		shift
	done
}


func_snap_install	superpaper
