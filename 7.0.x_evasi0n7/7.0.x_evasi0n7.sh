# Tested on iPhone 5s (7.0, 7.0.4) with evasi0n7 jailbreak, run this script on normal mode
# Require manual replacement: /System/Library/Lockdown/Services.plist /private/etc/fstab

if [ -L /private/var/stash ]; then
    Applications="$(find /private/var/db/stash -maxdepth 2 -name Applications* -type d)"
    Ringtones="$(find /private/var/db/stash -maxdepth 2 -name Ringtones* -type d)"
    Wallpaper="$(find /private/var/db/stash -maxdepth 2 -name Wallpaper* -type d)"
    share="$(find /private/var/db/stash -maxdepth 2 -name share* -type d)"
else
    Applications="$(find /private/var/stash -maxdepth 2 -name Applications* -type d)"
    Ringtones="$(find /private/var/stash -maxdepth 2 -name Ringtones* -type d)"
    Wallpaper="$(find /private/var/stash -maxdepth 2 -name Wallpaper* -type d)"
    share="$(find /private/var/stash -maxdepth 2 -name share* -type d)"
fi
if [ -L /Applications ]; then
    if [ -e "$Applications" ]; then
        rm -rf /Applications; mv "$Applications" /Applications
    else
        echo "ERROR: Applications folder not found, please manually restore /Applications directory, and run the script again"
        exit
    fi
fi
if [ -L /Library/Ringtones ]; then
    if [ -e "$Ringtones" ]; then
        rm -rf /Library/Ringtones; mv "$Ringtones" /Library/Ringtones
    else
        echo "ERROR: Ringtones folder not found, please manually restore /Library/Ringtones directory, and run the script again"
        exit
    fi
fi
if [ -L /Library/Wallpaper ]; then
    if [ -e "$Wallpaper" ]; then
        rm -rf /Library/Wallpaper; mv "$Wallpaper" /Library/Wallpaper
    else
        echo "ERROR: Wallpaper folder not found, please manually restore /Library/Wallpaper directory, and run the script again"
        exit
    fi
fi
if [ -L /usr/share ]; then
    if [ -e "$share" ]; then
        rm -rf /usr/share; mv "$share" /usr/share
    else
        echo "ERROR: share folder not found, please manually restore /usr/share directory, and run the script again"
        exit
    fi
