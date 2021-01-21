#!/bin/bash
set -x
#Ensure /tmp configured
#echo "tmpfs /tmp tmpfs defaults,rw,nosuid,nodev,noexec,relatime 0 0" >>/etc/fstab

#1.3.1 Ensure AIDE is installed
#yum install aide -y;
#aide --init & ;
#mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz;

#1.3.2 Ensure filesystem integrity is regularly checked
echo "0 5 * * * /usr/sbin/aide --check" >>/var/spool/cron/root

#1.4.1 Ensure permissions on bootloader config are configured
chown root:root /boot/grub2/grub.cfg;
chmod og-rwx /boot/grub2/grub.cfg;

#1.5.1 Ensure core dumps are restricted
echo "* hard core 0" >>/etc/security/limits.conf ;
echo "fs.suid_dumpable = 0" >> /etc/sysctl.conf ;
sysctl -w fs.suid_dumpable=0 ;

#1.5.2 Ensure address space layout randomization (ASLR) is enabled
echo "kernel.randomize_va_space = 2" >> /etc/sysctl.conf
sysctl -w kernel.randomize_va_space=2

#1.7.1.1 Ensure message of the day is configured properly
>/etc/motd ;

#1.7.1.2 Ensure local login warning banner is configured properly
echo "Authorized uses only. All activity may be monitored and reported." > /etc/issue;

#1.7.1.3 Ensure remote login warning banner is configured properly
# echo "Authorized uses only. All activity may be monitored and reported." > /etc/issue.net;

#2.1.2 Ensure X Window System is not installed
#yum -y remove xorg-x11*;

#3.1.1 Ensure IP forwarding is disabled
#echo "net.ipv4.ip_forward = 0" >> /etc/sysctl.conf ;
#echo "net.ipv6.conf.all.forwarding = 0" >>/etc/sysctl.conf ;
#sysctl -w net.ipv4.ip_forward=0;
#sysctl -w net.ipv6.conf.all.forwarding=0;
#sysctl -w net.ipv4.route.flush=1;
#sysctl -w net.ipv6.route.flush=1;

#3.1.2 Ensure packet redirect sending is disabled
echo "net.ipv4.conf.all.send_redirects = 0" >>/etc/sysctl.conf ;
echo "0net.ipv4.conf.default.send_redirects = 0" >>/etc/sysctl.conf 
sysctl -w net.ipv4.conf.all.send_redirects=0;
sysctl -w net.ipv4.conf.default.send_redirects=0;
sysctl -w net.ipv4.route.flush=1;

#3.2.1 Ensure source routed packets are not accepted
echo "net.ipv4.conf.all.accept_source_route = 0" >>/etc/sysctl.conf ;
echo "net.ipv4.conf.default.accept_source_route = 0" >>/etc/sysctl.conf ;
echo "net.ipv6.conf.all.accept_source_route = 0" >>/etc/sysctl.conf ;
echo "net.ipv6.conf.default.accept_source_route = 0 ">>/etc/sysctl.conf ;
sysctl -w net.ipv4.conf.all.accept_source_route=0;
sysctl -w net.ipv4.conf.default.accept_source_route=0;
sysctl -w net.ipv6.conf.all.accept_source_route=0;
sysctl -w net.ipv6.conf.default.accept_source_route=0;
sysctl -w net.ipv4.route.flush=1;
sysctl -w net.ipv6.route.flush=1;

#3.2.2 Ensure ICMP redirects are not accepted
echo "net.ipv4.conf.all.accept_redirects = 0 " >>/etc/sysctl.conf ;
echo "net.ipv4.conf.default.accept_redirects = 0" >>/etc/sysctl.conf ;
echo "net.ipv6.conf.all.accept_redirects = 0 "  >>/etc/sysctl.conf ;
echo "net.ipv6.conf.default.accept_redirects = 0"  >>/etc/sysctl.conf ;
sysctl -w net.ipv4.conf.all.accept_redirects=0; 
sysctl -w net.ipv4.conf.default.accept_redirects=0;
sysctl -w net.ipv6.conf.all.accept_redirects=0;
sysctl -w net.ipv6.conf.default.accept_redirects=0;
sysctl -w net.ipv4.route.flush=1 ;
sysctl -w net.ipv6.route.flush=1;

