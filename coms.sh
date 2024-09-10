echo blacklist nouveau >> /etc/modprobe.d/blacklist.conf
echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist.conf
sed -i -e "s/^[[:space:]]*nouveau[[:space:]]\+modeset[[:space:]]*=[[:space:]]*1/#nouveau modeset=1/" /etc/initramfs-tools/modules
update-initramfs -u -k all
