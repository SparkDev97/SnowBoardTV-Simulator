# SnowBoardTV Simulator

![SnowBoard Icon](https://i.imgur.com/du1jZL7.png)

This is SnowBoardTV, the worlds first tvOS theming engine.

## Pre-Requirements
```
- A macOS Installation
- Latest version of Xcode
- Basic knowledge of the macOS filesystem
```

## Installation
1. From the "SnowBoardTV-Simulator" folder, copy the "simject" folder to "/opt/" on the root of your macOS harddrive. This should result in a folder called "/opt/simject" containing 4 files.
2. Launch the tvOS simulator. This can be done by opening spotlight, searching for "Simulator" and opening the application. Then in the top menu bar, select "Hardware" > "Device" and then any tvOS device.
3. Drag and drop the "SnowBoardTV.app" into the simualtor window, this will install the SnowBoardTV application onto the simulator
4. Open a terminal window, drag in the "respring_simulator" file, and run it. This will respring the tvOS simulator and load simject and SnowBoardTV.
5. Open the "SnowBoardTV" application in the tvOS simulator and make a note of the 2 file paths listed at the bottom of the application. They should look something like this:

```
Preferences Path: /Users/user1/Library/Developer/CoreSimulator/Devices/A43FRF87-33A8-4321-BE43-DD3EAS7F4REC/data/Documents/data/Library/com.spark.snowboardtvprefs.plist
Theme Path: /Users/user1/Library/Developer/CoreSimulator/Devices/A43FRF87-33A8-4321-BE43-DD3EAS7F4REC/data/Documents/data/Library/Themes
```

6. Browse to the "Library" folder. (This can be done by copying the "Themes Path" removing the last "/Themes" and typing "open" followed by this path into terminal - e.g. "open /Users/user1/Library/Developer/CoreSimulator/Devices/A43FRF87-33A8-4321-BE43-DD3EAS7F4REC/data/Documents/data/Library/")
7. Copy the "Themes" directory from the "SnowBoardTV-Simulator" into this folder. This is where your themes will be stored.
8. Kill and reopen the SnowBoardTV application in the tvOS simulator
9. Re-opening the SnowBoardTV application should now show any themes in the "Themes" directory, select a theme and close the app to apply.
10. Get creative!

## Dummy Applications
You may have noticed that the tvOS simulator comes with no default applications. I have worked around this by putting together a set of "Dummy Applications" for the stock Apple TV apps. You can simply drag these from the "Dummy Applications" folder into the simulator to install them.

You can also generate your own dummy apps by going to the "Dummy App Generator" folder, changing the values in the "generator.sh" script and running it.

Note: These dummy apps have their bundle identifier suffixed by ".sim", you can ignore this as the simulator build of SnowBoardTV will handle it. This will not affect your themes on real devices, so please **do not** add ".sim" to your theme files.

## Credits
- Simject is an incredible tool for testing tweaks within the iOS Simulator available here: https://github.com/angelXwind/simject I have simply just recompiled it for the tvOS simulator

## Authors
SparkDev 2019

App Icon by Dennis D. Bednarz

## Support
For further help please contact me on Twitter (https://twitter.com/SparkDev_) or join my Discord server (https://discord.gg/aYgD69T)