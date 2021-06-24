#!/bin/bash
_now=$(date +"%Y%m%d")
_mysqlContainer='wp_wordpresstest_mysql'
_mysqlUser='wp_mysql_user'
_mysqlPass='wp_mysql_pass_1234'
_mysqlDBName='custom'
_directorioBackup='/tmp/sql_backup'

docker exec -ti ${_mysqlContainer} mysqldump --routines --triggers --single-transaction -KBe -u ${_mysqlUser} -p${_mysqlPass} ${_mysqlDBName} > ${_directorioBackup}/Dump-${_mysqlContainer}-${_mysqlDBName}-${_now}.sql
####
## Restaurar base de datos
####
# docker exec -ti ${_mysqlContainer} mysql -u ${_mysqlUser} -p${_mysqlPass} < file.sql
