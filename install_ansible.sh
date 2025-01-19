#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt-get update -y

# Install software-properties-common (for adding PPAs)
echo "Installing software-properties-common..."
sudo apt-get install -y software-properties-common

# Add the Ansible PPA (Personal Package Archive)
echo "Adding Ansible PPA..."
sudo apt-add-repository --yes --update ppa:ansible/ansible

# Install Ansible
echo "Installing Ansible..."
sudo apt-get install -y ansible

# Verify the installation
echo "Verifying installation..."
ansible --version

echo "Ansible installation complete!"
