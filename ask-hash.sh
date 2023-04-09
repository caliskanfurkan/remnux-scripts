#!/usr/bin/env bash


HASH=$1

malwoverview.py -o 0 -b 1 -B $HASH
malwoverview.py -v 8 -V $HASH
