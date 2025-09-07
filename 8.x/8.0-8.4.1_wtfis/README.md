## Usage
- Generally only one of these two scripts needs to be executed
- `/System/Library/Caches/com.apple.dyld/dyld_shared_cache_arm64` has been modified while there seems to be nothing wrong without restoring it. Being too large to upload, it can be obtained from the .ipsw file of device's model and version
### 8.x_wtfis_normal.sh
- `8.x_wtfis_normal.sh` is supposed to be executed in normal mode
- Uninstall as many packages in cydia as possible but keep OpenSSH, install it if previously not installed
- Use [Legacy-iOS-Kit](https://github.com/LukeZGD/Legacy-iOS-Kit) to SSH into device (Data Management, Connect to SSH)
- Use FileZilla to access device, default is sftp://127.0.0.1, root, alpine, 6414
- Replace `/usr/libexec/installd` and `/usr/libexec/lsd` respectively with `installd` and `lsd` in 8.x/installd and 8.x/lsd folders of device's version, set 0755 permission for both
- Copy `8.x_wtfis_normal.sh` to device, in my case it is copied to /private/var/tmp, set 777 permission
- Run `/private/var/tmp/*.sh` (or whatever the path is) in Legacy-iOS-Kit's terminal
- Do not erase the device unless everything is done correctly and the device is activatable (FMI off, working baseband)
### 8.x_wtfis_ramdisk.sh
- `8.x_wtfis_ramdisk.sh` is supposed to be executed in SSH ramdisk mode
- Uninstall as many packages in cydia as possible
- Use [Legacy-iOS-Kit](https://github.com/LukeZGD/Legacy-iOS-Kit) or [SSHRD_Script](https://github.com/verygenericname/SSHRD_Script) to boot SSH ramdisk and SSH into device
- Run `/sbin/mount_hfs /dev/disk0s1s1 /mnt1` to mount system partition
- Use FileZilla to access device, default is sftp://127.0.0.1, root, alpine, 6414. Change 6414 to 2222 if using SSHRD_Script
- Replace `/mnt1/usr/libexec/installd` and `/mnt1/usr/libexec/lsd` respectively with `installd` and `lsd` in 8.x/installd and 8.x/lsd folders of device's version, set 0755 permission for both
- Copy `8.x_wtfis_ramdisk.sh` to device, in my case it is copied to /mnt1, set 777 permission
- Run `/mnt1/*.sh` (or whatever the path is) in Legacy-iOS-Kit's or SSHRD_Script's terminal
- Run `/sbin/reboot` to reboot
- Do not erase the device unless everything is done correctly and the device is activatable (FMI off, working baseband)