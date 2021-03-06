#!/bin/bash
source /etc/profile
#check unix
echo  "===check ulimit -n"
echo "ulimit -n" `ulimit -n`
echo "ulimit -u" `ulimit -u`

echo -e "\n===ckeck limits.conf"
egrep -v "#|^$" /etc/security/limits.conf

echo -e "\n===check 90-nproc"
egrep -v "#|^$" /etc/security/limits.d/90-nproc.conf

echo -e "\n===check sysctl socket TCP"
/sbin/sysctl net.ipv4.ip_local_port_range
/sbin/sysctl net.ipv4.tcp_fin_timeout
/sbin/sysctl net.core.somaxconn

echo -e "\n===check rc.local"
egrep -v "#|^$" /etc/rc.local

echo -e "\n===check hosts"
egrep -v "#|^$" /etc/hosts

#jdk version
echo -e "\n===check jdk version"
java -version

echo -e "\n**********华丽的分割线**********\n"
