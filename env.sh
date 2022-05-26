#!/bin/bash

# a simple script to set up the environment
# Reed Essick (reed.essick@gmail.com)

#-------------------------------------------------

srcdir="${PWD}/src"
optdir="${PWD}/opt"
bindir="${optdir}/bin"
libdir="${optdir}/lib/python3.6/site-packages"

#------------------------

export PATH="${bindir}:$PATH"
export PYTHONPATH="${libdir}:$PYTHONPATH"
