# Pulse Control

This script is designed to start and stop the Pulse Secure VPN client on macOS
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

WARNING: Do not run inside screen or tmux

NOTE: the path specified in the above command and the paths specified in the
bash script may not be correct for your system. It works on my mac running:

-   macOS 10.11.6, Pulse Secure 5.2.5

but YMMV. The bash script has variables for the paths so it will be easier
to modify on your system.
