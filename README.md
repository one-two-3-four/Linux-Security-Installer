Linux Security Installer For ubuntu & Debian
# Linux Security Installer

📦 A comprehensive script to install security and privacy tools for Ubuntu/Debian systems.

## ✅ Features:
- System update and upgrade
- Enable and configure UFW firewall
- Install vulnerability scanners (Lynis, Rkhunter, etc.)
- Install encryption tools (GnuPG, VeraCrypt, eCryptfs)
- Install sandboxing tools (Firejail, Flatpak)
- Install privacy tools (Tor Browser, MAT2, BleachBit)
- Install network security tools (Wireshark, Nmap, Fail2Ban, etc.)
- Remove privacy-invasive default packages

---

## ⚙️ Usage:

1. Open your terminal
2. Create the script file:
```bash
nano install-security.sh
```
3. Paste the script contents into the file
4. Save and exit: `Ctrl + O`, then `Enter`, then `Ctrl + X`
5. Make it executable:
```bash
chmod +x install-security.sh
```
6. Run the script:
```bash
./install-security.sh
```

---

## 🛡️ Security Notes:
- Run the script with sudo privileges
- Some tools may require manual configuration post-install (e.g., Snort, Firejail profiles)
- Review UFW and Lynis configurations for optimal results

---

## 🧪 Optional (Future Enhancements):
- Add interactive (Y/N) options per tool
- Create a graphical interface using `zenity` or `whiptail`

---

## 📜 License:
This script is open source and intended for personal and educational use only.
