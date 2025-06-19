# 🧑‍💻 Linux User Management Script

This Bash script allows system administrators to easily manage Linux user accounts through the command line. It provides options for creating, deleting, resetting passwords, and listing user accounts, along with a help guide.

---

## 📦 Features

### ✅ Part 1: Account Creation (`-c` or `--create`)
- Prompts for a new username and password.
- Checks if the username already exists before creation.
- Displays a success message after account creation.

### ✅ Part 2: Account Deletion (`-d` or `--delete`)
- Prompts for the username to be deleted.
- Verifies if the account exists before attempting deletion.
- Shows a confirmation message after deletion.

### ✅ Part 3: Password Reset (`-r` or `--reset`)
- Prompts for the existing username and a new password.
- Resets the user’s password if the account exists.
- Displays a success message after resetting the password.

### ✅ Part 4: List User Accounts (`-l` or `--list`)
- Lists all user accounts along with their UIDs from the `/etc/passwd` file.
- Filters out system accounts and displays real user accounts with UID ≥ 1000.

### ✅ Part 5: Help and Usage (`-h` or `--help`)
- Displays help and usage information for the script.

---

## 🔧 Usage

```bash
bash user_management.sh [option]
