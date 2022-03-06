# OS DEVELOPMENT

## Documentation

- https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf

- **NASM** - https://www.nasm.us/
- **Bochs** - https://bochs.sourceforge.io/
- **MinGW** - https://sourceforge.net/projects/mingw/

## Description

### Bochs

In this folder you will find the **bochsrc.bxrc** file which handles the bochs configuration

### NASM

In the **NASM** folder you will find different examples which show assembler code explaining it functionality.

You can take a better explanation out of where I took it, Nick Blundell's book _Writing a Simple Operating System — from Scratch_. I left the link to the pdf in the documentation section.

Also I left a _makefile_ to clean older binaries, create them, take a look at memory dump and also to deploy it into the _os-env_ folder.

#### Makefile

##### Windows

Place yourself at the directory of one of the NASM example folders, and try one of these commands.

- _make_ - Compiles the asm code into binaries. Generates a boot_sect.bin file.
- _make dump_ - Make a memory dump of the boot_sect.bin file. If the file doesn't exist it will throw an error
- _make to_os_ - Copies the boot_sect.bin file to the os-env directory
- _make deploy_ - Generates the binaries and copies them into the os-env directory.

### os-env

This folder contains both the bochs config file and the binaries to load into the BIOS.

#### Try it

In order to try it, you must have **nasm** installed to compile the binaries and **bochs** in order to use it correctly. Also you must have and **od** ( octal dump) to make the memory dump. You can find them inside the MinGW binaries inside the msys folder. Add these to the path to use them with the cmd.
