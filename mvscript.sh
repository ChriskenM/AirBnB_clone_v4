#!/bin/bash

#Based on web_flask, copy: web_flask/static, web_flask/templates/100-hbnb.html, web_flask/__init__.py and web_flask/100-hbnb.py into the web_dynamic folder
#Rename 100-hbnb.py to 0-hbnb.py
#Rename 100-hbnb.html to 0-hbnb.html
#Update 0-hbnb.py to replace the existing route to /0-hbnb/


# Create the web_dynamic folder and subdirectories
mkdir -p web_dynamic
mkdir -p web_dynamic/static web_dynamic/templates web_dynamic/static/scripts

# Copy files from web_flask to web_dynamic
cp -r web_flask/static web_flask/templates/100-hbnb.html web_flask/__init__.py web_flask/100-hbnb.py web_dynamic

# Rename 100-hbnb.py to 0-hbnb.py
mv web_dynamic/100-hbnb.py web_dynamic/0-hbnb.py

# Rename 100-hbnb.html to 0-hbnb.html and move to templates folder
mv web_dynamic/100-hbnb.html web_dynamic/templates/0-hbnb.html

# Update 0-hbnb.py to replace the existing route to /0-hbnb/
sed -i 's@app.route("/")@app.route("/0-hbnb/")@g' web_dynamic/0-hbnb.py
