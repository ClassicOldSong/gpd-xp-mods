#!/system/bin/sh

MODAPPPATH="/data/user/0/com.sudomaker.gpdxpmods"
SYSNODESPATH="$MODAPPPATH/files/sys_nodes"

umount $SYSNODESPATH

for i in $SYSNODESPATH/*; do
	umount $i
done
