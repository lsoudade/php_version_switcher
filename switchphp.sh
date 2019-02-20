#!/bin/bash

if [ "$#" -ne 1 ]; then

  echo -e "\n##############################"
  echo -e "## Switch PHP version       ##"
  echo -e "## Author: Lorraine Soudade ##"
  echo -e "##############################\n"
  echo -e "# Usage:"
  echo -e "switchphp 7.3\n"
  echo -e "# PHP versions installed:"
  echo -e "$(ls /etc/php)"

else

  if [ -d "/etc/php/$1" ]; then

    {
    for vers in $(ls /etc/php); do
      sudo a2dismod "php$vers"
    done

    sudo a2enmod "php$1"
    sudo systemctl restart apache2

    #command line
    sudo update-alternatives --set php "/usr/bin/php$1"
    } &> /dev/null # no command output

    echo -e "\nPHP version now changed for php$1 (apache & command line)"
    echo -e "Try php -v\n"

  else
    echo -e "#ERROR: you must specify php version => switchphp 7.3\n"
    echo -e "# PHP versions installed:"
    echo -e "$(ls /etc/php)"
  fi

fi


