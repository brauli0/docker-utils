TOKEN="<token>"
CHAT_ID="@<chat_id>"

TEXT="
Machine: `echo $HOSTNAME`
   --- Access ---
`last -s -7days`
   --- Updates ---
`apt update &>/dev/null && apt list --upgradeable`
   --- Filesystem ---
`df -h`
"

curl -s \
-X POST \
https://api.telegram.org/bot$TOKEN/sendMessage \
-d text="$TEXT" \
-d chat_id=$CHAT_ID