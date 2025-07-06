#!/bin/bash
echo "📦 Enter your Django project name:"
read pname

# Create root folder & cd
mkdir $pname && cd $pname
echo -e "\e[32m✅ Project Root Created!\e[0m"

# Virtualenv
python3 -m venv venv
source venv/bin/activate

# Installing Django
pip install django
version=$(django-admin --version)
echo -e "\e[32m✅ Django Installed Successfully! Version: $version\e[0m"

# Start Django engine for this project
django-admin startproject config_files .

# Creating template folder & landing page
# Purpose: It’s the central controller of your whole project.
mkdir -p templates
touch templates/index.html
#config_files/
#├── __init__.py            # Marks this directory as a Python package
#├── asgi.py                # ASGI entry point (for async servers)
#├── settings.py            # 🔧 Main project settings (DB, installed apps, etc.)
#├── urls.py                # 🌐 Global URL routing
#└── wsgi.py                # WSGI entry point (for production servers)

# Create app module
echo "📦 Enter your App module name:"
read aname
python manage.py startapp $aname
#app/
#├── __init__.py         # Marks this as a Python package
#├── admin.py            # Registers models to Django admin panel
#├── apps.py             # App configuration class (used in settings)
#├── migrations/         # Auto-generated DB migration files
#│   └── __init__.py     # Makes migrations a package
#├── models.py           # Define DB schema here
#├── tests.py            # Write unit tests for this app
#└── views.py            # Handle web requests and return responses
echo -e "\e[32m✅ Virtual environment created and activated!\e[0m"
echo -e "\e[32m✅ Django engine started, config files and project structure generated inside: config_files\e[0m"
echo -e "\e[32m✅ $aname module is created and its required files are generated inside: app/\e[0m"
