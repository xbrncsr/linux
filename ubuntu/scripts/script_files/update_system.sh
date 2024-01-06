#!/bin/bash

# update system
update_system(){
    sudo apt clean
    sudo apt update
    sudo apt upgrade -y
}

#
update_system