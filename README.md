# smart-ui-tests
SDET Technical Exercise
Robot Framework UI tests with Selenium and Python

# Smart UI Tests using Robot Framework

This project demonstrates UI automation using Robot Framework, Selenium, and Python.

## Features
- Tests for login, product search, cart, and checkout
- Modular keyword-driven architecture
- Easily extendable for more tests or mobile (Appium)

## Review Guide

To review this project:

1. Clone the repository  
   `git clone https://github.com/vinuvarghese769/smart-ui-tests`

## Setup Instructions
Go to root folder of project
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt

## Clear cache
robot --dryrun tests/
rm -rf __pycache__/ .robotframework-*