#3.2.3 Ensure secure ICMP redirects are not accepted
echo "net.ipv4.conf.all.secure_redirects = 0 ">>/etc/sysctl.conf ;
echo "net.ipv4.conf.default.secure_redirects = 0" >>/etc/sysctl.conf ;
sysctl -w net.ipv4.conf.all.secure_redirects=0;
sysctl -w net.ipv4.conf.default.secure_redirects=0;
sysctl -w net.ipv4.route.flush=1;

#3.2.4 Ensure suspicious packets are logged
echo "net.ipv4.conf.all.log_martians = 1" >>/etc/sysctl.conf ;
echo "net.ipv4.conf.default.log_martians = 1" >>/etc/sysctl.conf ;
sysctl -w net.ipv4.conf.all.log_martians=1;
sysctl -w net.ipv4.conf.default.log_martians=1;
sysctl -w net.ipv4.route.flush=1;

#3.2.5 Ensure broadcast ICMP requests are ignored
echo "net.ipv4.icmp_echo_ignore_broadcasts = 1" >>/etc/sysctl.conf ;
sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1;
sysctl -w net.ipv4.route.flush=1;

#3.2.6 Ensure bogus ICMP responses are ignored
echo "net.ipv4.icmp_ignore_bogus_error_responses = 1" >>/etc/sysctl.conf ;
sysctl -w net.ipv4.icmp_ignore_bogus_error_responses=1;
sysctl -w net.ipv4.route.flush=1;
#3.2.7 Ensure Reverse Path Filtering is enabled
#echo "net.ipv4.conf.all.rp_filter = 1" >>/etc/sysctl.conf ;
#echo "net.ipv4.conf.default.rp_filter = 1" >>/etc/sysctl.conf ;
#sysctl -w net.ipv4.conf.all.rp_filter=1;
#sysctl -w net.ipv4.conf.default.rp_filter=1;
#sysctl -w net.ipv4.route.flush=1;

#3.2.8 Ensure TCP SYN Cookies is enabled
#echo " net.ipv4.tcp_syncookies = 1" >>/etc/sysctl.conf ;
#sysctl -w net.ipv4.tcp_syncookies=1;
#sysctl -w net.ipv4.route.flush=1;

#3.2.9 Ensure IPv6 router advertisements are not accepted
#echo "net.ipv6.conf.all.accept_ra = 0"  >>/etc/sysctl.conf ;
#echo "net.ipv6.conf.default.accept_ra = 0" >>/etc/sysctl.conf ;
#sysctl -w net.ipv6.conf.all.accept_ra=0;
#sysctl -w net.ipv6.conf.default.accept_ra=0;
#sysctl -w net.ipv4.route.flush=1;

#3.3.3 Ensure /etc/hosts.deny is configured
#echo "ALL: ALL" >> /etc/hosts.deny;

#3.4.1 Ensure DCCP is disabled
echo "install dccp /bin/true" >>/etc/modprobe.d/CIS.conf;

#3.4.2 Ensure SCTP is disabled
echo "install sctp /bin/true" >>/etc/modprobe.d/CIS.conf;

#3.4.3 Ensure RDS is disabled
echo "install rds /bin/true" >>/etc/modprobe.d/CIS.conf;

#3.4.4 Ensure TIPC is disabled
echo "install tipc /bin/true" >>/etc/modprobe.d/CIS.conf;

#3.5.1.1 Ensure default deny firewall policy
#iptables -P INPUT DROP; 
#iptables -P OUTPUT DROP; 
#iptables -P FORWARD DROP;

