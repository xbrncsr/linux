#!/bin/bash

enable_x86(){
    sudo dpkg --add-architecture i386
    echo "=====================> [ X86 HABILITADO COM SUCESSO! ]"
}

#
enable_x86