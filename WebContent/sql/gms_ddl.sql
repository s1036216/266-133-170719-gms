-- id,name,password,ssn,regdate
CREATE SEQUENCE article_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
CREATE TABLE Member(
	id VARCHAR2(10),
	name VARCHAR2(10),
	password VARCHAR2(10),
	ssn VARCHAR2(15),
	regdate DATE,
	PRIMARY KEY(id)
);
SELECT * FROM Member;
SELECT * FROM Board;
DROP TABLE Member;
DROP TABLE Board;
-- id,title,content;
--	article_seq,hitcount;
-- regdate
CREATE TABLE Board(
	article_seq NUMBER,
	id VARCHAR2(10),
	title VARCHAR2(20),
	content VARCHAR2(100),
	hitcount NUMBER,
	regdate DATE,
	PRIMARY KEY(article_seq),
	FOREIGN KEY(id) REFERENCES Member(id)
		ON DELETE CASCADE
);