#3.5.1.2 Ensure loopback traffic is configured
iptables -A INPUT -i lo -j ACCEPT; 
iptables -A OUTPUT -o lo -j ACCEPT;
#iptables -A INPUT -s 127.0.0.0/8 -j DROP;

##3.5.1.4 Ensure firewall rules exist for all open ports
# iptables -A INPUT -p tcp --dport 22 -m state --state NEW -j ACCEPT

#3.5.2.1 Ensure IPv6 default deny firewall policy
ip6tables -P INPUT DROP;

ip6tables -P OUTPUT DROP;
ip6tables -P FORWARD DROP;


#3.5.2.2 Ensure IPv6 loopback traffic is configured
ip6tables -A INPUT -i lo -j ACCEPT;
ip6tables -A OUTPUT -o lo -j ACCEPT;
ip6tables -A INPUT -s ::1 -j DROP;

#4.2.4 Ensure permissions on all logfiles are configured
find -L /var/log -type f -exec chmod g-wx,o-rwx {} +;

#4.2.1.3 Ensure rsyslog default file permissions configured
echo '$FileCreateMode 0640' >>/etc/rsyslog.conf;
echo '$FileCreateMode 0640' >>/etc/rsyslog.d/listen.conf;
echo '$FileCreateMode 0640' >>/etc/rsyslog.d/21-cloudinit.conf ;

##5.6 Ensure access to the su command is restricted

#5.1.2 Ensure permissions on /etc/crontab are configured
chown root:root /etc/crontab;
chmod og-rwx /etc/crontab;

#5.1.3 Ensure permissions on /etc/cron.hourly are configured
chown root:root /etc/cron.hourly;
chmod og-rwx /etc/cron.hourly;

#5.1.4 Ensure permissions on /etc/cron.daily are configured
chown root:root /etc/cron.daily;
chmod og-rwx /etc/cron.daily;

#5.1.5 Ensure permissions on /etc/cron.weekly are configured
chown root:root /etc/cron.weekly;
chmod og-rwx /etc/cron.weekly;

#5.1.6 Ensure permissions on /etc/cron.monthly are configured
chown root:root /etc/cron.monthly;
chmod og-rwx /etc/cron.monthly;

#5.1.7 Ensure permissions on /etc/cron.d are configured
chown root:root /etc/cron.d;
chmod og-rwx /etc/cron.d;

#5.1.8 Ensure at/cron is restricted to authorized users
rm /etc/cron.deny;
rm /etc/at.deny; 
touch /etc/cron.allow; 
touch /etc/at.allow ;
chmod og-rwx /etc/cron.allow;
chmod og-rwx /etc/at.allow;
chown root:root /etc/cron.allow;
chown root:root /etc/at.allow;

#5.2.4 Ensure SSH Protocol is set to 2
echo " Protocol 2" >>/etc/ssh/sshd_config;

#5.2.5 Ensure SSH LogLevel is appropriate
echo "LogLevel INFO" >>/etc/ssh/sshd_config;

#5.2.7 Ensure SSH MaxAuthTries is set to 4 or less
echo "MaxAuthTries 4" >>/etc/ssh/sshd_config;

#5.2.8 Ensure SSH IgnoreRhosts is enabled
echo "IgnoreRhosts yes" >>/etc/ssh/sshd_config;

#5.2.9 Ensure SSH HostbasedAuthentication is disabled
echo "HostbasedAuthentication no"  >>/etc/ssh/sshd_config;

#5.2.10 Ensure SSH root login is disabled
#echo "PermitRootLogin no" >>/etc/ssh/sshd_config;

#5.2.11 Ensure SSH PermitEmptyPasswords is disabled
echo "PermitEmptyPasswords no"  >>/etc/ssh/sshd_config;

#5.2.12 Ensure SSH PermitUserEnvironment is disabled
echo "PermitUserEnvironment no" >>/etc/ssh/sshd_config;

##5.2.13 Ensure only strong ciphers are used

##5.2.14 Ensure only strong MAC algorithms are used

##5.2.15 Ensure that strong Key Exchange algorithms are used

