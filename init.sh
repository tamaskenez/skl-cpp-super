#!/bin/sh

# This file must be sourced to make PATH (and cake commands) available
# for the shell.

# This script can be executed each time you open a new terminal
# and cd into this directory, because the install steps can be
# executed multiple times. They are no-ops if the repo has already
# been cloned, built or installed from the same commit.

if [[ -z $CAKE_ROOT ]]; then
	export CAKE_ROOT="$PWD/.cake"
	export PATH="$CAKE_ROOT/bin":$PATH
	# clone the cake repo
	if test ! -f "$CAKE_ROOT/Cake.cmake" ; then
	    git clone https://github.com/tamaskenez/cake ${CAKE_ROOT}
	fi
fi

cake .
