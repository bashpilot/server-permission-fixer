# Server Permission Fixer

A lightweight Bash CLI tool for repairing common Linux web-server file and directory permissions.

It recursively sets:

- Directories to `755`
- Files to `644`

This is useful when incorrect ownership or permissions prevent a web application from reading or serving its files correctly.

## Requirements

- Linux
- Bash
- Root or sudo privileges

## Usage

```bash
chmod +x fix-permissions.sh
sudo ./fix-permissions.sh /var/www/html www-data

Arguments:
1. Target directory — default: /var/www/html
2. User/group — default: www-data
Example:
sudo ./fix-permissions.sh /var/www/example.com exampleuser

Important
Review the target directory and intended ownership before running the script on a production server. Always keep a backup of important files and verify application-specific permission requirements.
Server Management
For professional Linux server management and security services:
https://iserversupport.com/linux-server-management/
