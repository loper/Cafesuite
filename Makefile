odczyt:
	java -jar Cafe_v2.1.jar
dump:
	mysqldump -uroot -phackme -E -R --trigger --opt Cafesuite > backup/Cafesuite_`date +%d_%m_%y`.sql
insert:
	java -jar Cafe_v2.1.jar -i
push:
	mysql -uloper -phackme < inserty.sql
	rm inserty.sql
select:
	echo "SELECT MAX(data) FROM czasy" | mysql -phackme Cafesuite

