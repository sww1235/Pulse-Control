#! /bin/bash

PlistPath=/Library/LaunchAgents/net.pulsesecure.pulsetray.plist
AppPath=/Applications/Pulse\ Secure.app/Contents/MacOS/Pulse\ Secure

echo "loading plist"

launchctl load -w $PlistPath

echo "starting Pulse Secure, be sure to exit gui using command Q or quit from"
echo "the application menu as ^C will only kill this script"

# execute application in background
$AppPath &

# get PID of last process
PID=$!

# wait for process to end
wait $PID

echo "Application has successfully exited. Unloading plist"

launchctl unload -w $PlistPath
