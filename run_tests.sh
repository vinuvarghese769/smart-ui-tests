#!/bin/bash
source venv/bin/activate
robot -d results tests/
chmod +x run_tests.sh
