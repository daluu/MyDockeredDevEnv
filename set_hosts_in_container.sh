cat << EOF > /etc/profile.d/dockerhost.sh
 grep dockerhost /etc/hosts || echo $(ip r ls | grep ^default | cut -d" " -f3) dockerhost >> /etc/hosts
EOF