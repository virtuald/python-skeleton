#!/bin/sh

cd `dirname $0`

PACKAGENAME=`ls ../src`
PYTHONPATH="../src" python -m coverage run --source $PACKAGENAME -m pytest $@
if [ "$?" != "0" ]; then
	exit 1
fi

python -m coverage report -m