##5.2.16 Ensure SSH Idle Timeout Interval is configured
echo "ClientAliveInterval 300" >>/etc/ssh/sshd_config;
echo "ClientAliveCountMax 0" >>/etc/ssh/sshd_config;

#5.2.17 Ensure SSH LoginGraceTime is set to one minute or less
echo "LoginGraceTime 60" >>/etc/ssh/sshd_config;

#5.2.18 Ensure SSH access is limited
#echo "AllowUsers ec2-user@172.30.52.61" >>/etc/ssh/sshd_config;

#5.2.19 Ensure SSH warning banner is configured
echo "Banner /etc/issue.net" >>/etc/ssh/sshd_config;

#5.3.1 Ensure password creation requirements are configured
echo "password requisite pam_pwquality.so try_first_pass retry=3" >>/etc/pam.d/password-auth;
echo "password requisite pam_pwquality.so try_first_pass retry=3" >>/etc/pam.d/system-auth;
echo "minlen = 14" >>/etc/security/pwquality.conf;
echo "dcredit =-1" >>/etc/security/pwquality.conf;
echo "ucredit = -1 " >>/etc/security/pwquality.conf;
echo "ocredit = -1" >>/etc/security/pwquality.conf;
echo "lcredit = -1" >>/etc/security/pwquality.conf;

#5.3.2 Ensure lockout for failed password attempts is configured

echo "auth required pam_faillock.so preauth audit silent deny=5 unlock_time=900 " >>/etc/pam.d/password-auth;
echo "auth [success=1 default=bad] pam_unix.so " >>/etc/pam.d/password-auth;
echo "auth [default=die] pam_faillock.so authfail audit deny=5 unlock_time=900 " >>/etc/pam.d/password-auth;
echo "auth sufficient pam_faillock.so authsucc audit deny=5 unlock_time=900 " >>/etc/pam.d/password-auth;

echo "auth required pam_faillock.so preauth audit silent deny=5 unlock_time=900 " >>/etc/pam.d/system-auth;
echo "auth [success=1 default=bad] pam_unix.so " >>/etc/pam.d/system-auth;
echo "auth [default=die] pam_faillock.so authfail audit deny=5 unlock_time=900 " >>/etc/pam.d/system-auth;
echo "auth sufficient pam_faillock.so authsucc audit deny=5 unlock_time=900 " >>/etc/pam.d/system-auth;

#5.3.3 Ensure password reuse is limited
echo "password sufficient pam_unix.so remember=5"  >>/etc/pam.d/password-auth;
echo "password sufficient pam_unix.so remember=5"  >>/etc/pam.d/system-auth;

##5.4.2 Ensure system accounts are non-login

#5.4.4 Ensure default user umask is 027 or more restrictive
sed -i -r 's/umask 022/umask 027/' /etc/bashrc;
sed -i -r 's/umask 022/umask 027/' /etc/profile;

#5.4.1.1 Ensure password expiration is 365 days or less
sed -i -r 's/PASS_MAX_DAYS   99999/PASS_MAX_DAYS 90/' /etc/login.defs;

#5.4.1.2 Ensure minimum days between password changes is 7 or more
sed -i -r 's/PASS_MIN_DAYS   0/PASS_MIN_DAYS   7/' /etc/login.defs;

##5.4.1.4 Ensure inactive password lock is 30 days or less

##level2
##1.1.1.1 Ensure mounting of cramfs filesystems is disabled
echo "install cramfs /bin/true" >>/etc/modprobe.d/cramfs.conf;
rmmod cramfs;

#1.1.1.2 Ensure mounting of hfs filesystems is disabled
echo "install hfs /bin/true" >>/etc/modprobe.d/hfs.conf;
rmmod hfs;

#1.1.1.3 Ensure mounting of hfsplus filesystems is disabled
echo "install hfsplus /bin/true " >>/etc/modprobe.d/hfsplus.conf;
rmmod hfsplus;

