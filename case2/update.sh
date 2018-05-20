#! /bin/bash


#mysql --protocol=tcp -P3309  -uroot -proot123 < create.sql

diff /etc/passwd /home/lyr/case_2/passwd_backup -y --suppress-common-lines|grep \< |cut -f1 > passwd_add.tmp

echo "LOAD DATA LOCAL INFILE 'passwd_add.tmp' into table password FIELDS TERMINATED BY ':' "|mysql --protocol=tcp --port=3309 -uroot -proot123 case2_database

\cp -f /etc/passwd /home/lyr/case_2/passwd_backup



