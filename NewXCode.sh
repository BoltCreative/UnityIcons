
# defaults write /Applications/Unity5.1x1/Unity5.1x1.app/Contents/Info.plist CFBundleName -string 'Unity5.1x1'
# defaults write /Applications/Unity5.1x2/Unity5.1x2.app/Contents/Info.plist CFBundleName -string 'Unity5.1x2'
# defaults write /Applications/Unity5.1x3/Unity5.1x3.app/Contents/Info.plist CFBundleName -string 'Unity5.1x3'

UUID=$(defaults read /Applications/Xcode.app/Contents/Info.plist DVTPlugInCompatibilityUUID)
echo Found XCode UUID = $UUID

defaults write /Applications/Unity5.1x1/Unity5.1x1.app/Contents/PlaybackEngines/iOSSupport/Tools/OSX/Unity4XC.xcplugin/Contents/Info.plist DVTPlugInCompatibilityUUIDs -array-add "<string>$UUID</string>"
plutil -convert xml1 /Applications/Unity5.1x1/Unity5.1x1.app/Contents/PlaybackEngines/iOSSupport/Tools/OSX/Unity4XC.xcplugin/Contents/Info.plist

defaults write /Applications/Unity5.1x2/Unity5.1x2.app/Contents/PlaybackEngines/iOSSupport/Tools/OSX/Unity4XC.xcplugin/Contents/Info.plist DVTPlugInCompatibilityUUIDs -array-add "<string>$UUID</string>"
plutil -convert xml1 /Applications/Unity5.1x2/Unity5.1x2.app/Contents/PlaybackEngines/iOSSupport/Tools/OSX/Unity4XC.xcplugin/Contents/Info.plist

defaults write /Applications/Unity5.1x3/Unity5.1x3.app/Contents/PlaybackEngines/iOSSupport/Tools/OSX/Unity4XC.xcplugin/Contents/Info.plist DVTPlugInCompatibilityUUIDs -array-add "<string>$UUID</string>"
plutil -convert xml1 /Applications/Unity5.1x3/Unity5.1x3.app/Contents/PlaybackEngines/iOSSupport/Tools/OSX/Unity4XC.xcplugin/Contents/Info.plist

defaults write /Applications/Unity5.2.2/Unity.app/Contents/PlaybackEngines/iOSSupport/Tools/OSX/Unity4XC.xcplugin/Contents/Info.plist DVTPlugInCompatibilityUUIDs -array-add "<string>$UUID</string>"
plutil -convert xml1 /Applications/Unity5.2.2/Unity.app/Contents/PlaybackEngines/iOSSupport/Tools/OSX/Unity4XC.xcplugin/Contents/Info.plist


echo Fuckf2ce | sudo -S chmod a+rw /Applications/Unity5.3/PlaybackEngines/iOSSupport/Tools/OSX/Unity4XC.xcplugin/Contents/Info.plist 
sudo defaults write /Applications/Unity5.3/PlaybackEngines/iOSSupport/Tools/OSX/Unity4XC.xcplugin/Contents/Info.plist DVTPlugInCompatibilityUUIDs -array-add "<string>$UUID</string>"
sudo plutil -convert xml1 /Applications/Unity5.3/PlaybackEngines/iOSSupport/Tools/OSX/Unity4XC.xcplugin/Contents/Info.plist
sudo -S chmod a+rw /Applications/Unity5.3/PlaybackEngines/iOSSupport/Tools/OSX/Unity4XC.xcplugin/Contents/Info.plist
 
##defaults read /Applications/Xcode.app/Contents/version.plist
