#!/bin/bash

cd /hhvm-msgpack
hphpize 
cmake . 
make  
cd /

hhvm -a
