#!/bin/bash
sshfs -o allow_other -o Compression=no -o Ciphers=arcfour -o cache=yes -o kernel_cache -o large_read -o cache_timeout=720 -o cache_stat_timeout=720 -o cache_dir_timeout=720 -o cache_link_timeout=720 user@localhost:/home/user/local_vbox vbox_mount/ -p2222
sshfs -o allow_other -o Compression=no -o Ciphers=arcfour -o cache=yes -o kernel_cache -o large_read -o cache_timeout=720 -o cache_stat_timeout=720 -o cache_dir_timeout=720 -o cache_link_timeout=720 user@localhost:/home/user/external_vbox external_vbox_mount/ -p2222
sshfs -o allow_other -o Compression=no -o Ciphers=arcfour -o cache=yes -o kernel_cache -o large_read -o cache_timeout=720 -o cache_stat_timeout=720 -o cache_dir_timeout=720 -o cache_link_timeout=720 user@localhost:/home/user/vdd_ntfs vdd_ntfs_mount/ -p2222

