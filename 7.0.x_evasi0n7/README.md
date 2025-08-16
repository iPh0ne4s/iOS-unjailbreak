## Usage
- `7.0.x_evasi0n7.sh` is supposed to be executed in normal mode
- Uninstall as many packages in cydia as possible but keep OpenSSH, install it if previously not installed
- Use [Legacy-iOS-Kit](https://github.com/LukeZGD/Legacy-iOS-Kit) to SSH into device (Data Management, Connect to SSH)
- Use FileZilla to access device, default is sftp://127.0.0.1, root, alpine, 6414
- Replace `/System/Library/Lockdown/Services.plist` and `/private/etc/fstab` respectively with `Services.plist` and `fstab` here
- Copy `7.0.x_evasi0n7.sh` to device, in my case it is copied to /private/var/tmp, set 777 permission
- Run `/private/var/tmp/*.sh` (or whatever the path is) in Legacy-iOS-Kit's terminal
- Do not erase the device unless everything is done correctly and the device is activatable (FMI off, working baseband)