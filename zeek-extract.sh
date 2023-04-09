#!/usr/bin/env bash


PCAPFILE=$1

if [ -z $PCAPFILE ] || [ ! -f $PCAPFILE ]; then
    echo "File ${PCAPFILE} doesnt seem to be there - please supply a pcap file."
    exit 1;
fi

/opt/zeek-rc/bin/zeek -r $1 /opt/zeek-rc/share/zeek/policy/frameworks/files/extract-all-files.zeek
