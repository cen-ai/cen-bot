#! /bin/sh

cd $(dirname $0)

#clear

if [[ -z "${PYTHONPATH}" ]]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python3 -m programy.clients.events.console.client --config ../../config/config.mysql.yaml --cformat yaml --logging ../../config/logging.yaml

