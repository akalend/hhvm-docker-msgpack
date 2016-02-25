#!/bin/bash

cd /hhvm-msgpack
hphpize 
cmake . 
make  
cd /

/bin/bash
