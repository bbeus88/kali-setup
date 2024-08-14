#!/bin/zsh

# Update the System
# ~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~--~-~-~-~-~--~-~-~-~-~--~-~-~-~-~-
echo "\n\n\n System Update"
sudo apt clean -y
sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y

# Add search cache
# ~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~--~-~-~-~-~--~-~-~-~-~--~-~-~-~-~-
# sudo apt-get-cache search kali-


# Installing PipMyKali - https://github.com/Dewalt-arch/pimpmykali
# ~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~--~-~-~-~-~--~-~-~-~-~--~-~-~-~-~-
echo "\n\n\n Installing - PimyMyKali \n"
rm -rf /opt/sys-tool-installers/pimpmykali/
git clone https://github.com/Dewalt-arch/pimpmykali /opt/sys-tool-installers/pimpmykali/
# chmod +x /opt/sys-tool-installers/pimpmykali/pimpmykali.sh
cd /opt/sys-tool-installers/pimpmykali/
sudo ./pimpmykali.sh --all


# Install Brave
# ~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~--~-~-~-~-~--~-~-~-~-~--~-~-~-~-~-
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser