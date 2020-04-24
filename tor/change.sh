#!/bin/bash
check=$(curl --socks5-hostname localhost:9050 -s https://check.torproject.org > /dev/null; echo $?)
if [[ "$check" -gt 0 ]]; then
printf "\e[1;91mYou aren't using tor. Just type tor(For Termux) or service tor start\n\e[0m"
exit 1
fi
killall -HUP tor > /dev/null 2>&1

