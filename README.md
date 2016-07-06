# sss_desertbus
[superseriousstats](https://github.com/tommyrot/superseriousstats/) config for the DesertBus community IRC chat

## installation
Symlink parser_weechat.php to your superseriousstats directory

`ln -s /path/to/sss_desertbus/parser_weechat.php /path/to/superseriousstats/parser_weechat.php`

Symlink vars.php to your stats website directory

`ln -s /path/to/sss_config/vars.php /path/to/sss_www/vars.php`

## running superseriousstats
Split single .weechatlog file into daily .weechatlogs

`splitLogs.py -f /path/to/.weechatlog -p /path/to/daily/logs/newserver.desertbus. -s .weechatlog`

Import new daily logs, and generate stats page

`php -d memory_limit=512M sss.php -c /path/to/sss_desertbus/desertbus.conf -i /path/to/daily/logs -o ~/path/to/sss_www/index.html`

Export nick aliases file

`php sss.php -c /path/to/sss_desertbus/desertbus.conf -e /path/to/sss_desertbus/nick_aliases.txt`

Import nick aliases file

`php sss.php -c /path/to/sss_desertbus/desertbus.conf -n /path/to/sss_desertbus/nick_aliases.txt`
