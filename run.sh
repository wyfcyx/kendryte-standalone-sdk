rm -rf build && mkdir build && cd build
cmake .. -DPROJ=$proj -DTOOLCHAIN=/opt/riscv-toolchain/bin && make && cd ..
sudo chmod -R 777 /dev/ttyUSB0
python3 kflash.py -p /dev/ttyUSB0 -b 1500000 -t build/$proj.bin

