#!/bin/bash

set -e

# 🧠 Initial Notice
clear
echo "🚨 Linux Security Installer Script (Ubuntu/Debian)"
echo "It's recommended to run this on a fully updated system with sudo privileges."
echo "This script will install tools for privacy, encryption, firewall, system auditing, and more."
echo
read -p "Do you want to proceed? (y/n): " confirm
if [[ $confirm != "y" && $confirm != "Y" ]]; then
  echo "❌ Installation canceled by user."
  exit 1
fi

# 🧱 System Update
sudo apt update && sudo apt upgrade -y

# 🔥 Firewall Tools
sudo apt install -y ufw gufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

# 🔍 System Auditing Tools
sudo apt install -y lynis chkrootkit rkhunter tiger

# 🔐 Encryption Tools
sudo apt install -y veracrypt gnupg ecryptfs-utils

# 🧱 Sandboxing Tools
sudo apt install -y firejail flatpak snapd apparmor-utils

# 🧽 Privacy & Cleaning Tools
sudo apt install -y torbrowser-launcher mat2 bleachbit

# 🌐 Network Security Tools
sudo apt install -y nmap wireshark fail2ban snort suricata psad

# 🔑 Password Managers
sudo apt install -y keepassxc pass

# 📶 VPN Clients
sudo apt install -y openvpn wireguard

# 🧾 Activity Monitoring
sudo apt install -y auditd logwatch sysdig

# 🧼 Remove Privacy-Invasive Packages
sudo apt remove -y popularity-contest apport whoopsie zeitgeist

# 🔄 Update Security Rules
sudo rkhunter --update && sudo rkhunter --propupd

echo
echo "✅ Security tools installed successfully!"
echo "Please review UFW, Lynis, and Firejail settings to further customize your system."
