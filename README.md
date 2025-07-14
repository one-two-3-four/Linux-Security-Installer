# Linux Security Installer

A comprehensive script to install security and privacy tools for Ubuntu/Debian systems.

##  Features:
- System update and upgrade
- Enable and configure UFW firewall
- Install vulnerability scanners (Lynis, Rkhunter, etc.)
- Install encryption tools (GnuPG, VeraCrypt, eCryptfs)
- Install sandboxing tools (Firejail, Flatpak)
- Install privacy tools (Tor Browser, MAT2, BleachBit)
- Install network security tools (Wireshark, Nmap, Fail2Ban, etc.)
- Remove privacy-invasive default packages

---

## Usage:
1. install
```
git clone https://github.com/one-two-3-four/Linux-Security-Installer/
```
2. Enter Dir
```
cd Linux-Security-Installer
```
3. mod
```
chmod +x ins.sh
```

4. Run
```
./ins.sh
```

---

## Security Notes:
- Run the script with sudo privileges
- Some tools may require manual configuration post-install (e.g., Snort, Firejail profiles)
- Review UFW and Lynis configurations for optimal results

---

## License:
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author has
dedicated any and all copyright interest in the software to the public
domain. The software is provided "as is", without warranty of any kind,
express or implied.

For more information, please refer to <https://github.com/one-two-3-four/>
