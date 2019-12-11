/Users/joe/Library/Android/sdk/emulator/emulator -avd Nexus_10_API_25 &
sleep 2
adb shell am start -a android.intent.action.VIEW -d "http://www.google.ca"