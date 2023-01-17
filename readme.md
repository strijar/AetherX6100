# Aether X6100

A project to build a Linux kernel and OS for the Xiegu X6100 without having to
copy files from the vendor's kernel.

## Building

### Building on Linux

To build on a Linux machine, just:

```shell
.\br_config.sh
cd build
make
```

And then you'll have a `sdcard.img` in the `build` directory, you can then
flash.

#### Buildroot dependencies

If you are indeed using Linux, check the pre-requesites of Buildroot
[here](https://buildroot.org/downloads/manual/manual.html#requirement).

### Building on other OSes

The recomended way of building this repo on other systems is using Docker, as
described below.

## Changing buildroot configurations

If you want to change the Buildroot configuration, first do this:

```shell
cd build
make menuconfig
```

### Changing U-Boot and Linux kernel configurations

For those you can just:

```sh
cd build
make uboot-menuconfig
# or
cd build
make linux-menuconfig
```

### Other useful recipes

If you change the `boot.cmd` file, then you have to run:

```sh
make host-uboot-tools-rebuild
make
```

[source](https://stackoverflow.com/questions/66116553/boot-scr-rebuild-in-buildroot)
