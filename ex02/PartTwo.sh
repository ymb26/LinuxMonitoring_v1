#!/bin/bash
host=$(hostname)
user=$USER
os_ver="$(system_profiler SPSoftwareDataType | grep "System Version" | awk '{printf ($3" "$4" "$5)}')"
Date="$(date +"%d %B %Y %T")"
Uptime="$(uptime | awk '{print substr($3, 1, length($3)-1)}')"
Uptime_Sec="$(sysctl -n kern.boottime | awk '{print substr($4, 1, length($4)-1)}')"
Date_s="$(date +"%s")"
x=$(($Date_s - $Uptime_Sec))
echo "	HOSTNAME = $host
	TIMEZONE =
	USER = $user
	OS = $os_ver
	DATE = $Date 
	UPTIME = $Uptime 
	UPTIME_SEC = $(($Date_s - $Uptime_Sec))
	IP = 
	MASK = 
	GATEWAY = 
	RAM_TOTAL = 
	RAM_USED = 
	RAM_FREE = 
	SPACE_ROOT = 
	SPACE_ROOT_USED =
	SPACE_ROOT_FREE = " 
