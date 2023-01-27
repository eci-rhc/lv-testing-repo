username=root
password=tiger
database=day_break
dir_path=/var/www/daybreak-test/db_backup/
mkdir -p $dir_path
chmod 777 $dir_path
add_filename=$database_`date +"%m-%d-%Y"`.sql
remove_filename=$database_`date -d "15 days ago" +"%m-%d-%Y"`.sql
mysqldump -u $username -p$password $database > $dir_path$add_filename
rm -f $dir_path$remove_filename
