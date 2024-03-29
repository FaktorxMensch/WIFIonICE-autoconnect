# WIFIonICE-autoconnect 

Automatically login to WIFIonICE when connected.

## Steps for MacOS Installation

```
cd /tmp
git clone git@github.com:FaktorxMensch/WIFIonICE-autoconnect.git 
cd WIFIonICE-autoconnect
chmod +x wifionice-autoconnect.sh
mkdir ~/.fxmdb
mv wifionice-autoconnect.sh ~/.fxmdb/
mv com.user.wifiloginscript.plist ~/Library/LaunchAgents/
sed -i '' "s/YOUR_USERNAME/$(whoami)/g" ~/Library/LaunchAgents/com.user.wifiloginscript.plist
launchctl load ~/Library/LaunchAgents/com.user.wifiloginscript.plist
cd ..
rm -rf WIFIonICE-autoconnect
```
## Steps for MacOS uninstall
```
launchctl unload ~/Library/LaunchAgents/com.user.wifiloginscript.plist
rm ~/.fxmdb/wifionice-autoconnect.sh
rmdir ~/.fxmdb
rm ~/Library/LaunchAgents/com.user.wifiloginscript.plist
```


## Steps for Linux

müsste sehr ähnlich sein, freue mich über pull requests
