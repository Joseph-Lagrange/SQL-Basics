-- SQL select
	SELECT 列名称 FROM 表名称;
	SELECT * FROM 表名称;

-- SQL distinct
	SELECT DISTINCT 列名称 FROM 表名称;

-- SQL where
	SELECT 列名称 FROM 表名称 WHERE 列 运算符 值;

-- SQL AND & OR 运算符
	eg:SELECT * FROM Persons WHERE (FirstName='Thomas' OR FirstName='William')
	   AND LastName='Carter'

-- SQL Order By
	eg:以逆字母顺序显示公司名称，并以数字顺序显示顺序号：
	   SELECT Company, OrderNumber FROM Orders ORDER BY Company DESC, OrderNumber ASC

-- SQL insert
	INSERT INTO 表名称 VALUES (值1, 值2,....)
	INSERT INTO table_name (列1, 列2,...) VALUES (值1, 值2,....)

-- SQL update
	UPDATE 表名称 SET 列名称 = 新值 WHERE 列名称 = 某值

-- SQL delete
	DELETE FROM 表名称 WHERE 列名称 = 值

	在不删除表的情况下删除所有的行:
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
	eg:(1)使用表名称别名
	   SELECT po.OrderID, p.LastName, p.FirstName
	   FROM Persons AS p, Product_Orders AS po
	   WHERE p.LastName='Adams' AND p.FirstName='John'

	   (2)使用一个列名别名
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
	CREATE TABLE 表名称
	(
	列名称1 数据类型,
	列名称2 数据类型,
	列名称3 数据类型,
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
	(2)DROP TABLE 表名称
	(3)DROP DATABASE 数据库名称
	(4)TRUNCATE TABLE 表名称

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

-- MySQL数据类型
在MySQL中,有三种主要的类型:文本、数字和日期/时间类型。

Text 类型：
数据类型		描述
CHAR(size)		保存固定长度的字符串（可包含字母、数字以及特殊字符）。在括号中指定字符串的长度。最多 255 个字符。
VARCHAR(size)		保存可变长度的字符串（可包含字母、数字以及特殊字符）。在括号中指定字符串的最大长度。最多 255 个字符。
			注释：如果值的长度大于 255，则被转换为 TEXT 类型。
TINYTEXT		存放最大长度为 255 个字符的字符串。
TEXT			存放最大长度为 65,535 个字符的字符串。
BLOB			用于 BLOBs (Binary Large OBjects)。存放最多 65,535 字节的数据。
MEDIUMTEXT		存放最大长度为 16,777,215 个字符的字符串。
MEDIUMBLOB		用于 BLOBs (Binary Large OBjects)。存放最多 16,777,215 字节的数据。
LONGTEXT		存放最大长度为 4,294,967,295 个字符的字符串。
LONGBLOB		用于 BLOBs (Binary Large OBjects)。存放最多 4,294,967,295 字节的数据。
ENUM(x,y,z,etc.)	允许你输入可能值的列表。可以在 ENUM 列表中列出最大 65535 个值。如果列表中不存在插入的值，则插入空值。
			注释：这些值是按照你输入的顺序存储的。
			可以按照此格式输入可能的值：ENUM('X','Y','Z')
SET			与 ENUM 类似，SET 最多只能包含 64 个列表项，不过 SET 可存储一个以上的值。


Number 类型：
数据类型		描述
TINYINT(size)		-128 到 127 常规。0 到 255 无符号*。在括号中规定最大位数。
SMALLINT(size)		-32768 到 32767 常规。0 到 65535 无符号*。在括号中规定最大位数。
MEDIUMINT(size)		-8388608 到 8388607 普通。0 to 16777215 无符号*。在括号中规定最大位数。
INT(size)		-2147483648 到 2147483647 常规。0 到 4294967295 无符号*。在括号中规定最大位数。
BIGINT(size)		-9223372036854775808 到 9223372036854775807 常规。0 到 18446744073709551615 无符号*。在括号中规定最大位数。
FLOAT(size,d)		带有浮动小数点的小数字。在括号中规定最大位数。在 d 参数中规定小数点右侧的最大位数。
DOUBLE(size,d)		带有浮动小数点的大数字。在括号中规定最大位数。在 d 参数中规定小数点右侧的最大位数。
DECIMAL(size,d)		作为字符串存储的 DOUBLE 类型，允许固定的小数点。
* 这些整数类型拥有额外的选项 UNSIGNED。通常，整数可以是负数或正数。如果添加 UNSIGNED 属性，那么范围将从 0 开始，而不是某个负数。


Date 类型：
数据类型		描述
DATE()			日期。格式：YYYY-MM-DD
			注释：支持的范围是从 '1000-01-01' 到 '9999-12-31'
DATETIME()		*日期和时间的组合。格式：YYYY-MM-DD HH:MM:SS
			注释：支持的范围是从 '1000-01-01 00:00:00' 到 '9999-12-31 23:59:59'
TIMESTAMP()		*时间戳。TIMESTAMP 值使用 Unix 纪元('1970-01-01 00:00:00' UTC) 至今的描述来存储。格式：YYYY-MM-DD HH:MM:SS
			注释：支持的范围是从 '1970-01-01 00:00:01' UTC 到 '2038-01-09 03:14:07' UTC
TIME()			时间。格式：HH:MM:SS 注释：支持的范围是从 '-838:59:59' 到 '838:59:59'
YEAR()			2 位或 4 位格式的年。
			注释：4 位格式所允许的值：1901 到 2155。2 位格式所允许的值：70 到 69，表示从 1970 到 2069。
* 即便 DATETIME 和 TIMESTAMP 返回相同的格式，它们的工作方式很不同。在 INSERT 或 UPDATE 查询中，TIMESTAMP 自动把自身设置为当前的日期和时间。
TIMESTAMP 也接受不同的格式，比如 YYYYMMDDHHMMSS、YYMMDDHHMMSS、YYYYMMDD 或 YYMMDD。



	









	