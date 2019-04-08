#!/bin/bash
#This script is for leaning sed
#The command followed one # is right
#This stands for the  one ## is bad

#sed [options] {sed-command} {input-file}
#sed [options] -f {sed-command-in-a-file} {input-file}
#sed [options] -e {sed-command-1} -e {sed-command-2} {input-file}
#sed '[address-range|pattern-range]' s/original-string/replacement-string/[subtitute-flags]' input-file
#sed '[address] a the-line-to-append' input-file
#sed '[address] i the-line-to-insert' input-file
#sed '[address] c the-line-to-insert' input-file

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

#sed -n '/[234]/ p' $1
#sed -n '/[2-4]/ p' $1
#sed -n '/101\|102/ p' $1
#sed -n '/[2-3]\|105/ p' $1

#sed -n '/[0-9]/ p' $1
#sed -n '/^[0-9]\{5\}$/ p' $1
#sed -n '/^[0-9]\{3,5\}$/ p' $1

#sed -n '/\bthe\b/ p' $1
#sed -n '/\(the\)\1/ p' $1
#sed 's/..$/, Not Defined/' $1
#sed 's/Manager.*//' $1
#sed -e 's/#.*// ; /^$/ d' $1
#sed -e 's/<[^>]*>//g' $1

#sed -e 's/#.*//' -e '/^$/ d' $1
#sed -e '/^#.*/ d' $1
#sed 's/.$//' $1

#sed -i 's/John/Johnny/' $1
#sed -ibak 's/John/Johnny/' $1
#sed --in-place=bak 's/John/Johnny/' $1

#sed '2 a 203, Jack Johnson, Engineer' $1
#sed '$ a 203, Jack Johnson, Engineer' $1

#sed '/Jason/a\
#203,Jack Johnson,Engineer\
#204,Mark Smith,Sales Engineer' $1

#sed '2 i 203,Jack Johnson,Engineer' $1 
#sed '$ i 108,Jack Johnson,Engineer' $1

#sed '/Jason/i\
#203,Jack Johnson,Engineer\
#204,Mark Smith,Sales Engineer' $1

#sed '2 c 202,Jack Johnson,Engineer' $1

#sed '/Raj/c\
#203,Jack Johnson,Engineer\
#204,Mark Smith,Sales Engineer' $1

#sed '/Jason/ {
#a\
#    204,Jack Johnson,Engineer
#i\
#    202,Mark Smith,Sales Engineer
#c\
#    203,Joe Mason,Sysadmin
#}' $1

#sed -n l $1
#sed -n 'l 20' $1

#sed = $1
#sed '1,3 =' $1
#sed '/Jane/ =' $1

#sed -n '1,3 =' $1
#sed -n '/Jane/ =' $1
#sed -n '$ =' $1
#sed 'y/abcde/ABCDE/' $1
#sed -n '/root/ p' $1 $2
#sed 'q' $1
#sed '5 q' $1
#sed '/Manager/ q' $1
#sed '$ r log.txt' $1
#sed '/Jane/ r log.txt' $1
#sed -n n $1

#cat $1
#sed 's/JUNK/&/p' $1
#sed -n 'p' $1
#sed 'n' $1 
#sed 'N' $1

#grep Jane $1
#sed -n 's/Jane/&/p' $1
#sed -n '/Jane/ p' $1

#grep -v Jane $1
#sed -n '/Jane/ !p' $1

#head -10 $1
#sed '11, $ d' $1
#sed -n '1,10 p' $1
#sed '10, q' $1

#sed -n 'p' employee.txt
#sed --quiet 'p' employee.txt
#sed --silent 'p' employee.txt

#sed -ibak -c 's/John/Johnny/' employee.txt
#sed --in-place=bak --copy 's/John/Johnny/' employee.txt
#sed -n -l 20 'l' employee.txt
#sed -n --line-length=20 employee.txt
#sed -n -e 'x;n' -e '/Manager/{x;p}' $1
#sed -n -e '/Manager/!h' -e '/Manager/{x;p}' $1
#sed -n -e '/Manager/!h' -e '/Manager/{H;x;p}' $1
#sed -n -e '/Manager/!h' -e '/Manager/{H;x;s/\n/:/;p}' $1
#sed -n -e '/Manager/!h' -e '/Manager/{g;p}' $1
#sed -n -e '/Manager/!h' -e '/Manager/{x;G;s/\n/:/;p}' $1
#sed -e '{N;s/\n/:/}' $1
#sed -e '=' $1 | sed -e '{N; s/\n/ /}'
#sed -n -e 'N' -e '/Manager/P' $1
#sed -e '/@/{N;/@.*@/{s/@.*@//;P;D}}' $1
