# OSS_Audit_24BCE11243
# OSS Audit — Git

- **Course:** Open Source Software (NGMC)
- **Project:** OSS Capstone — Open Source Audit
- **Chosen Software:** Git
- **Repository Name:** oss-audit-24BCE10057

---

## What This Project Is About

This project is a full audit of Git — the open source version control system created by Linus Torvalds in 2005. The audit covers Git's origin story, its GPL v2 license, the philosophy behind open source, how Git lives on a Linux system, and how it compares to proprietary alternatives.

Along with the written report, this repository has five shell scripts that demonstrate practical Linux and shell scripting skills.

---

## Files in This Repository

| File | What it does |
|------|-------------|
| `script1.sh` | Prints a welcome screen with Linux system details |
| `script2.sh` | Checks if Git (or another package) is installed and describes it |
| `script3.sh` | Loops through system directories and shows size + permissions |
| `script4.sh` | Reads a log file, counts lines matching a keyword |
| `script5.sh` | Asks 3 questions, builds a personal open source statement |
| `README.md` | This file |

The project report PDF is submitted separately on the VITyarthi portal.

---

## How to Run Each Script

### Before you start — make scripts executable

Open your terminal and run this once:

```bash
chmod +x script1.sh
chmod +x script2.sh
chmod +x script3.sh
chmod +x script4.sh
chmod +x script5.sh
```

---

### Script 1 — System Identity Report

**What it does:** Shows your Linux distribution name, kernel version, logged-in user, home directory, uptime, and the OS license.

**Concepts used:** Variables, `echo`, command substitution `$()`, `if-elif-else`

**Run it:**
```bash
bash script1_system_info.sh
```

**Expected output:** A formatted system info table printed to the terminal.

**No extra dependencies needed.**

---

### Script 2 — FOSS Package Inspector

**What it does:** Checks if Git is installed on the system. Uses a `case` statement to print a description of whichever package name you pass as an argument.

**Concepts used:** `if-then-else`, `case` statement, `which`, `awk`, command-line arguments (`$1`)

**Run it:**
```bash
# Check git (default)
bash script2.sh

# Check a different package
bash script2.sh python3
bash script2.sh apache2
```

**Dependencies:** Git must be installed to see version info. Install it with:
```bash
sudo apt install git        # Ubuntu/Debian
sudo dnf install git        # Fedora
```

---

### Script 3 — Disk and Permission Auditor

**What it does:** Loops through a hardcoded list of important Linux directories (`/etc`, `/var/log`, `/usr/bin`, etc.) and prints the disk usage, owner, and permissions for each one.

**Concepts used:** `for` loop, `du -sh`, `ls -ld`, `awk`, `printf` for column formatting

**Run it:**
```bash
bash script3.sh
```

**Note:** Some directories like `/opt` may show very small sizes or be missing on minimal installs — that is normal.

**No extra dependencies needed.**

---

### Script 4 — Log File Analyzer

**What it does:** Takes a log file path and a keyword as arguments. Reads the file line by line using a `while read` loop, counts how many lines contain the keyword, and prints a summary.

**Concepts used:** `while read` loop, `if-then`, counter variables, `grep`, command-line arguments (`$1`, `$2`)

**Run it:**
```bash
# Default: looks for ERROR in /var/log/syslog
bash script4.sh

# Custom file and keyword
bash script4.sh /var/log/syslog WARNING
bash script4.sh /var/log/auth.log Failed
```

**Dependencies:** You need to have a readable log file. Common ones:
- `/var/log/syslog` — Ubuntu/Debian
- `/var/log/messages` — Fedora/CentOS
- `/var/log/auth.log` — authentication events

If you do not have any of these, create a test file:
```bash
echo "ERROR: something broke" > test.log
echo "INFO: system started" >> test.log
echo "ERROR: disk full" >> test.log
bash script4.sh test.log ERROR
```

---

### Script 5 — Open Source Manifesto Generator

**What it does:** Asks the user 3 questions interactively using the `read` command. Combines the answers into a personalized open source philosophy statement and saves it to a `.txt` file.

**Concepts used:** `read` for user input, string concatenation, writing to a file with `>`, `date` command

**Run it:**
```bash
bash script5.sh
```

The script will ask you three questions, then save a file called `manifesto_[yourusername].txt` in the same directory.

**No extra dependencies needed.**

---

## System Requirements

- Any Linux system (Ubuntu, Fedora, Debian, Arch, etc.)
- Bash shell (version 4.0 or above — run `bash --version` to check)
- Git installed (for Script 2 to show version info)
- Read access to `/var/log` (for Script 4)

---

## About Git (the audited software)

Git is a distributed version control system. It was written by Linus Torvalds in 2005 after the company that owned BitKeeper (the tool the Linux kernel team was using) revoked free access. Linus built Git in about two weeks. It is now the most widely used version control system in the world and is licensed under GPL v2.

More details are in the project report.

---

*Submitted as part of the OSS NGMC Capstone Project — VIT*
