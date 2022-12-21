#!/bin/bash

number=$(( $RANDOM % 100 + 1 ))

cat << "EOF"
       _,.
     ,` -.)
    '( _/'-\\-.               
   /,|`--._,-^|            ,     
   \_| |`-._/||          ,'|       
     |  `-, / |         /  /      
     |     || |        /  /       
      `r-._||/   __   /  /  
  __,-<_     )`-/  `./  /
 '  \   `---'   \   /  / 
     |           |./  /  
     /           //  /     
 \_/' \         |/  /         
  |    |   _,^-'/  /              
  |    , ``  (\/  /_        
   \,.->._    \X-=/^         
   (  /   `-._//^`  
    `Y-.____(__}              
     |     {__)           
           ()`     
EOF

sleep 1
echo "Guess a number between 1 and 100 to defeath the Virtual Warrior"

guess=0
tries=0

while [ "$guess" -ne $number ] && [ $tries -ne 10 ] ; do
        read guess
        [ "$guess" -lt $number ] && echo "Too low"
        [ "$guess" -gt $number ] && echo "Too high"
	tries=$((tries + 1))
done

if [ $tries -eq 10 ] ;
then
cat << "EOF"
 __    __                  ____                   __
/\ \  /\ \                /\  _`\   __           /\ \
\ `\`\\/'/ ___   __  __   \ \ \/\ \/\_\     __   \_\ \
 `\ `\ /' / __`\/\ \/\ \   \ \ \ \ \/\ \  /'__`\ /'_` \
   `\ \ \/\ \L\ \ \ \_\ \   \ \ \_\ \ \ \/\  __//\ \L\ \
     \ \_\ \____/\ \____/    \ \____/\ \_\ \____\ \___,_\
      \/_/\/___/  \/___/      \/___/  \/_/\/____/\/__,_ /
EOF
sleep 1
cat << "EOF"
  sSSSs   d sss   sss sssss        sSSSs     sSSSs     sSSSs   d ss    
 S     S  S           S           S     S   S     S   S     S  S   ~o  
S         S           S          S         S       S S       S S     b 
S         S sSSs      S          S         S       S S       S S     S 
S    ssSb S           S          S    ssSb S       S S       S S     P 
 S     S  S           S           S     S   S     S   S     S  S    S  
  "sss"   P sSSss     P            "sss"     "sss"     "sss"   P ss"   
EOF
else

cat << "EOF"
 __   __                                     _
 \ \ / /   ___    _  _      o O O __ __ __  (_)    _ _
  \ V /   / _ \  | +| |    o      \ V  V /  | |   | ' \
  _|_|_   \___/   \_,_|   TS__[O]  \_/\_/  _|_|_  |_||_|
_| """ |_|"""""|_|"""""| {======|_|"""""|_|"""""|_|"""""|
"`-0-0-'"`-0-0-'"`-0-0-'./o--000'"`-0-0-'"`-0-0-'"`-0-0-'
EOF

sleep 1

cat << "EOF"
   ___    _   _   _____    ___    _____    ___    _  _     ___     ___    _  _     ___               ___    ___     ___   __   __   ___     ___    _____  
  / _ \  | | | | |_   _|  / __|  |_   _|  /   \  | \| |   |   \   |_ _|  | \| |   / __|     o O O   | _ \  | _ \   / _ \  \ \ / /  | __|   / __|  |_   _| 
 | (_) | | |_| |   | |    \__ \    | |    | - |  | .` |   | |) |   | |   | .` |  | (_ |    o        |  _/  |   /  | (_) |  \ V /   | _|   | (__     | |   
  \___/   \___/   _|_|_   |___/   _|_|_   |_|_|  |_|\_|   |___/   |___|  |_|\_|   \___|   TS__[O]  _|_|_   |_|_\   \___/   _|_|_   |___|   \___|   _|_|_  
_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""| {======|_| """ |_|"""""|_|"""""|_| """ |_|"""""|_|"""""|_|"""""| 
"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'./o--000'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-' 
EOF
fi
exit 0