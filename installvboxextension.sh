##########################################################################
# File Name: installvboxextension.sh
# To download and install vbox-extpack according to the version.
#########################################################################
#!/bin/bash
version=$(vboxmanage -v)
var1=$(echo $version | cut -d 'r' -f 1)
echo $var1
var2=$(echo $version | cut -d 'r' -f 2)
echo $var2
file="Oracle_VM_VirtualBox_Extension_Pack-$var1-$var2.vbox-extpack"
echo $file
wget https://download.virtualbox.org/virtualbox/$var1/$file -O /tmp/$file --no-check-certificate
#sudo VBoxManage extpack uninstall "Oracle VM VirtualBox Extension Pack"
sudo VBoxManage extpack install /tmp/$file --replace
