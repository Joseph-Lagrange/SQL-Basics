-- SQL select
	SELECT ������ FROM ������;
	SELECT * FROM ������;

-- SQL distinct
	SELECT DISTINCT ������ FROM ������;

-- SQL where
	SELECT ������ FROM ������ WHERE �� ����� ֵ;

-- SQL AND & OR �����
	eg:SELECT * FROM Persons WHERE (FirstName='Thomas' OR FirstName='William')
	   AND LastName='Carter'

-- SQL Order By
	eg:������ĸ˳����ʾ��˾���ƣ���������˳����ʾ˳��ţ�
	   SELECT Company, OrderNumber FROM Orders ORDER BY Company DESC, OrderNumber ASC

-- SQL insert
	INSERT INTO ������ VALUES (ֵ1, ֵ2,....)
	INSERT INTO table_name (��1, ��2,...) VALUES (ֵ1, ֵ2,....)

-- SQL update
	UPDATE ������ SET ������ = ��ֵ WHERE ������ = ĳֵ

-- SQL delete
	DELETE FROM ������ WHERE ������ = ֵ

	�ڲ�ɾ����������ɾ�����е���:
	DELETE FROM table_name
	DELETE * FROM table_name

-- SQL Top
	SELECT column_name(s) FROM table_name LIMIT number

-- SQL Like
	SELECT column_name(s) FROM table_name WHERE column_name LIKE / NOT LIKE pattern

-- SQL In
	SELECT column_name(s) FROM table_name WHERE column_name IN (value1,value2,...)

-- SQL Between
	SELECT column_name(s) FROM table_name WHERE BETWEEN / NOT BETWEEN value1 AND value2

-- SQL Aliases
	eg:(1)ʹ�ñ����Ʊ���
	   SELECT po.OrderID, p.LastName, p.FirstName
	   FROM Persons AS p, Product_Orders AS po
	   WHERE p.LastName='Adams' AND p.FirstName='John'

	   (2)ʹ��һ����������
	   SELECT LastName AS Family, FirstName AS Name
	   FROM Persons

-- SQL Inner Join
	SELECT column_name(s)
	FROM table_name1
	INNER JOIN table_name2 
	ON table_name1.column_name=table_name2.column_name

	eg:
	SELECT Persons.LastName, Persons.FirstName, Orders.OrderNo
	FROM Persons, Orders
	WHERE Persons.Id_P = Orders.Id_P 

	SELECT Persons.LastName, Persons.FirstName, Orders.OrderNo
	FROM Persons
	INNER JOIN Orders
	ON Persons.Id_P = Orders.Id_P
	ORDER BY Persons.LastName

-- SQL Left Join
	SELECT column_name(s)
	FROM table_name1
	LEFT JOIN table_name2 
	ON table_name1.column_name=table_name2.column_name

-- SQL Right Join
	SELECT column_name(s)
	FROM table_name1
	RIGHT JOIN table_name2 
	ON table_name1.column_name=table_name2.column_name

-- SQL Full Join
	SELECT column_name(s)
	FROM table_name1
	FULL JOIN table_name2 
	ON table_name1.column_name=table_name2.column_name

-- SQL Union
	SELECT column_name(s) FROM table_name1
	UNION / UNION ALL
	SELECT column_name(s) FROM table_name2

-- SQL Select into
	SELECT * / column_name(s)
	INTO new_table_name [IN externaldatabase] 
	FROM old_tablename

-- SQL Create DB
	CREATE DATABASE database_name

-- SQL Create Table
	CREATE TABLE ������
	(
	������1 ��������,
	������2 ��������,
	������3 ��������,
	....
	)

-- SQL Constraints
	(1)SQL Not Null
	(2)SQL Unique
	(3)SQL Primary Key
	(4)SQL Foreign Key
	(5)SQL Check
	(6)SQL Deafult

	eg:
	CREATE TABLE Orders
	(
	Id_O int NOT NULL,
	OrderNo int NOT NULL,
	City varchar(255) DEFAULT 'Sandnes'
	Id_P int,
	PRIMARY KEY (Id_O),
	FOREIGN KEY (Id_P) REFERENCES Persons(Id_P),
	CHECK (Id_P>0)
	)

-- SQL Create Index
	CREATE INDEX index_name
	ON table_name (column_name)
	
	CREATE UNIQUE INDEX index_name
	ON table_name (column_name)

-- SQL Drop
	(1)ALTER TABLE table_name DROP INDEX index_name
	(2)DROP TABLE ������
	(3)DROP DATABASE ���ݿ�����
	(4)TRUNCATE TABLE ������

-- SQL Alter
	(1)ALTER TABLE table_name
	   ADD column_name datatype
	
	(2)ALTER TABLE table_name 
	   DROP COLUMN column_name

	(3)ALTER TABLE table_name
	   ALTER COLUMN column_name datatype

-- SQL Increment
	eg:
	CREATE TABLE Persons
	(
	P_Id int NOT NULL AUTO_INCREMENT,
	LastName varchar(255) NOT NULL,
	FirstName varchar(255),
	Address varchar(255),
	City varchar(255),
	PRIMARY KEY (P_Id)
	)

