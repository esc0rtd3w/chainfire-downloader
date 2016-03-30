#!/bin/bash

# Chainfire File Downloader Script v0.2

# esc0rtd3w 2013 / crackacademy.com





# Default Path: http://download.chainfire.eu/filenumber/dummy/


# Default variables to use

# 18 seems to be the first valid file number
file_number=18

dummy_text=dummy

do_loop=0

do_loop_once=0

browser=firefox

url="http://download.chainfire.eu/$file_number/$dummy_text/"



# Give it a splash of color
culladatshit()
{

echo "\033[33m"

}



# This is the top banner text
banner()
{

echo "**********Chainfire File Downloader Script v0.1 / esc0rtd3w 2013***********"
echo ""
echo "THIS SCRIPT IS IN PERMANENT BETA AND INTENDED FOR PRIVATE USE ONLY!"
echo ""
echo "HOW DID YOU GET THIS FILE ANYWAYS??? ;)"
echo ""
echo "ONCE A NUMBER IS SELECTED IT WILL INCREMENT BY 1 UNTIL X or M IS SELECTED"
echo ""
echo "***************************************************************************"

}



# Thia is the main loop
# This is the 2nd part called after do_once and within itself
loop()

{

clear

#echo ""
#echo "I AM loop"
echo ""

banner

file_number=$(($file_number + 1))

url="http://download.chainfire.eu/$file_number/$dummy_text/"

#culladatshit
echo ""
echo "Current File: ""$file_number"
echo ""
echo "Current URL: ""$url"
echo ""
echo "Current Web Browser: $browser"
echo ""
echo ""
echo ""
echo ""
echo "Press ENTER to check next link, M for menu, or X to exit:"
echo ""

read do_loop

case "$do_loop" in

"x" | "X")

exit

;;


"m" | "M")

menu

;;


*)


launch=$("$browser" "$url")

loop

;;

esac

}



# This is done ONLY after the menu file number selection
# Once a value is set it returns to loop
do_once()

{

clear



#echo ""
#echo "I AM do_once"
echo ""

banner

url="http://download.chainfire.eu/$file_number/$dummy_text/"

#culladatshit
echo ""
echo "Current File: ""$file_number"
echo ""
echo "Current URL: ""$url"
echo ""
echo "Current Web Browser: $browser"
echo ""
echo ""
echo ""
echo ""
echo "Press ENTER to continue with these settings, M for menu, or X to exit:"
echo ""

read do_loop_once

case "$do_loop_once" in

"x" | "X")

exit && exit

;;


"m" | "M")

menu

;;


*)


launch=$("$browser" "$url")

loop

;;

esac


}



# This is the main menu
# It is intended to maintain manual entries for stuff
menu()
{

clear

#echo ""
#echo "I AM menu"
echo ""

banner

file_number=18

#culladatshit
echo ""
echo "Current File: ""$file_number"
echo ""
echo "Current URL: ""$url"
echo ""
echo "Current Web Browser: $browser"
echo ""
echo ""
echo "** Press ENTER to continue with default settings **"
echo ""
echo "Enter a File Number to start at, M for menu, or X to exit:"
echo ""


read file_number

case "$file_number" in


"x" | "X")

exit && exit

;;


"m" | "M")

menu

;;


"")

file_number=18

do_once

;;


*)

do_once

;;

esac

}


menu

