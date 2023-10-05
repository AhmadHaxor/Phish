# STD CYBER HEKER

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            exit 1
        fi
    fi
}

echo -n "\                     /
    \                          /
   \                            /
    \ [ STD CYBER HEKER ]    /
     \  [  Panglima1Team  ]  /
      \                        /
         \    👁️   +    👁️  /
                   _"
echo -en "\e[36m ENTER URL=:\e[0m"
read phish
url_checker $phish
sleep 1
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -en "\e[36mhttps://himyworld.com\e[0m"
echo -n ' paste:'
read mask
url_checker $mask
echo -en "\e[36mcreate name url~>\e[0m "
read words
if [[ -z "$words" ]]; then
final=$mask@$shorter
exit
fi
if [[ "$words" =~ " " ]]; then
final=$mask@$shorter
exit
fi
echo -en "\e[36mdone:\e[0m"
final=$mask-$words@$shorter
echo -e "URL:\e[36m${final} \e[0m\n"



