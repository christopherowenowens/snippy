# This version with xsel worked in 2018 on Mint; but not working on KDE
# Left for posterity while updated the above to use xclip

# xdotool key --delay 0 ctrl+x
# sleep 0.2s
# SELECTION=`xsel -b`
# xsel -b -i < ~/snippy/${SELECTION}
# xdotool key --delay 0 ctrl+v
# xdotool key --delay 0 BackSpace 
