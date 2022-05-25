#!/bin/bash

echo "Is this $*"
echo "this is file called $(basename $0)"
name=OmaRae
export name
./scrr2.sh
echo name
