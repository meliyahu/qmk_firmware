#!/bin/bash
env CFLAGS="-Wno-error=deprecated" make ergodox_infinity:mosheh:flash $@
