# PicoFlashMac
Shell script wrapper for upgrading the firmware on a [Picobrew Zymatic](https://www.picobrew.com/Store/products/zymatic.cshtml) from a Mac

### Usage

- Request the Arduino flashing tools from [Picobrew support](mailto:info@picobrew.com) (I don't think they're actually any different than you can download straight from [Arduino](https://www.arduino.cc/en/main/software) or get from [homebrew](http://brewformulas.org/Avrdude) but I haven't bother to actually confirm for myself)
- Download this script to your PicoFlashMac directory that contains the Arduino tools.
- Download the latest firmware from https://www.picobrew.com/members/software/zymatic/Firmware.cshtml (requires account).
- Copy the .hex file to the same directory this script resides in.
- `./flash.sh`
- Also supports passing in the name of the .hex file to use for flashing as the first argument to the script.



TODO:

- Confirm if avrdude from homebrew is all that is needed for tools dependency
- Detect avrdude automatically on path, or allow specifying path as parameter.
