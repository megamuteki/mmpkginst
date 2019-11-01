# mmpkginst
This is a after desktop installer.

This installer is applied to Linux mint or Linux KDE NEON

# required applications
git and yad are needed to use

# Usage
git clone https://github.com/megamuteki/mmpkginst.git

cd mmpkginst

sudo chmod +x mm_pkginst.sh mmpkginst.desktop mm_pkginst_files/*

./mm_pkginst.sh

or

\`grep '^Exec' mmpkginst.desktop | tail -1 | sed 's/^Exec=//' | sed 's/%.//' | sed 's/^"//g' | sed 's/" *$//g'`

or

double click mmpkginst.desktop


# Sample picture

memo:Select from PEN List and Monitor List. 
![Penmap](https://github.com/megamuteki/images/blob/master/mmpkginst/mmpkginst01.png)

