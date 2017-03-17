sudo apt-get update
sudo apt-get -y --force-yes dist-upgrade
sudo apt-get -y --force-yes install apt-transport-https

# Add the twolife.be repository.
sudo bash -c 'cat << EOF > /etc/apt/sources.list.d/twolife.list
# Raspbian Jessie (stable)
deb https://twolife.be/raspbian/ jessie main qt
deb-src https://twolife.be/raspbian/ jessie main qt
EOF'

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 2578B775
sudo apt-get update
sudo apt-get install -y qt5-default
sudo cp /opt/vc/lib/libGLESv2.so /opt/vc/lib/libGLESv2.so.bak
sudo cp /opt/vc/lib/libEGL.so /usr/lib/arm-linux-gnueabihf/libEGL.so.bak

sudo mv /opt/vc/lib/libGLESv2.so /opt/vc/lib/libGLESv2.so.2
sudo mv /opt/vc/lib/libEGL.so /usr/lib/arm-linux-gnueabihf/libEGL.so.1
sudo ldconfig

sudo cat << EOF >> /etc/profile.d/qt5.sh
export QT_SELECT=5
export QT_QPA_PLATFORM=eglfs
#export LD_LIBRARY_PATH=/opt/vc/lib
EOF

chmod +x /etc/profile.d/qt5.sh
