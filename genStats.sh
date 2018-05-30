#!/usr/bin/env bash

home=/home/starlitghost

echo "### Splitting single .weechatlog into daily logs..."
python2 $home/stats_gen/sss_desertbus/splitLogs.py -f $home/.weechat/logs/irc.dbchat.\#desertbus.weechatlog -p $home/stats_gen/working_logs/newserver.desertbus. -s .weechatlog -c
#echo "### GZipping log files..."
#gzip $home/stats_gen/working_logs/*.weechatlog

echo "### Importing daily logs and generating stats page..."
php -d memory_limit=768M $home/stats_gen/superseriousstats/sss.php -c $home/stats_gen/sss_desertbus/desertbus.conf -i $home/stats_gen/working_logs -o /var/www/stats.dbcommunity.org/index.html &>> $home/stats_gen/sss_desertbus/sss.log

echo "### Done!"
