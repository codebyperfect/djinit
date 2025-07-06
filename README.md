# ⚙️ djinit — Django CLI Project Initializer & Server Manager
![Python](https://img.shields.io/badge/python-3.6%2B-blue)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Made with ❤️ by codebyperfect](https://img.shields.io/badge/Made%20with-%E2%9D%A4%EF%B8%8F%20by%20codebyperfect-001f3f)

⚡ Instantly create a ready-to-run Django project with one script — virtualenv, app, structure &amp; live server.

---
**djinit** is a lightweight bash-based CLI tool that automates Django project setup and server management — ideal for both beginners and advanced developers. Create a new Django app, spin up the server, and manage it with ease — all from your terminal.

---

## 🚀 Features

- 🔧 One-click Django project creation
- 🧱 Auto virtual environment setup
- 📦 Installs latest Django version
- 🧠 App module generator
- 🌐 Starts the Django server in background
- ✅ Opens browser automatically
- 🔄 Checks and kills previous server (if any)
- 🧪 Clean CLI output with color-coded feedback

---

## 📁 File Structure
```
djinit/
├── build_project.sh # Initializes a new Django project
├── on_server.sh # Starts the development server (background)
├── off_server.sh # Stops the server running on port 8000
└── README.md # Documentation
```

---
## 💡 Usage Instructions

### 1. 🔧 Create a New Django Project
- Prompts for project and app names
- Sets up virtual environment
- Installs Django
- Initializes project and app
- Optionally runs server on port 8000

**Run the script**

```bash
bash build_project.sh
```
- Enter project name & project module name on prompt
```
📦 Enter your Django project name:
project1
✅ Project Root Created!
✅ Virtual environment created and activated!
✅ Django Installed Successfully! Version: 4.2.23
✅ Django engine started inside: config_files
📦 Enter your App module name:
app1
✅ Module 'app1' created inside the project.
```
---

### 2. 🚀 Start Server from Existing Project
- Lists all available project folders
- Prompts for folder name
- Kills any existing process on port 8000
- Starts the Django development server
- Waits for the server to fully start
- Opens the app in default browser

**Run the script**
```bash
bash on_server.sh
```
- Enter project name on prompt
```
📦 Enter Project name you want to start the server with: project1
⚠️ Port 8000 already in use. Killing PID: 16733
✅ Old server stopped.
⏳ Waiting for server to start...
✅ Server started for project p1 in background with PID: 17537
🌐 Check Browser with Link: http://localhost:8000

```

### 3. ⛔ Stop the Running Server
- Finds and kills Django process on port 8000

```bash
bash off_server.sh
```


### ✅ Requirements
- Python 3.6+
- Bash terminal
- Linux environment (tested on Rocky Linux, Ubuntu) lsof, nc, xdg-open must be available (default in most distros)

# Author
## Md Nabil Hossain
Computer Engineer | Linux & Python Enthusiast
- Email: mdnabil.cse@gmail.com
- GitHub: [codebyperfect](https://github.com/codebyperfect)
- Portfolio: Coming Soon
---

## License
This project is licensed under the [MIT License](LICENSE). See the LICENSE file for details.
