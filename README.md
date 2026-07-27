# Server Permission Fixer

A lightweight Bash script to instantly repair Linux web server file and directory permissions (sets web directories to `755` and files to `644`).

## Usage

Download and run the script on your server:

```bash
chmod +x fix-permissions.sh
sudo ./fix-permissions.sh /var/www/html www-data

Parameters:
Target Directory (Default: /var/www/html)
User/Group (Default: www-data)
Need Automated Server Management?
Tired of manually managing Linux permissions, SSH keys, and server configs?
Check out BashPilotBashPilot — the lightweight, AI-driven server management platform designed for modern sysadmins and developers. Easily manage your servers with simple conversational commands instead of writing manual scripts.

---