-- MySQL��������
��MySQL��,��������Ҫ������:�ı������ֺ�����/ʱ�����͡�

Text ���ͣ�
��������		����
CHAR(size)		����̶����ȵ��ַ������ɰ�����ĸ�������Լ������ַ�������������ָ���ַ����ĳ��ȡ���� 255 ���ַ���
VARCHAR(size)		����ɱ䳤�ȵ��ַ������ɰ�����ĸ�������Լ������ַ�������������ָ���ַ�������󳤶ȡ���� 255 ���ַ���
			ע�ͣ����ֵ�ĳ��ȴ��� 255����ת��Ϊ TEXT ���͡�
TINYTEXT		�����󳤶�Ϊ 255 ���ַ����ַ�����
TEXT			�����󳤶�Ϊ 65,535 ���ַ����ַ�����
BLOB			���� BLOBs (Binary Large OBjects)�������� 65,535 �ֽڵ����ݡ�
MEDIUMTEXT		�����󳤶�Ϊ 16,777,215 ���ַ����ַ�����
MEDIUMBLOB		���� BLOBs (Binary Large OBjects)�������� 16,777,215 �ֽڵ����ݡ�
LONGTEXT		�����󳤶�Ϊ 4,294,967,295 ���ַ����ַ�����
LONGBLOB		���� BLOBs (Binary Large OBjects)�������� 4,294,967,295 �ֽڵ����ݡ�
ENUM(x,y,z,etc.)	�������������ֵ���б������� ENUM �б����г���� 65535 ��ֵ������б��в����ڲ����ֵ��������ֵ��
			ע�ͣ���Щֵ�ǰ����������˳��洢�ġ�
			���԰��մ˸�ʽ������ܵ�ֵ��ENUM('X','Y','Z')
SET			�� ENUM ���ƣ�SET ���ֻ�ܰ��� 64 ���б������ SET �ɴ洢һ�����ϵ�ֵ��


Number ���ͣ�
��������		����
TINYINT(size)		-128 �� 127 ���档0 �� 255 �޷���*���������й涨���λ����
SMALLINT(size)		-32768 �� 32767 ���档0 �� 65535 �޷���*���������й涨���λ����
MEDIUMINT(size)		-8388608 �� 8388607 ��ͨ��0 to 16777215 �޷���*���������й涨���λ����
INT(size)		-2147483648 �� 2147483647 ���档0 �� 4294967295 �޷���*���������й涨���λ����
BIGINT(size)		-9223372036854775808 �� 9223372036854775807 ���档0 �� 18446744073709551615 �޷���*���������й涨���λ����
FLOAT(size,d)		���и���С�����С���֡��������й涨���λ������ d �����й涨С�����Ҳ�����λ����
DOUBLE(size,d)		���и���С����Ĵ����֡��������й涨���λ������ d �����й涨С�����Ҳ�����λ����
DECIMAL(size,d)		��Ϊ�ַ����洢�� DOUBLE ���ͣ�����̶���С���㡣
* ��Щ��������ӵ�ж����ѡ�� UNSIGNED��ͨ�������������Ǹ����������������� UNSIGNED ���ԣ���ô��Χ���� 0 ��ʼ��������ĳ��������


Date ���ͣ�
��������		����
DATE()			���ڡ���ʽ��YYYY-MM-DD
			ע�ͣ�֧�ֵķ�Χ�Ǵ� '1000-01-01' �� '9999-12-31'
DATETIME()		*���ں�ʱ�����ϡ���ʽ��YYYY-MM-DD HH:MM:SS
			ע�ͣ�֧�ֵķ�Χ�Ǵ� '1000-01-01 00:00:00' �� '9999-12-31 23:59:59'
TIMESTAMP()		*ʱ�����TIMESTAMP ֵʹ�� Unix ��Ԫ('1970-01-01 00:00:00' UTC) ������������洢����ʽ��YYYY-MM-DD HH:MM:SS
			ע�ͣ�֧�ֵķ�Χ�Ǵ� '1970-01-01 00:00:01' UTC �� '2038-01-09 03:14:07' UTC
TIME()			ʱ�䡣��ʽ��HH:MM:SS ע�ͣ�֧�ֵķ�Χ�Ǵ� '-838:59:59' �� '838:59:59'
YEAR()			2 λ�� 4 λ��ʽ���ꡣ
			ע�ͣ�4 λ��ʽ�������ֵ��1901 �� 2155��2 λ��ʽ�������ֵ��70 �� 69����ʾ�� 1970 �� 2069��
* ���� DATETIME �� TIMESTAMP ������ͬ�ĸ�ʽ�����ǵĹ�����ʽ�ܲ�ͬ���� INSERT �� UPDATE ��ѯ�У�TIMESTAMP �Զ�����������Ϊ��ǰ�����ں�ʱ�䡣
TIMESTAMP Ҳ���ܲ�ͬ�ĸ�ʽ������ YYYYMMDDHHMMSS��YYMMDDHHMMSS��YYYYMMDD �� YYMMDD��



	









	