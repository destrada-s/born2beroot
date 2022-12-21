#!/bin/bash

#all system info
ARCH=$(uname -a)
#searches text then shows n of lines
PCPU=$(grep 'physical id' /proc/cpuinfo | uniq | wc -l)
VCPU=$(grep processor /proc/cpuinfo | uniq | wc -l)

#free shows the Ram  space, then grep looks for mem and $2 is the next word 
RAM_TOTAL=$(free -h | grep Mem | awk '{print $2}')
RAM_USED=$(free -h | grep Mem | awk '{print $3}')
RAM_PERC=$(free -k | grep Mem | awk '{printf("%.2f%%"), $3 / $2 * 100}')

#df shows the space of the disk -h print sizeis in powers of 1024 and total shows the total space then we get in order the total used and perc
DISK_TOTAL=$(df -h --total | grep total | awk '{print $2}')
DISK_USED=$(df -h --total | grep total | awk '{print $3}')
DISK_PERC=$(df -k --total | grep total | awk '{print $5}')

#tep shows the linux proceses with b it batches the info until n iteration so only 1 time so it can be collected then it
#greps the CPU to calculate the load 
CPU_LOAD=$(top -bn1 | grep '^%Cpu' | xargs | awk '{printf("%.1f%%"), $2 + $4}')

#who displays a list of users who are currently logged into the computer and with -b it tells last system boot
#then we print the 3 and the 4 so it only appears date and hour
LAST_BOOT=$(who -b | awk '{print($3 " " $4)}')

#looks if we are using logical volume managment and gives yes or no 
LVM=$(if [ $(lsblk | grep lvm | wc -l) -eq 0 ]; then echo no; else echo yes; fi)
TCP=$(grep TCP /proc/net/sockstat | awk '{print $3}')
USER_LOG=$(who | wc -l)

#Shows system hostname and -I all network addresses of the host
IP_ADDR=$(hostname -I | awk '{print $1}')
MAC_ADDR=$(ip link show | grep link/ether | awk '{print $2}')
SUDO_LOG=$(grep COMMAND /var/log/sudo/sudo.log | wc -l)

# command-line utility that displays a message on the terminals of all logged-in users
wall "
       ------------------------------------------------
       Architecture    : $ARCH
       Physical CPUs   : $PCPU
       Virtual CPUs    : $VCPU
       Memory Usage    : $RAM_USED/$RAM_TOTAL ($RAM_PERC)
       Disk Usage      : $DISK_USED/$DISK_TOTAL ($DISK_PERC)
       CPU Load        : $CPU_LOAD
       Last Boot       : $LAST_BOOT
       LVM use         : $LVM
       TCP Connections : $TCP established
       Users logged    : $USER_LOG
       Network         : $IP_ADDR ($MAC_ADDR)
       Sudo            : $SUDO_LOG commands used
       ------------------------------------------------"