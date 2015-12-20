
# will copy icon files to the 3 copies of your unity app folder

if [ $# -eq 0 ]
  then
    echo "No arguments supplied: please enter version you want to copy icons for"
    exit
fi

echo "copy icons for version: $1"

cp -f UnityAppIcon$1x1.icns /Applications/Unity$1x1/Unity$1x1.app/Contents/Resources/UnityAppIcon.icns
cp -f UnityAppIcon$1x2.icns /Applications/Unity$1x2/Unity$1x2.app/Contents/Resources/UnityAppIcon.icns
cp -f UnityAppIcon$1x3.icns /Applications/Unity$1x3/Unity$1x3.app/Contents/Resources/UnityAppIcon.icns


