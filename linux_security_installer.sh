#!/bin/bash

set -e

# 🧠 التنبيه الأولي
clear
echo "🚨 سكربت تثبيت أدوات الحماية على Linux (Ubuntu/Debian)"
echo "يُنصح بتشغيله على نظام محدث وبصلاحيات sudo"
echo "سيتم تثبيت أدوات الخصوصية، التشفير، الجدار الناري، فحص النظام، وأكثر"
echo
read -p "هل ترغب في المتابعة؟ (y/n): " confirm
if [[ $confirm != "y" && $confirm != "Y" ]]; then
  echo "❌ تم الإلغاء من قبل المستخدم."
  exit 1
fi

# 🧱 تحديث النظام أولاً
sudo apt update && sudo apt upgrade -y

# 🔥 أدوات الجدار الناري
sudo apt install -y ufw gufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

# 🔍 أدوات فحص النظام
sudo apt install -y lynis chkrootkit rkhunter tiger

# 🔐 أدوات التشفير
sudo apt install -y veracrypt gnupg ecryptfs-utils

# 🧱 أدوات العزل
sudo apt install -y firejail flatpak snapd apparmor-utils

# 🧽 أدوات الخصوصية والتنظيف
sudo apt install -y torbrowser-launcher mat2 bleachbit

# 🌐 أدوات الشبكة والأمان
sudo apt install -y nmap wireshark fail2ban snort suricata psad

# 🔑 إدارة كلمات المرور
sudo apt install -y keepassxc pass

# 📶 VPN
sudo apt install -y openvpn wireguard

# 🧾 مراقبة الأنشطة
sudo apt install -y auditd logwatch sysdig

# 🧼 إزالة البرامج التي تضر بالخصوصية
sudo apt remove -y popularity-contest apport whoopsie zeitgeist

# 🔄 تحديث القواعد الأمنية
sudo rkhunter --update && sudo rkhunter --propupd

echo
echo "✅ تم تثبيت الأدوات الأمنية بنجاح!"
echo "يرجى مراجعة UFW و Lynis و Firejail بعد الاستخدام لتخصيص الإعدادات حسب احتياجك."
