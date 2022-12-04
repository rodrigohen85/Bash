#!/bin/bash
servstat=$(service apache2 status)

if [[ $servstat == *"active (running)"* ]]; then
  echo $(date)" [!] SERVICO APACHE RODANDO " >> /home/web/status_apache.log
  echo "==============================================================" >> /home/web/status_apache.log
else
  service apache2 start
  echo " " >> /home/web/status_apache.log
  echo $(date) "[+] PROCESSO REINICIADO " >> /home/web/status_apache.log
  echo "==============================================================" >> /home/web/status_apache.log
fi

#OBS: Configure o script no cron
