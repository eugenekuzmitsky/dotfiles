#!/bin/bash

followers=$(curl https://www.skool.com/kubecraft/about 2>/dev/null | grep -o '"totalMembers":[0-9]*' | sed -n -e 's/"totalMembers"://p')
echo "Paid community has $followers members."
rate=$(curl https://www.skool.com/kubecraft/about 2>/dev/null | pup '#__next > div > div.styled__DesktopLayoutRoot-sc-vae51c-3.bPHsRP > div.styled__ContentWrapper-sc-vae51c-4.Nywyq > div > div.styled__BottomRight-sc-z7hf1f-3.coeQVb > div > div > div > div.styled__AsideGroupCardContent-sc-1qg8wku-2.cZTrbt > div > div > div:nth-child(4) > div > button > span text{}' | sed -n -e 's/^.*JOIN //p')
echo "Current rate is: $rate."