fi
cd / && rm -rf .fseventsd User boot lib mnt evasi0n7 evasi0n7-installed
cd /Applications && rm -rf Cydia.app Filza.app MTerminal.app SpringtomizeApp.app cydown.app
cd /Library && rm -rf Frameworks LaunchDaemons MobileSubstrate PreferenceBundles PreferenceLoader Switches WeeLoader
cd /System/Library && rm -rf Caches/com.apple.xpcd Caches/com.apple.dyld/enable-dylibs-to-override-cache KeyboardDictionaries LaunchDaemons/com.evad3rs.evasi0n7.untether.plist PreferenceBundles/AppList.bundle
cd /private/etc && rm -rf alternatives apt default dpkg pam.d profile profile.d rc.d ssh ssl sudoers symlibs.dylib
cd /sbin && rm -rf clri dmesg dump dumpfs dynamic_pager fstyp_msdos fstyp_ntfs fstyp_udf fstyp_ufs halt mount_cd9660 mount_devfs mount_fdesc mount_kernfs mount_null mount_procfs mount_synthfs mount_union newfs nologin quotacheck reboot restore tunefs umount
cd /usr && rm -rf games include local/bin local/lib
cd /usr/bin && rm -rf 7z 7za Filza [ apt-cache apt-cdrom apt-config apt-extracttemplates apt-ftparchive apt-get apt-key apt-mark apt-sortpkgs arch asu_inject awk base64 basename bashbug c_rehash captoinfo cfversion chcon chfn chown chsh cksum clear clutch cmp comm csplit curl curl-config cut cycc cydown cynject db_archive db_checkpoint db_codegen db_deadlock db_dump db_hotbackup db_load db_printlog db_recover db_stat db_upgrade db_verify df diff diff3 dircolors dirname dpkg dpkg-deb dpkg-divert dpkg-maintscript-helper dpkg-query dpkg-split dpkg-statoverride dpkg-trigger dselect du env expand expr factor find fmt fold funzip gawk getconf getty gpg gpg-zip gpgsplit gpgv groups gssc head hostid hostinfo id igawk infocmp infotocap install iofbres iomfsetgamma join killall ldrestart link locate login logname lzcat lzcmp lzdiff lzegrep lzfgrep lzgrep lzless lzma lzmadec lzmainfo lzmore md5sum mkfifo mktemp ncurses5-config ncursesw5-config nice nl nohup nproc nvnonce od openssl pagesize passwd paste pathchk pcre-config pcregrep pcretest pinky pr printenv printf ptx quota redeb renice reset rsync runcon sbdidlaunch sbreload scp script sdiff seq sftp sha1sum sha224sum sha256sum sha384sum sha512sum shred shuf slogin sort split ssh ssh-add ssh-agent ssh-keygen ssh-keyscan sshpass stat sudo sudoedit sum sw_vers tac tail tar tee test tic time timeout toe tput tr truncate tset tsort tty uicache uiduid uiopen unexpand uniq unlink unlzma unrar unzip unzipsfx update-alternatives updatedb uptime users vm_stat wc which who whoami xargs yes zip zipcloak zipnote zipsplit zprint
cd /usr/lib && rm -rf SmartTapPs.dylib _ncurses apr.exp apt coreutils cycript0.9 dpkg engines libapplist.dylib libapr-1.0.3.3.dylib libapr-1.0.dylib libapr-1.dylib libapr-1.la libapt-inst.dylib libapt-inst.dylib.1.1 libapt-inst.dylib.1.1.0 libapt-pkg.dylib libapt-pkg.dylib.4.6 libapt-pkg.dylib.4.6.0 libcrypto.0.9.8.dylib libcrypto.dylib libcurl.4.dylib libcurl.dylib libcurl.la libcurses.dylib libdb-4.6.dylib libdb-4.6.la libdb-4.dylib libdb.dylib libdpkg.a libdpkg.la libform.5.dylib libform.dylib libformw.5.dylib libformw.dylib libhistory.5.2.dylib libhistory.5.dylib libhistory.6.0.dylib libhistory.6.dylib libhistory.dylib liblzmadec.0.0.0.dylib liblzmadec.0.dylib liblzmadec.dylib liblzmadec.la libmenu.5.dylib libmenu.dylib libmenuw.5.dylib libmenuw.dylib libmis.dylib libncurses.5.dylib libncurses.dylib libncursesw.5.dylib libncursesw.dylib libpam.1.0.dylib libpam.1.dylib libpam.dylib libpam_misc.1.dylib libpam_misc.dylib libpamc.1.dylib libpamc.dylib libpanel.5.dylib libpanel.dylib libpanelw.5.dylib libpanelw.dylib libpcre.0.dylib libpcre.1.dylib libpcre.dylib libpcre.la libpcrecpp.0.dylib libpcrecpp.dylib libpcrecpp.la libpcreposix.0.dylib libpcreposix.dylib libpcreposix.la libprefs.dylib libreadline.5.2.dylib libreadline.5.dylib libreadline.6.0.dylib libreadline.6.dylib libreadline.dylib librocketbootstrap.dylib libssl.0.9.8.dylib libssl.dylib libst3.dylib libst3UI.dylib libsubstrate.0.dylib libsubstrate.dylib p7zip pam pkgconfig ssl terminfo xxxMobileGestalt.dylib xxxSystem.dylib
cd /usr/libexec && rm -rf cydia filza gnupg MSUnrestrictProcess _rocketd_reenable afc2d awk bigram code frcode rmt rocketd sftp-server ssh-keysign ssh-pkcs11-helper sshd-keygen-wrapper substrate sudo_noexec.dylib sudo_noexec.la vndevice
cd /usr/sbin && rm -rf ac accton chown chroot dev_mkdb edquota fdisk ioalloccount ioclasscount ioreg iostat mkfile pwd_mkdb quot quotaon repquota sshd startupfiletool sysctl update vifs vipw visudo vsdbutil zdump zic
cd /usr/share && rm -rf awk bigboss dict dpkg gnupg misc tabset terminfo
cd /bin && rm -rf bash bunzip2 bzcat bzip2 bzip2recover cat chgrp chmod chown cp date dd df dir echo egrep false fgrep grep gunzip gzexe gzip kill ln ls mkdir mknod mktemp mv ps pwd readlink rm rmdir run-parts sed sh sleep stty su sync tar touch true uname vdir zcat zcmp zdiff zegrep zfgrep zforce zgrep zless zmore znew