This script is designed to start and stop the Pulse Secure VPN client on OS x
and does not allow it to start up on login automatically unless you choose to
allow it to.

In order for this script to work properly, you will have to launch Pulse Secure
manually and allow the menu bar applet to appear. Once the applet is running,
you must then run the command:

```bash
launchctl unload -w /Library/LaunchAgents/net.pulsesecure.pulsetray.plist
```

This stops Pulse Secure running at boot. However this plist needs to be loaded
for Pulse Secure to work but only when it is running. That is the job of this
script to take care of.

NOTE: the path specified in the above command may not be correct for your
system. It works on my mac running macOS 10.11.6 with a default install of Pulse
Secure, but YMMV. The bash script has a variable for the above path so it will
be easier to modify on your system.
