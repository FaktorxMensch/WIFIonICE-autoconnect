# WIFIonICE-autoconnect 

Automatically login to WIFIonICE when connected.

## Steps for MacOS

1. move `wifionice-autoconnect.sh` somewhere and run `chmod +x FILEPATH`
2. move `com.user.wifiloginscript.plist` to `~/Library/LaunchAgents/`
3. `launchctl load ~/Library/LaunchAgents/com.user.wifiloginscript.plist`
4. enjoy

## Steps for Linux

müsste sehr ähnlich sein, freue mich über pull requests
