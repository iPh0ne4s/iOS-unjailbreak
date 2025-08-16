## Usage
- `8.1.3-8.4_TaiG.sh` is supposed to be executed in normal mode
- Uninstall as many packages in cydia as possible but keep OpenSSH, install it if previously not installed
- Use [Legacy-iOS-Kit](https://github.com/LukeZGD/Legacy-iOS-Kit) to SSH into device (Data Management, Connect to SSH)
- Use FileZilla to access device, default is sftp://127.0.0.1, root, alpine, 6414
- Check the size of `/private/etc/fstab`, if it's smaller than 80 bytes (generally 67), replace with `fstab` in 8.x/fstab80 folder, if it's larger than 80 bytes (generally 129), replace with `fstab` in 8.x/fstab155 folder
- Replace `/usr/libexec/installd` and `/usr/libexec/lsd` respectively with `installd` and `lsd` in 8.x/installd and 8.x/lsd folders of device's version, set 0755 permission for both
- Copy `8.1.3-8.4_TaiG.sh` to device, in my case it is copied to /private/var/tmp, set 777 permission
- Run `/private/var/tmp/*.sh` (or whatever the path is) in Legacy-iOS-Kit's terminal
- Do not erase the device unless everything is done correctly and the device is activatable (FMI off, working baseband)