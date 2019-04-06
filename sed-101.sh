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

#sed 's/ljb/lkx' $1
#sed '/xy/s/ljb/lkx' $1
#sed 's/a/A/' $1
#sed 's/a/A/g' $1
#sed 's/a/A/2' $1
#sed -n 's/a/A/p' $1
#sed -n 's/a/A/w xfile' $1
#sed 's/john/johnny/' $1
#sed 's/john/johnny/i' $1

#sed 's/^/ls -l /' $1
#sed 's/^/ls -l /e' $1
#sed -n 's/Manager/Director/gipw output.txt' $1

#sed 's/\/usr\/local\/bin/\/usr\/bin/' $1
#You can use any character as subtitution delimiter 
#sed 's|/usr/local/bin|/usr/bin|' $1
#sed 's@/usr/local/bin@/usr/bin@' $1

#sed '{
#s/Developer/IT Manager/
#s/Manager/Director/
#}' $1

#sed 's/^[0-9][0-9][0-9]/(&)/g' $1
#sed 's/^.*/<&>/' $1
#sed 's/\([^,]*\).*/\1/g' $1
#sed 's/\([^:]*\).*/\1/' $1

#echo "The Geek Stuff" | sed 's/\(\b[A-Z]\)/\(\1\)/g'
#sed 's/\(^\|[^0-9.]\)\([0-9]\+\)\([0-9]\{3\}\)/\1\2,\3/g' $1
##sed 's/\([^,]*\), \([^,]*\),\([^,]*\).*/\1,\3/g' $1
#sed 's/\([^,]*\),\([^,]*\),\([^,]*\).*/\1,\3/g' $1
#sed 's/\([^,]*\),\([^,]*\),\([^,]*\).*/\2,\1,\3/g' $1

#Just For gnu sed
#sed 's/John/JO\lHNNY/' $1
#sed 's/John/JO\LHNNY/' $1
#sed 's/John/jo\uhnny/' $1
#sed 's/John/JO\LHN\EY/' $1
#sed 's/John/jo\Uhnn\Ey/' $1
#sed 's/\([^,]*\),\([^,]*\),\(.*\).*/\U\2\E,\1,\L\3/g' $1

#sed -n '/^103/ p' $1
#sed -n '/r$/ p' $1

#sed -n 's/J... /Jason/p' $1
#sed -n 's/J.../Jason/p' $1
#sed -n '/log: *./ p' $1 
#sed -n '/log: \+/ p' $1
#sed -n '/log: \+/ p' $1
#sed -n '/log: \?/ p' $1
#sed -n '/127\.0\.0\.1/ p' $1

sed -n '/[234]/ p' $1