#1.1.1.4 Ensure mounting of squashfs filesystems is disabled
echo "install squashfs /bin/true" >>/etc/modprobe.d/squashfs.conf;
rmmod squashfs;

#1.1.1.5 Ensure mounting of udf filesystems is disabled
echo "install udf /bin/true" >>/etc/modprobe.d/udf.conf;
rmmod udf;

##1.6.1.2 Ensure the SELinux state is enforcing
##1.6.1.3 Ensure SELinux policy is configured

#3.6 Disable IPv6
echo 'GRUB_CMDLINE_LINUX="ipv6.disable=1"' >>/etc/default/grub;
grub2-mkconfig -o /boot/grub2/grub.cfg;

#4.1.3 Ensure auditing for processes that start prior to auditd is enabled
echo 'GRUB_CMDLINE_LINUX="audit=1"' >>/etc/default/grub;
grub2-mkconfig -o /boot/grub2/grub.cfg;

#4.1.4 Ensure events that modify date and time information are collected
echo "-a always,exit -F arch=b64 -S adjtimex -S settimeofday -k time-change ">>/etc/audit/rules.d/audit.rules;
echo "-a always,exit -F arch=b32 -S adjtimex -S settimeofday -S stime -k time-change ">>/etc/audit/rules.d/audit.rules;
echo "-a always,exit -F arch=b64 -S clock_settime -k time-change ">>/etc/audit/rules.d/audit.rules;
echo "-a always,exit -F arch=b32 -S clock_settime -k time-change ">>/etc/audit/rules.d/audit.rules;
echo "-w /etc/localtime -p wa -k time-change">>/etc/audit/audit.rules;

#4.1.5 Ensure events that modify user/group information are collect
echo "-w /etc/group -p wa -k identity ">>/etc/audit/rules.d/audit.rules;
echo "-w /etc/passwd -p wa -k identity ">>/etc/audit/rules.d/audit.rules;
echo "-w /etc/gshadow -p wa -k identity ">>/etc/audit/rules.d/audit.rules;
echo "-w /etc/shadow -p wa -k identity ">>/etc/audit/rules.d/audit.rules;
echo "-w /etc/security/opasswd -p wa -k identity " >>/etc/audit/rules.d/audit.rules;

#4.1.6 Ensure events that modify the system's network environment are collected
echo "-a always,exit -F arch=b64 -S sethostname -S setdomainname -k system-locale ">>/etc/audit/rules.d/audit.rules;
echo "-a always,exit -F arch=b32 -S sethostname -S setdomainname -k system-locale " >>/etc/audit/rules.d/audit.rules;
echo "-w /etc/issue -p wa -k system-locale " >>/etc/audit/rules.d/audit.rules;
echo "-w /etc/issue.net -p wa -k system-locale " >>/etc/audit/rules.d/audit.rules;
echo "-w /etc/hosts -p wa -k system-locale " >>/etc/audit/rules.d/audit.rules;
echo "-w /etc/sysconfig/network -p wa -k system-locale " >>/etc/audit/rules.d/audit.rules;

#4.1.7 Ensure events that modify the system's Mandatory Access Controls are collected
echo "-w /etc/selinux/ -p wa -k MAC-policy" >>/etc/audit/rules.d/audit.rules;

#4.1.8 Ensure login and logout events are collected
echo "-w /var/log/lastlog -p wa -k logins " >>/etc/audit/rules.d/audit.rules;
echo "-w /var/run/faillock/ -p wa -k logins " >>/etc/audit/rules.d/audit.rules;

