#!/usr/bin/env bash

home=/home/tyranic-moron

echo "### Splitting single .weechatlog into daily logs..."
python2 $home/stats_gen/sss_desertbus/splitLogs.py -f $home/.weechat/logs/irc.dbchat.\#desertbus.weechatlog -p $home/stats_gen/working_logs/newserver.desertbus. -s .weechatlog -c
#echo "### GZipping log files..."
#gzip $home/stats_gen/working_logs/*.weechatlog

echo "### Importing daily logs and generating stats page..."
php -d memory_limit=512M $home/stats_gen/superseriousstats/sss.php -c $home/stats_gen/sss_desertbus/desertbus.conf -i $home/stats_gen/working_logs -o $home/public_html/sss/index.html

echo "### Done!"
