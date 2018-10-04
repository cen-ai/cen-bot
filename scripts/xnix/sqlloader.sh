#!/usr/bin/env bash 

set -x

cd $(dirname $0)

DBAUTH=programy:password123@localhost

export PYTHONPATH=../../../program-y/src

# Categories
python3 -m programy.storage.stores.sql.loader -c --entity categories --url mysql+pymysql://$DBAUTH/programy --dir ../../storage/aiml --subdir --extension=.aiml --verbose


for i in ../../storage/dirs/*
do
	echo $i
	python3 -m programy.storage.stores.sql.loader  -c --entity $(basename $i ) --url mysql+pymysql://$DBAUTH/programy --dir $i  --extension=.txt --verbose
done

for i in ../../storage/files/*.txt
do
	echo $i
	python3 -m programy.storage.stores.sql.loader  -c --entity $(basename $i .txt) --url mysql+pymysql://$DBAUTH/programy --file $i --verbose
done


for i in ../../storage/conf/*.conf
do
	echo $i
	python3 -m programy.storage.stores.sql.loader  -c --entity $(basename $i .conf) --url mysql+pymysql://$DBAUTH/programy --file $i --verbose
done



# License Keys
python3 -m programy.storage.stores.sql.loader -c --entity licenses --url mysql+pymysql://$DBAUTH/programy --file ../../storage/conf/license.keys --verbose

# UserGroups
## python3 -m programy.storage.stores.sql.loader -c --entity usergroups --url mysql+pymysql://$DBAUTH/programy --file ../../storage/conf/usergroups.yaml --verbose

