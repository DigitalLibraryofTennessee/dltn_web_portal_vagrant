#!/usr/bin/env bash

cd /home/vagrant || exit
if [ ! -d /home/vagrant/dltn_web_portal ]; then
    echo "Cloning DLTN Web Portal Repository"
    git clone https://github.com/DigitalLibraryofTennessee/dltn_web_portal
    echo "Setting up virtual environment"
    sudo apt install -y virtualenv
    virtualenv -p python3 .dltn_env
    source .dltn_env/bin/activate
    echo "Installing required packages"
    cd /home/vagrant/dltn_web_portal
    pip install -r requirements.txt
else
    echo "Updating DLTN Web Portal"
    cd dltn_web_portal
    git pull origin master
    echo "Enabling virtual environment."
    source /home/vagrant/.dltn_env/bin/activate
    echo "Updating required packages"
    pip install -r requirements.txt
fi

echo "Launching web server"
python run.py
