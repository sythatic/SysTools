#!/bin/bash
sudo
echo "MacTools"
echo "2404"
echo

ls

echo "ID   Applet"
echo

index=0
for f in ./mactools/index/*.sh; do
    ((index++))
    applet_name=$(basename "${f%.*}")
    echo "[$index] $applet_name"
    applet[$index]="$f"
done

echo
echo "Enter an applet's ID #"

while true; do
    read -p "$  " choice
    if [[ ! ${applet[$choice]} ]]; then
        echo "[Invalid Entry]"
    else
        selected_applet="${applet[$choice]}"
        break
    fi
done

appletID=$(<"$selected_applet")
$appletID
