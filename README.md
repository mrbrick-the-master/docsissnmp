# docsissnmp
SNMP MIBs for DOCSIS and not only

For snmptable to work you need to clone Mibs to your home folder of snmp which by default is ~/.snmp/mibs using command 
```
mrbrick@HOME:~/.snmp$ mkdir -p ~/.snmp/mibs ; cd ~/.snmp/mibs ; git clone https://github.com/mrbrick-the-master/docsissnmp ; mv -f docsissnmp/* ./
Cloning into 'docsissnmp'...
remote: Enumerating objects: 1026, done.
remote: Counting objects: 100% (183/183), done.
remote: Compressing objects: 100% (113/113), done.
remote: Total 1026 (delta 76), reused 176 (delta 69), pack-reused 843
Receiving objects: 100% (1026/1026), 6.24 MiB | 11.52 MiB/s, done.
Resolving deltas: 100% (387/387), done.
mrbrick@HOME:~/.snmp/mibs$
```
You can adjust snmp config directory to look for mibs like below - in the example directory is set to /home/mrbrick/.snmp/mibs/

```
mrbrick@HOME:~$ echo "mibs +ALL
mibdirs /home/mrbrick/.snmp/mibs/
showMibErrors 0
mibWarningLevel 0
" > ~/.snmp/snmp.conf
mrbrick@HOME:~$
```
