#! /bin/sh

cd $(dirname $0)

#clear
export PYTHONPATH=../../program-y/src:
if [[ -z "${PYTHONPATH}" ]]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python3 -m utils.braintree_viewer.viewer $1
