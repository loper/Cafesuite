odczyt:
	java -jar Cafe_v2.1.jar
dump:
	mysqldump -uroot -phackme -E -R --trigger --opt Cafesuite > backup/Cafesuite_`date +%d_%m_%y`.sql
push:
	mysql -uloper -phackme < inserty.sql
	rm inserty.sql
insert:
	echo "SELECT COUNT(*) FROM czasy" | mysql -uloper -phackme Cafesuite | awk 'NR==2' | xargs java -jar Cafe_v2.1.jar -i
	mysql -uloper -phackme < inserty.sql
	rm inserty.sql
 

