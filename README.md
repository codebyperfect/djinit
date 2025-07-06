# ⚙️ djinit — Django Project Initializer & Server Manager
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
├── start_server.sh # Starts the development server (background)
├── stop_server.sh # Stops the server running on port 8000
└── README.md # Documentation
```

---
## 💡 Usage Instructions
- Prompts for project and app names
- Sets up virtual environment
- Installs Django
- Initializes project and app
- Optionally runs server on port 8000

### 1. 🔧 Create a New Django Project

```bash
bash build_project.sh
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

2. 🚀 Start Server from Existing Project
``bash
start_server.sh
```
- Lists all available project folders
- Prompts for folder name
- Kills any existing process on port 8000
- Starts the Django development server
- Waits for the server to fully start
- Opens the app in default browser
