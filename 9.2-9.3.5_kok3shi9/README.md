## Usage
Generally only one of these two scripts needs to be executed
### 9.2-9.3.5_kok3shi9_normal.sh
- `9.2-9.3.5_kok3shi9_normal.sh` is supposed to be executed in normal mode
- Uninstall as many packages in cydia as possible but keep OpenSSH, install it if previously not installed
- Use [Legacy-iOS-Kit](https://github.com/LukeZGD/Legacy-iOS-Kit) to SSH into device (Data Management, Connect to SSH)
- Use FileZilla to access device, default is sftp://127.0.0.1, root, alpine, 6414
- Copy `9.2-9.3.5_kok3shi9_normal.sh` to device, in my case it is copied to /private/var/tmp, set 777 permission
- Run `/private/var/tmp/*.sh` (or whatever the path is) in Legacy-iOS-Kit's terminal
- If the device is activatable (FMI off, working baseband), it is recommended to erase device afterwards
### 9.2-9.3.5_kok3shi9_ramdisk.sh
- `9.2-9.3.5_kok3shi9_ramdisk.sh` is supposed to be executed in SSH ramdisk mode
- Uninstall as many packages in cydia as possible
- Use [Legacy-iOS-Kit](https://github.com/LukeZGD/Legacy-iOS-Kit) or [SSHRD_Script](https://github.com/verygenericname/SSHRD_Script) to boot SSH ramdisk and SSH into device
- Run `/sbin/mount_hfs /dev/disk0s1s1 /mnt1` to mount system partition
- Use FileZilla to access device, default is sftp://127.0.0.1, root, alpine, 6414. Change 6414 to 2222 if using SSHRD_Script
- Copy `9.2-9.3.5_kok3shi9_ramdisk.sh` to device, in my case it is copied to /mnt1, set 777 permission
- Run `/mnt1/*.sh` (or whatever the path is) in Legacy-iOS-Kit's or SSHRD_Script's terminal
- Run `/sbin/reboot` to reboot
- If the device is activatable (FMI off, working baseband), it is recommended to erase device afterwards
