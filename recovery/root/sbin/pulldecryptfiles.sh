#!/sbin/sh

# This pulls the files out of /vendor that are needed for decrypt
# This allows us to decrypt the device in recovery and still be
# able to unmount /vendor when we are done.

mount -t ext4 -o ro /dev/block/platform/soc/624000.ufshc/by-name/system /system

cp /system/vendor/lib64/libQSEEComAPI.so /sbin/libQSEEComAPI.so
cp /system/vendor/lib64/hw/keystore.msm8996.so /sbin/keystore.msm8996.so
cp /system/vendor/lib64/libdrmfs.so /sbin/libdrmfs.so
cp /system/vendor/lib64/libdrmtime.so /sbin/libdrmtime.so
cp /system/vendor/lib64/librpmb.so /sbin/librpmb.so
cp /system/vendor/lib64/libssd.so /sbin/libssd.so
cp /system/vendor/lib64/libdiag.so /sbin/libdiag.so

umount /system

mkdir -p /system/vendor/lib64/hw
cp /sbin/keystore.msm8996.so /system/vendor/lib64/hw/keystore.msm8996.so
