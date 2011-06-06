PROGRAM=Cafe_v2.5

insert:
	python inserter.py
odczyt:
	java -jar $(PROGRAM).jar
dump:
	mysqldump -uroot -phackme -E -R --trigger --opt Cafesuite > backup/Cafesuite_`date +%d_%m_%y`.sql
push:
	mysql -uloper -phackme < inserty.sql
	rm inserty.sql
suma:
	echo "SELECT suma FROM suma" | mysql -uloper -phackme Cafesuite

