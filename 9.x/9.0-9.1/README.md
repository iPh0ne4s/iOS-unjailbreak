## Usage
- `9.0-9.1.sh` is supposed to be executed in normal mode
- Uninstall as many packages in cydia as possible but keep OpenSSH, install it if previously not installed
- Use [Legacy-iOS-Kit](https://github.com/LukeZGD/Legacy-iOS-Kit) to SSH into device (Data Management, Connect to SSH)
- Use FileZilla to access device, default is sftp://127.0.0.1, root, alpine, 6414
- Replace `/usr/libexec/installd`, `/usr/libexec/lsd`, `/usr/libexec/neagent` respectively with `installd`, `lsd`, `neagent` in 9.x/installd, 9.x/lsd, 9.x/neagent folders, set 0755 permission for all
- `/System/Library/Caches/com.apple.dyld/dyld_shared_cache_arm64` has been modified while there seems to be nothing wrong without restoring it. Being too large to upload, it can be obtained from the .ipsw file of device's model and version
- Copy `9.0-9.1.sh` to device, in my case it is copied to /private/var/tmp, set 777 permission
- Run `/private/var/tmp/*.sh` (or whatever the path is) in Legacy-iOS-Kit's terminal
- Do not erase the device unless everything is done correctly and the device is activatable (FMI off, working baseband)