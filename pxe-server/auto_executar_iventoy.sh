#!/bin/bash

#
# RESOLVENDO PERMISSÕES DO SCRIPT
# chmod 777 $HOME/iventoy-1.0.19/auto_executar_iventoy.sh

#
# crontab -e
# @reboot $HOME/iventoy-1.0.19/auto_executar_iventoy.sh


cd $HOME/iventoy-1.0.19/
sudo ./iventoy.sh -R start

