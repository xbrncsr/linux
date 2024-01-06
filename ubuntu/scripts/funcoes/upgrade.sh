# funcoes/upgrade.sh
#!/bin/bash

upgrade_packages() {
    sudo apt upgrade -y && sudo apt full-upgrade -y
}
