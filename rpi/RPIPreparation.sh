PASSWORD="12341234"
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get clean
sudo apt-get install rpi-update
sudo rpi-update
sudo apt-get install -y ntpdate
sudo cp /usr/share/zoneinfo/Europe/Rome /etc/localtime
sudo service ntp start
sudo ntpd -gq
sudo service ntp stop
sudo apt-get install -y emacs-nox build-essential
sudo apt-get install -y subversion
sudo apt-get install -y tree lsof nmap
sudo apt-get install -y git
sudo apt-get install -y git cmake libglm-dev
sudo apt-get install -y screen
sudo echo -e "${PASSWORD}\n${PASSWORD}" | sudo passwd pi
sudo apt-get install -y minicom
sudo apt-get install -y exfat-fuse exfat-utils
sudo apt-get install -y pv
sudo apt-get install -y samba-common smbclient samba-common-bin smbclient  cifs-utils
sudo apt-get install -y curlftpfs
sudo apt-get install -y automake autoconf libtool
sudo apt-get install -y libglib2.0-0 libglib2.0-dev libfuse-dev libcurl4-gnutls-dev
sudo apt-get install -y mono-devel
