# funcoes/resolucao.sh
#!/bin/bash

resolve_broken_packages() {
    sudo apt --fix-broken install -y ; sudo dpkg --configure -a ; sudo apt-get install -f -y
}
