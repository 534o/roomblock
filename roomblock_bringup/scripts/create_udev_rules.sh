#!/bin/bash

echo "remap the device serial port(ttyUSBX) to /dev/roomba"
echo "roomba usb connection as /dev/roomba, check it using the command : ls -l /dev|grep ttyUSB"
echo "start copy roomba.rules to  /etc/udev/rules.d/"
echo "`rospack find roomblock_bringup`/scripts/roomba.rules"
sudo cp `rospack find roomblock_bringup`/scripts/roomba.rules  /etc/udev/rules.d

echo "remap the device serial port(ttyUSBX) to  rplidar"
echo "rplidar usb connection as /dev/rplidar , check it using the command : ls -l /dev|grep ttyUSB"
echo "start copy rplidar.rules to  /etc/udev/rules.d/"
echo "`rospack find roomblock_bringup`/scripts/rplidar.rules"
sudo cp `rospack find roomblock_bringup`/scripts/rplidar.rules  /etc/udev/rules.d
echo " "
echo "Restarting udev"
echo ""
sudo service udev reload
sudo service udev restart
echo "finish "
