## Setup
  1. git clone ...
  1. `cd qmk_firmware`
  1. `bash util/qmk_install.sh`
  1. `make git-submodule`

## ergodox ez
  1. `bash mosheh-build-flash-ergodox-ez.sh`, or
  1. `make ergodox_ez:mosheh:flash`

## ergodox infinity
  1. `bash mosheh-build-flash-ergodox-infinity.sh` (or `env CFLAGS="-Wno-error=deprecated" make ergodox_infinity:mosheh:flash`)
     (Note: on Linux we need to `sudo env...` to write to the micro controller)
  1. while that is building, plug the left half into the pc directly and put it
     into flash mode (press the reset button on the bottom of the keyboard, or
     use your RESET key in your keyboard mapping)
  1. now the left side is flashed, we'll do the right side with:
  1. `bash mosheh-build-flash-ergodox-infinity.sh MASTER=right` (or `env CFLAGS="-Wno-error=deprecated" make ergodox_infinity:mosheh:flash MASTER=right`)
  1. plug right half in directly, put it into flash mode

  Note: you can get away with flashing only the right (master) when it's just a keymap
  change.
