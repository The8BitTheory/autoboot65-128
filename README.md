# Autoboot on C128 and MEGA65

The folders in this project contain the following programs:

## 128-load
Based on the 128BOOT64 program from the October 1986 issue of Computer Gazette. https://www.atarimagazines.com/compute/issue77/Boot_64_For_128.php

This generates pseudo cartridge-code at $8000 and then hands over control to the C64 mode via GO64.

The cartridge code at $8000 just fills screen and keyboard buffer with all required commands to do a regular LOAD of the specified program.


The program in this folder adds a small menu to that, and the assembly code generation is now allowing for variable filenames.


This approach might be fine if you run into incompatibilities with the more sophisticated approaches. And a fastload-modified C64, like with JiffyDOS, might load programs this way just as fast.

## 128-hypra
Like the approach in 128-load. With the difference that it adds an arrow-up and asterisk to the filename that's to be loaded.

This way, Hypra-Load v2.1 can be used to accelerate loading of programs.

## 128-burst
This approach loads the program in question via BLOAD, allowing for Burst-Mode to take effect.
After that, GO64 mode is entered and an UNNEW (or OLD) is basically executed to allow the loaded program to be run.
This approach still relies on the $8000 pseudo-cartridge code, so the maximum loadable size for programs is about 25kB.

## 128-bank1
Like the previous approach, but BLOAD now loads the program into BANK 1.
Before going to C64 mode, switching the BANK is done.
Therefore, the GO64 commands is replaced by a ML routine.

$8000 pseudo-cartridge code is still required. The maximum loadable size for programs is about 30kB

## 128-bank1soft

This is the ultimate approach.

BLOAD goes to BANK1, but the reset routine into GO64 mode is now much softer. All memory stays in place and control of the program execution is not lost at any point in time.

This way, the $8000 pseudo-cartridge approach becomes obsolete, and no memory restrictions on loaded file-size apply.

# Other required ressources

## MacBootMake
To create bootable disks on the C128, I recommend Marco Baye's MacBootMake.

https://github.com/marcobaye/bootmake128


## C64RUN
The magic program that allows to seamlessly switch from C65 into C64 mode on the MEGA65 can be found on the MEGA65 Filehost.

The name is C64RUN and it was made available by kibo.

https://files.mega65.org?id=907ffee0-082b-4e72-ad36-1ce8926cb18c

