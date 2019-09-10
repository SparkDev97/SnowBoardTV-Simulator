: '
Generates a dummy app with the provided app name and bundle id

Default tvOS Apps:
TV - com.apple.TVWatchList
App Store - com.apple.TVAppStore
Movies - com.apple.TVMovies
TV Shows - com.apple.TVShows
Music - com.apple.TVMusic
Photos - com.apple.TVPhotos
Podcasts - com.apple.podcasts
Search - com.apple.TVSearch
Computers - com.apple.TVHomeSharing
Settings - com.apple.TVSettings
'

APPNAME="Settings"
BUNDLEID="com.apple.TVSettings"

cp -r "Dummy App.app" "$APPNAME.app"
mv "$APPNAME.app/Dummy App" "$APPNAME.app/$APPNAME"
FULLPATH=`realpath "./$APPNAME.app"`
defaults write "$FULLPATH/Info.plist" CFBundleExecutable "$APPNAME"
defaults write "$FULLPATH/Info.plist" CFBundleName "$APPNAME"
defaults write "$FULLPATH/Info.plist" CFBundleIdentifier "$BUNDLEID.sim"
mv "$FULLPATH" "../"