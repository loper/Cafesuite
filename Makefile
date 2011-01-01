odczyt:
	java -jar Cafe.jar
dump:
	mysqldump -uroot -phackme -E -R --trigger --opt Cafesuite > backup/Cafesuite_`date +%d_%m_%y`.sql
