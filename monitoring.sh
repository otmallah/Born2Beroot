#!bin/bash
wall "
	#Architecture : $(uname -a)
	#CPU physical : $(nproc)
	#vCPU : $(cat /proc/cpuinfo | grep processor | wc -l)
	#Memory Usage: $(free -m | awk 'NR==2{printf "%s/%sMB (%.2f%%)", $3,$2,$3*100/$2 }')
	#Disk Usage : $(df -h | awk '$NF=="/"{printf "%d/%dGB (%s)", $3,$2,$5}')
	#CPU Usage : $(top -bn1 | grep %Cpu | awk '{print$2 + $4"%"}')
	#Last boot: $(who -b | awk '{print $3 " " $4}')
	#LVM use : $(lsblk | grep lvm | awk '{if ($1) {print "yes"; exit;} else {print "no"; exit;}}')
	#Connexions TCP : $(netstat -ant | grep ESTABLISHED | wc -l) ESTABLISHED
	#User log: $(who | wc -l)
	#Network : IP $(hostname -I) ($(ip a | grep link/ether | awk '{print $2}'))
	#Sudo : $( journalctl _COMM=sudo | grep COMMAND | wc -l) cmd
	"
