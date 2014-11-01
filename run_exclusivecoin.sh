#!/bin/sh
SERVICE='python ./run_p2pool.py --net exclusivecoin'

if ps ax | grep -v grep | grep "$SERVICE" > /dev/null
then
        echo "$SERVICE is already running!"
else
        screen -m -S screenexcl python ./run_p2pool.py --net exclusivecoin --give-author 0 --disable-upnp -f 1 -a EXThJy3cNhwdUxPXLD6n9PMrVFBWYtWjTR

	wait
fi
