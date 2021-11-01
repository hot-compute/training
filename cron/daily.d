# top of the hour
0 17 * * * /var/www/site/bin/move.sh

# five after the hour
5 17 * * * /var/www/site/bin/move.sh

# run once at startup
@reboot /var/www/site/bin/move.sh