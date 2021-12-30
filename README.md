# GPD XP MODs

This module adds back some functionalities back from the GPD XP stock rom

## Features

1. Controller mapping fix
1. Fan control quick tile
1. Thermal monitor quick tile
1. Right module ID monitor quick tile (useless)

## Installation

1. Install Magisk
	1. Prepare a patched `boot.img`
		1. Download the [stock firmware](https://gpd.hk/gpdxpfirmware)
		1. Extract `boot.img` from the firmware zip (no need for the flashing tool)
		1. Patch it using `Magisk Manager`
		1. Copy the patched `boot.img` to somewhere else than the GPD
	1. Unlock bootloader - **This step will erase all your data on the GPD**
		1. Go to `Developer Options` and turn on `OEM unlocking`
		1. Reboot into `fastboot` with `adb reboot bootloader`
		1. Unlock with `fastboot flashing unlock` and follow the screen instructions on the GPD
		1. Reboot with `fastboot reboot bootloader`
	1. Flash the patched `boot.img` with `fastboot flash boot boot.img`
	1. Flash an empty `vbmeta.img`(you can find it in the [release page](https://github.com/ClassicOldSong/gpd-xp-mods/releases)) with `fastboot flash vbmeta vbmeta.img` - This step is vital for you to be able to boot with a custom `boot.img`
	1. If you would like to flash a custom ROM
		1. Download your favorite GSI ROM and extract the `system.img` from it, for example [DotOS](https://www.droidontime.com/devices/arm64)
		1. Flash the system partition
			1. Reboot into `fastbootd` with `adb reboot fastboot` if you've entered the system or enter recovery manually then select `fastboot mode`
			1. Wipe userdata with `fastboot -w` - **This step will erase all your data on the GPD**
			1. Flash the system.img with `fastboot flash system system.img`
	1. Reboot with `fastboot reboot`
1. Download this module as a zip from the [release page](https://github.com/ClassicOldSong/gpd-xp-mods/releases)
1. Flash it using Magisk Manager
1. Reboot and enjoy

### Finishing touches

1. Lock orientation to landscape by installing some orientation control app, for example [Rotation | Orientation Manager](https://play.google.com/store/apps/details?id=com.pranavpandey.rotation) does the job extremely well.
1. Install some touch mapping app, for example [Mantis Gamepad Pro](https://play.google.com/store/apps/details?id=app.mantispro.gamepad).
1. Install the [CrossLauncher](https://github.com/EmiyaSyahriel/CrossLauncher)

## Companion

- [MantisAutoBuddy](https://github.com/ClassicOldSong/mantis-auto-buddy) - Automatically activate MantisBuddy for [Mantis Gamepad Pro](https://play.google.com/store/apps/details?id=app.mantispro.gamepad) on boot

## Notice

- This module contains a pre-built binary of `bindfs` from [agnostic-apollo/bindfs](https://github.com/agnostic-apollo/bindfs).
- This module contains a pre-built [app](https://github.com/ClassicOldSong/GPDXPMODs-app) to add the quick tiles.

If you're uncomfortable with the blobs, you can build yourself and replace the pre-built one with your own version.

## License

CC-BY-NC-SA