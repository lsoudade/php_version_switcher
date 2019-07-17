# php_version_switcher
Bash script to quickly and easily switch PHP version (apache & commande line)

1) Install different versions of PHP
2) Usage


# Install different versions of PHP:

sudo apt install python-software-properties
sudo add-apt-repository ppa:ondrej/php


# Usage:
./switchphp.sh 5.6            
./switchphp.sh 7.3
      
          
      
You can create a symlink in your /usr/bin:       
sudo ln -s path/to/switchphp.sh /usr/bin/switchphp
       
To directly call:     
switchphp 7.3
