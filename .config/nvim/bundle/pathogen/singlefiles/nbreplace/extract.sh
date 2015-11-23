#!/usr/bin/zsh
LANG="nb"
ENC_IN="ISO-8859-1"
WORDS=($(aspell -d $LANG dump master | aspell -l $LANG expand | egrep -i 'ae|oe|aa' | iconv -f ${ENC_IN} -t "UTF-8"))

for (( i=0; i <= ${#WORDS[@]}; i++ ))
do
    TO="${WORDS[$i]}"
    FROM=$(echo "$TO" | sed -e 's/Ae/Æ/g' | sed -e 's/Oe/Ø/g' | sed -e 's/Aa/Å/g' | sed -e 's/ae/æ/g' | sed -e 's/oe/ø/g' | sed -e 's/aa/å/g')
    echo "inoreabbrev $FROM $TO"
done
