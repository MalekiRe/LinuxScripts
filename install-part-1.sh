pacstrap /mnt base base-devel linux linux-firmware vim
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt /bin/bash
pacman -S networkmanager grub
y
systemctl enable NetworkManager
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
passwd
password
password
echo "malekbox" > etc/hostname 
exit
unmount -R /mnt
reboot
