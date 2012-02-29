import os
import MySQLdb
baza = MySQLdb.connect(host="localhost", user="loper", passwd="test", db="Cafesuite")
c = baza.cursor()
c.execute("SELECT COUNT(*) FROM czasy")
data=c.fetchall()[0][0]

ver='2.5'
prog='Cafe_v'+ver+'.jar -i '
query='java -jar '+prog+str(data+1)
res=os.system(query)
if res==0:
	os.system('mysql -uloper -phackme < inserty.sql')
	os.system('rm inserty.sql')


c.execute("SELECT suma FROM suma")
print "Saldo wynosi: %s zl" %(c.fetchall()[0][0])
baza.close()
