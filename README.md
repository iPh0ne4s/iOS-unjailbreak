# Scripts to unjailbreak 64-bit iOS 7-10 devices
**Warning: There is a high chance of bootlooping, DO NOT proceed if you don't know what you are doing!**
- Always back up your data in advance
- Although these scripts successfully removed jailbreak on my devices, it is quite risky to unjailbreak in this way (for me it's because cydia eraser sucks) and there are no warranties, use at your own risk
- Pay attention to system version, jailbreak tool, device mode (normal mode or SSH ramdisk mode)
- I didn't install many packages when testing, mainly Filza, MTerminal, Springtomize. It is unlikely to work perfectly when restoring /usr/bin, /usr/lib, /usr/libexec, etc., or if you directly modified system files
  - If manually restoring rootFS, never touch /System/Library/Caches/apticket.der, /System/Library/Caches/com.apple.factorydata, /System/Library/Caches/com.apple.kernelcaches, /usr/local/standalone, /usr/standalone
- It is highly recommended to backup /dev/disk0s1s1 in advance using SSH ramdisk, in case of messing something up
  - Use [Legacy-iOS-Kit](https://github.com/LukeZGD/Legacy-iOS-Kit) or [SSHRD_Script](https://github.com/verygenericname/SSHRD_Script) to boot SSH ramdisk and SSH into device
  - Open another terminal, run `sshpass -p alpine ssh root@127.0.0.1 -p2222 -o StrictHostKeyChecking=no "dd if=/dev/disk0s1s1 bs=64k | gzip -1 -" | dd of=disk0s1s1.gz bs=64k` to dump /dev/disk0s1s1 on device. Requires sshpass installed. To restore /dev/disk0s1s1, run `dd if=disk0s1s1.gz bs=64k | sshpass -p alpine ssh root@127.0.0.1 -p2222 -o StrictHostKeyChecking=no "gzip -d | dd of=/dev/disk0s1s1 bs=64k"`
  - 2222 is the port of SSHRD_Script, while Legacy-iOS-Kit uses 6414
  - On 10.3+ there will be permission denied error, dump /dev/disk0 instead, or boot SSH ramdisk and SSH into device, run `/sbin/mount_apfs /dev/disk0s1s1 /mnt1 && snaputil -c orig-fs /mnt1` to create a rootFS snapshot. For more details, type `snaputil` in SSH ramdisk mode