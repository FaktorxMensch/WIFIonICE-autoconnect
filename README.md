# WIFIonICE-autoconnect 

Automatically login to WIFIonICE when connected.

## Steps for MacOS

```
chmod +x wifionice-autoconnect.sh
mkdir ~/.fxmdb
mv wifionice-autoconnect.sh ~/.fxmdb/
mv com.user.wifiloginscript.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/com.user.wifiloginscript.plist
```

rename YOUR_USERNAME to your username in ~/Library/LaunchAgents/com.user.wifiloginscript.plist

## Steps for Linux

müsste sehr ähnlich sein, freue mich über pull requests
