#!/bin/bash
#Description: Centos 7 Audit and Report #Author: Felix
#Date: August 2020


#-Check if the file /hosts exist.
if [-f /etc/hosts ] then
echo "The file /hosts exists" else
echo "The file /hosts is missing"


#-What mode selinux is set to?
STATUS=$(sestatus |grep "Current mode" |awk -F":" '{print $2}') echo "The SELinux is set to $STATUS"



#-Check the UID of the user nobody.
UID=$(cat /etc/group |grep -w "nobody" |awk -F":" '{print $3}') echo "$UID is the id of the user nobody"



#-Check if the package samba is installed on the system.
sudo yum list installed |grep "samba"
if [ $? -eq 0] then
echo "The package samba is installed" else
echo "The package samba is not installed" fi
                                                                                                      
3
            #-Check if the daemon auditd is running and it is enable.
pgrep auditd
if [ $? = 0 ] then
echo "The auditd daemon is running and is enabled"
else
echo "The auditd daemon is not running and is not enabled"
fi
#-Check if the sudo tool has any logfile configured.
if [-f /var/log/sudo ]
then
echo "The sudo tool has a logfile configured"
else
echo "The sudo tool has no logfile configured"
fi


#-Check if the /etc/group file is own by the root user.
grep root /etc/group |grep "group"
if [ $? = 0 ] then
echo "The /etc/group file is own by the root user" else
echo " The /etc/group file is not own by the root user" fi


#-Check if the curl command is installed.
sudo yum list installed |grep "curl"
if [ $? -eq 0] then
echo "The curl command is installed" else
echo "The curl command is not installed" fi
                                                                                                                                 
4

#-Check if docker is installed.
sudo yum list installed |grep "docker"
if [ $? -eq 0] then
echo "The docker package is installed" else
echo "The docker package is not installed" fi


#-What is the first digit of the kernel version?
Kernel=$(uname -r |awk -F"." '{print $1}')
echo "$Kernel The first digit of the kernel version"


#-Check if the system is 64 bits or 32 bits.
Bits=$(uname -m)
echo "The system is $Bits"


#-Check if the /etc/sysconfig/network file exists.
if [-f /etc/sysconfig/network ] then
echo "The /etc/sysconfig/network file exists" else
echo "The /etc/sysconfig/network file is missing"
#-What is the hostname?
Host_name=$(hostname)
echo "$Host_name is the hostname"
#-Check the total size of the memory.
Memory=$(free -m |grep "Mem" |awk -F" " '{print $2}') echo "The total size of the memory is $Memory"
                                                                                                            
5


#-Check what linux flavor is running and the version.
LinuxFlavor=$(grep "release" |awk -F"-" '{print $2}')
echo "The Linux flavor and the version running are $LinuxFlavor"


#-Check the IP address.
IP=$(hostname -I | awk '{print $1}') echo "$IP is the IP address."


#-Check if there is a dns entry in the /etc/resolv.conf file with 8.8.8.8.
cat /etc/resolv.conf | grep "dns"
if [ $? -eq 0] then
echo "There is a dns entry in the /etc/resolv.conf file with 8.8.8.8." else
echo "There is no dns entry in the /etc/resolv.conf file with 8.8.8.8." fi


#-Date stamp.
D=$(date)
   echo "Date stamp: $D"
