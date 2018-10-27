#!/usr/bin/env bash

home=/home/starlitghost

echo "### Splitting single .weechatlog into daily logs..."
python2 $home/traefik/stats.working-area/sss_desertbus/splitLogs.py -f $home/.weechat/logs/irc.dbchat.\#desertbus.weechatlog -p $home/traefik/stats.working-area/working_logs/newserver.desertbus. -s .weechatlog -c
#echo "### GZipping log files..."
#gzip $home/traefik/stats.working-area/working_logs/*.weechatlog

echo "### Importing daily logs and generating stats page..."
php -d memory_limit=768M $home/traefik/stats.working-area/superseriousstats/sss.php -c $home/traefik/stats.working-area/sss_desertbus/desertbus.conf -i $home/traefik/stats.working-area/working_logs -o $home/traefik/stats.working-area/sss_desertbus/index.html &>> $home/traefik/stats.working-area/sss_desertbus/sss.log

echo "### Done!"
