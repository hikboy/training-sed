#!/bin/bash
#This script is for leaning sed
#The command followed one # is right
#This stands for the  one ## is bad

#sed [options] {sed-command} {input-file}
#sed [options] -f {sed-command-in-a-file} {input-file}
#sed [options] -e {sed-command-1} -e {sed-command-2} {input-file}
#sed '[address-range|pattern-range]' s/original-string/replacement-string/[subtitute-flags]' input-file

#sed [options] '{
#    sed-command-1
#    sed-command-2
#}' input-file

#sed -n -e '/^root/ p' -e '/^nobody/ p' /etc/passwd

#sed -n   \
#-e '/^root/ p' \
#-e '/^nobody/ p' \
#/etc/passwd

#sed scripting flow: REPR  Read Execute Print Repeat

##sed $1
#sed p $1
#sed 'p' $1
#sed 'p' $1
#sed -n p $1
#sed -n 'p' $1
#sed -n '2 p' $1
#sed -n '1,4 p' $1
#sed -n '2,$ p' $1
#sed -n '1~2 p' $1
#sed -n '/jason/, 4 p' $1
#sed -n '/jason/, /tom/ p' $1
#sed -n '/jason/, +2 p' $1

#sed d $1
#sed 'd' $1
#sed '2 d' $1
#sed '1,4 d' $1
#sed '2,$ d' $1
#sed '1~2 d' $1
#sed '/jason/, 4 d' $1
#sed '/jason/, /tom/ d' $1
#sed '/jason/, +2 d' $1

##sed 'w $2' $1
#sed 'w xfile' $1
#sed -n 'w xfile' $1
#sed -n '2 w xfile' $1
#sed -n '1,4 w xfile' $1
#sed -n '2,$ w xfile' $1
#sed -n '1~2 w xfile' $1
#sed -n '/jane/ w xfile' $1
#sed -n '/ljb/,4 w xfile' $1
#sed -n '/ljb/,$ w xfile' $1
#sed -n '/qwc/,/ttt/ w xfile' $1
#sed -n '/ljb/,+2 w xfile' $1


