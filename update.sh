#!/bin/bash
# System Update and Cleanup Script

echo "🔄 Updating system packages..."
sudo apt update -y && sudo apt upgrade -y

echo "🧹 Cleaning unnecessary files..."
sudo apt autoremove -y
sudo apt autoclean -y
sudo rm -rf /tmp/* /var/tmp/*

echo "✅ System updated and cleaned successfully!"
