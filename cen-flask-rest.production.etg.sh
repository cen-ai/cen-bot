#! /bin/sh

[ -e $(dirname $0)/.program-y.rc ] && source $(dirname $0)/.program-y.rc
#cd $(dirname $0)
pwd

#clear

#touch /tmp/cen.log
python3 $PYROOT/src/programy/clients/restful/flask/client.py --config $EXEDIR/config.yaml --cformat yaml --logging $EXEDIR/logging.yaml 
#tail -f /tmp/cen.log



