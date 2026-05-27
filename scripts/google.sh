#!/run/current-system/sw/bin/bash

query="$*"

xdg-open "https://www.google.com/search?q=${query// /+}"
