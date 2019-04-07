# Build inside the docker container
cd compile
make PLATFORM=arm-rpi
mkdir sdcard
wget https://github.com/raspberrypi/firmware/raw/master/boot/bootcode.bin -O sdcard/bootcode.bin 
wget https://github.com/raspberrypi/firmware/raw/master/boot/start.elf -O sdcard/start.elf
cp xinu.boot sdcard/kernel.img