#4.1.9 Ensure session initiation information is collected
echo "-w /var/run/utmp -p wa -k session " >>/etc/audit/rules.d/audit.rules;
echo "-w /var/log/wtmp -p wa -k session " >>/etc/audit/rules.d/audit.rules;
echo "-w /var/log/btmp -p wa -k session " >>/etc/audit/rules.d/audit.rules;
#4.1.10 Ensure discretionary access control permission modification events are collected
echo "-a always,exit -F arch=b64 -S chmod -S fchmod -S fchmodat -F auid>=1000 -F auid!=4294967295 -k perm_mod " >>/etc/audit/rules.d/audit.rules;
echo "-a always,exit -F arch=b32 -S chmod -S fchmod -S fchmodat -F auid>=1000 -F auid!=4294967295 -k perm_mod " >>/etc/audit/rules.d/audit.rules;
echo "-a always,exit -F arch=b64 -S chown -S fchown -S fchownat -S lchown -F auid>=1000 -F auid!=4294967295 -k perm_mod " >>/etc/audit/rules.d/audit.rules;
echo "-a always,exit -F arch=b32 -S chown -S fchown -S fchownat -S lchown -F auid>=1000 -F auid!=4294967295 -k perm_mod ">>/etc/audit/rules.d/audit.rules;
echo "-a always,exit -F arch=b64 -S setxattr -S lsetxattr -S fsetxattr -S removexattr -S lremovexattr -S fremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod " >>/etc/audit/rules.d/audit.rules;
echo "-a always,exit -F arch=b32 -S setxattr -S lsetxattr -S fsetxattr -S removexattr -S lremovexattr -S fremovexattr -F auid>=1000 -F auid!=4294967295 -k perm_mod " >>/etc/audit/rules.d/audit.rules;

##4.1.11 Ensure unsuccessful unauthorized file access attempts are collected

#4.1.13 Ensure successful file system mounts are collected
echo "-a always,exit -F arch=b64 -S mount -F auid>=1000 -F auid!=4294967295 -k mounts " >>/etc/audit/rules.d/audit.rules;
echo "-a always,exit -F arch=b32 -S mount -F auid>=1000 -F auid!=4294967295 -k mounts " >>/etc/audit/rules.d/audit.rules;

#4.1.14 Ensure file deletion events by users are collected
echo "-a always,exit -F arch=b64 -S unlink -S unlinkat -S rename -S renameat -F auid>=1000 -F auid!=4294967295 -k delete " >>/etc/audit/rules.d/audit.rules;
echo "-a always,exit -F arch=b32 -S unlink -S unlinkat -S rename -S renameat -F auid>=1000 -F auid!=4294967295 -k delete " >>/etc/audit/rules.d/audit.rules;

#4.1.15 Ensure changes to system administration scope (sudoers) is collected
echo "-w /etc/sudoers -p wa -kscope" >>/etc/audit/rules.d/audit.rules;
echo "-w /etc/sudoers.d/ -p wa -k scope " >>/etc/audit/rules.d/audit.rules;

#4.1.16 Ensure system administrator actions (sudolog) are collected
echo "-w /var/log/sudo.log -p wa -k actions ">>/etc/audit/rules.d/audit.rules;

#4.1.17 Ensure kernel module loading and unloading is collected
echo "-w /sbin/insmod -p x -k modules-w /sbin/rmmod -p x -k modules" >>/etc/audit/rules.d/audit.rules;
echo "-w /sbin/modprobe -p x -k modules" >>/etc/audit/rules.d/audit.rules;
echo "-a always,exit -F arch=b64 -S init_module -S delete_module -k modules ">>/etc/audit/rules.d/audit.rules;

#4.1.18 Ensure the audit configuration is immutable
echo "-e 2" >>/etc/audit/rules.d/audit.rules

#4.1.1.2 Ensure system is disabled when audit logs are full
echo "space_left_action =email" >> /etc/audit/auditd.conf;
echo "action_mail_acct = root" >> /etc/audit/auditd.conf;
echo "admin_space_left_action = halt" >> /etc/audit/auditd.conf;

#4.1.1.3 Ensure audit logs are not automatically deleted
echo "max_log_file_action = keep_logs" >>/etc/audit/auditd.conf;

#4.2.4 Ensure permissions on all logfiles are configured
find -L /var/log -type f -exec chmod g-wx,o-rwx {} +;

##5.6 Ensure access to the su command is restricted

