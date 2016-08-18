#!/bin/bash
zipfile="processing-3.2-linux32.tgz"

if [ ! -e $zipfile ]
then
  wget http://download.processing.org/$zipfile
fi

tar zxvf $zipfile > /dev/null
