#!/bin/bash



sudo cat << EOF >> /etc/profile.d/mr_base.sh
export EDITOR=emacs
EOF

chmod +x /etc/profile.d/mr_base.sh

