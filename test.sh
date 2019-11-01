#!/bin/bash

listflag=$(yad \
--title="mm-pkginstaller" --width=600 --text="<span foreground='blue'><b><big><big>インストールリストを選択してください。</big></big></b></span>" \
--button="gtk-cancel":1 \
--form  \
--field="<span font='12' foreground='white' background='blue'>-----安　定　志　向-----（Standard）</span> ":FBTN 'bash -c " echo 21 ; kill -USR1 $YAD_PID"' \
--field="\
標準リポジトリからのアプリをインストールします。\n\
\n\
本日はおかしい":LBL 'bash -c ""' \
--field="<span font='12' foreground='black' background='plum'>---最　新　版　志　向---（Latest）</span> ":FBTN 'bash -c " echo 22 ; kill -USR1 $YAD_PID"' \
--field="\
本日は晴天なり\n\
本日は、雨天なり\n\
本日はおかしい":LBL 'bash -c ""' \
--field="<span font='12' foreground='black' background='lightblue'>---ペンタブツール---（PentabTools）</span> ":FBTN 'bash -c " echo 23 ; kill -USR1 $YAD_PID"' \
--field="\
本日は晴天なり\n\
本日は、雨天なり\n\
本日はおかしい":LBL 'bash -c ""' \
 2>/dev/null )

listflag=$(echo $listflag  | sed -e 's/[^0-9]//g') 

echo $listflag

exit


case  $listflag in
 
     21)
		cat   ${datadir}/01aptcatalog.txt >  ${datadir}/00pkgcatalog.txt
		
         ;;

     22) 
          
		cat  ${datadir}/01ppacatalog.txt ${datadir}/00pkgcatalog.txt
		
		;;
                 
     23) 
          
		cat  ${datadir}/01pencatalog.txt  ${datadir}/00pkgcatalog.txt
		
		;;

	 * )
	    exit 0
		;;
		
esac         


exit
exit


case  $instflag in
 
     21)
		cat   ${datadir}/01aptcatalog.txt >  ${datadir}/00pkgcatalog.txt
		
         ;;

     22) 
          
		cat  ${datadir}/01ppacatalog.txt ${datadir}/00pkgcatalog.txt
		
		;;
                 
     23) 
          
		cat  ${datadir}/01pencatalog.txt  ${datadir}/00pkgcatalog.txt
		
		;;

	 * )
	    exit 0
		;;
		
esac         


exit





flag=$(yad \
--title="mm-pkginstaller" --width=600 --text="<span foreground='blue'><b><big><big>インストールリストを選択してください。</big></big></b></span>" \
--button="gtk-cancel":1 \
--form  \
--field="<span font='12' foreground='white' background='blue'>-----安　定　志　向-----（Standard）</span> ":FBTN 'bash -c " echo 21 ; kill -USR1 $YAD_PID"' \
--field="\
本日は晴天なり\n\
本日は、雨天なり\n\
本日はおかしい":LBL 'bash -c ""' \
--field="<span font='12' foreground='black' background='plum'>---最　新　版　志　向---（Latest）</span> ":FBTN 'bash -c " echo 22 ; kill -USR1 $YAD_PID"' \
--field="\
本日は晴天なり\n\
本日は、雨天なり\n\
本日はおかしい":LBL 'bash -c ""' \
--field="<span font='12' foreground='black' background='lightblue'>---ペンタブツール---（PentabTools）</span> ":FBTN 'bash -c " echo 23 ; kill -USR1 $YAD_PID"' \
--field="\
本日は晴天なり\n\
本日は、雨天なり\n\
本日はおかしい":LBL 'bash -c ""' \
 2>/dev/null )

flag=$(echo $flag  | sed -e 's/[^0-9]//g') 
echo $flag


if [[ $flag -eq 21 ]] || [[ $flag -eq 22 ]]  || [[ $flag -eq 23 ]] || [[ $flag -eq "" ]] ; then
  echo "文字列は同じです"
  echo $flag
else
  echo "文字列は違います"
  echo $flag
fi

exit


select=$?


[[ $select -eq 0 ]] && exit 0

if [[ $select -eq 1 ]]; then
flag = $select

elif [[ $select -eq 2 ]]; then
flag = $select


else
flag = $select

fi




exit



AMPLETXT="First line, and now
second line in TXT field"

ifs=$IFS; IFS='|'                               # Field separator used by 'read' and 'yad'
read -r MULTILINE TYPELESS FONT COLOUR scrap << EOF   # read field values and assign to variables
$(yad --form \
--field="Multiline text:TXT"                    "$SAMPLETXT" \
--field="Typeless entry with\nmultiline label"  "No field TYPE specified" \
--field="Font selection:FN"                     "Sans 12" \
--field="Colour selection:CLR"                  "gold" )
EOF


IFS=$ifs

[ -n "$(echo -e)" ] && echo_e= || echo_e=-e     # Use echo -e except for dash
MULTILINE=$(echo $echo_e "$MULTILINE")          # Convert '\n' in TXT field back into linefeeds
echo $echo_e "$MULTILINE\n$TYPELESS\n$FONT\n$COLOUR"








