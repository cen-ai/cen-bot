#!/bin/bash

[ -e $(dirname $0)/.program-y.rc ] && source $(dirname $0)/.program-y.rc

python3 $PYROOT/src/programy/clients/webchat/chatsrv.py --config $EXEDIR/config.yaml --cformat yaml --logging $EXEDIR/logging.yaml

