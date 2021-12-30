#!/system/bin/sh

MODAPPPATH="/data/user/0/com.sudomaker.gpdxpmods"
SYSNODESPATH="$MODAPPPATH/files/sys_nodes"

until [[ -d $MODAPPPATH ]]
do
	sleep 2
done

mkdir -p $SYSNODESPATH
chmod 777 $SYSNODESPATH

bindmount() {
	BINDSOURCE=$1
	BINDTARGET=$2

	if [[ -d $BINDSOURCE ]]; then
		mkdir -p $BINDTARGET
	elif [[ -f $BINDSOURCE ]]; then
		touch $BINDTARGET
	fi

	chmod 777 $BINDTARGET

	mount -o rw,bind $BINDSOURCE $BINDTARGET
}

bindmount "/sys/class/fan_ctrl/fan_ctrl" "$SYSNODESPATH/fan_ctrl"
bindmount "/sys/devices/platform/joystick_adcjs/right_id" "$SYSNODESPATH/right_id"

for i in $(seq 0 6); do
	bindmount "/sys/devices/virtual/thermal/thermal_zone$i/temp" "$SYSNODESPATH/temp$i"
done

bindfs -p777 $SYSNODESPATH $SYSNODESPATH