!/bin/bash
file="/dev/nvme0n1"
if [ -f "$file" ]
then
        lspci
        nvme list
        echo "$file found."
        echo "$file found 1"
        echo "$file found 2"

else
        i2cdetect -l
        i2cdetect -r -y 7
        i2cset -f -y 7 0x72 0x00 0xFF
        i2cdump -y 7 0x53
        i2cset -f -y 7 0x72 0x00 0x00
        echo "$file not   found."
        i2cset -f -y 7 0x71 0x00 0x02
        i2cdump -y 7 0x53  > nvme_ssd1.log
        i2cset -f -y 7 0x71 0x00 0x00
        echo "$file not 2 found."
        echo "$file not 3 found."
fi
