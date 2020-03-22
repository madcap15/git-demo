#!/bin/sh


#url.txt - file with name of files list from site
cat url.txt | cut -d' ' -f1 > url
cat repodata.txt | cut -d' ' -f1 > repodata/url
sleep 5
echo "New files was created"
link_files = "https:\/\/repo.zabbix.com\/zabbix\/"
link_repodata = "https:\/\/repo.zabbix.com\/zabbix\/repo\/"

sed -i "zabbix/s/^/$link_files/" url
sed -i "s/^/$link_repodata/" repodata/url
echo "==============="
wget -i url
wget -i repodata/url
