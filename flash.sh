#!/bin/bash
USB="$(ls /dev/tty.usbmodem*)"

# optionally pass in hex file name if desired
if [ -z "$1" ]; then
	FIRM="$(ls Zymatic*.hex | head -n 1)"
else
	FIRM="$1"	
fi

if [[ -z "$FIRM" || ! -r "$FIRM" ]]; then
	echo "No firmware found"
    exit 1
else
    echo -e "\n### Flashing firmware file $FIRM ###\n"

    ./Resources/hardware/tools/avr/bin/avrdude \
        -C ./Resources/hardware/tools/avr/etc/avrdude.conf \
        -p atmega1284p \
        -c arduino \
        -P$USB \
        -b 115200 \
        -D \
        -U flash:w:$FIRM
fi
