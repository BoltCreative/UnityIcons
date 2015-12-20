
# will mod the plist for 3 copies of a version of unity so that they all have unique app names when running

if [ $# -eq 0 ]
  then
    echo "No arguments supplied: please enter version for the copies you want to rename"
    exit
fi

echo "setting plist names for version: $1"

defaults write /Applications/Unity$1x1/Unity$1x1.app/Contents/Info.plist CFBundleName -string "Unity$1x1"
defaults write /Applications/Unity$1x2/Unity$1x2.app/Contents/Info.plist CFBundleName -string "Unity$1x2"
defaults write /Applications/Unity$1x3/Unity$1x3.app/Contents/Info.plist CFBundleName -string "Unity$1x3"


