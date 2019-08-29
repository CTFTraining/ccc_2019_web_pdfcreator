#!/bin/sh

sed -i "s/flag{96abf3d9-5a1c-4fdb-bd3a-03eb406e1a35}/$FLAG/" /var/www/site/flag.php
export FLAG=not_flag
FLAG=not_flag

rm -f /flag.sh
