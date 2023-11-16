#!/bin/sh

# Display a welcome jinnmessage
echo "Starting the Termux setup..."

# Update and upgrade the package list
echo "Updating and upgrading package lists..."
pkg update -y && pkg upgrade -y

# Install python, rust, binutils, and termux-api
echo "Installing required packages..."
pkg install -y python rust cmake binutils termux-api

# Install Python packages via pip
echo "Installing Python packages..."
pip install ruamel.yaml==0.16.12 jinja2 open-interpreter==0.1.15

# Display a completion message
echo "Setup completed successfully. You can now use Open Interpreter."
