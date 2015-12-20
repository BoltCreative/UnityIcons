
# will create 3 copies of the current Applications/Unity folder and rename the binaries to unique names

if [ $# -eq 0 ]
  then
    echo "No arguments supplied: please enter version you want to make copies for"
    exit
fi

echo "making copies of version: $1"

cp -R /Applications/Unity /Applications/Unity$1x1
cp -R /Applications/Unity /Applications/Unity$1x2
cp -R /Applications/Unity /Applications/Unity$1x3

mv /Applications/Unity$1x1/Unity.app /Applications/Unity$1x1/Unity$1x1.app
mv /Applications/Unity$1x2/Unity.app /Applications/Unity$1x2/Unity$1x2.app
mv /Applications/Unity$1x3/Unity.app /Applications/Unity$1x3/Unity$1x3.app




