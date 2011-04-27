drop table users;
CREATE TABLE  users (
  userid  INTEGER	PRIMARY KEY,
  username VARCHAR(20) NOT NULL,
  accounttype VARCHAR(20) NOT NULL,
  password VARCHAR(100) NOT NULL,
  
);

type       INTEGER	NOT NULL
insert into users values('daihu','admin','daihu','111');

Duplicate entry '0' for key 1

mysql> insert into users values('1','daihu','admin','daihu','111');
Query OK, 1 row affected (0.00 sec)
insert into users values('penny','666');





drop table users;
CREATE TABLE  users (
  userid  INTEGER	,
  username VARCHAR(20) ,
  accounttype VARCHAR(20) ,
  password VARCHAR(100) ,
  type       INTEGER	
);


----------------------------------------------------------------------------------------------------

drop table users;
CREATE TABLE  users (
  username VARCHAR(20) NOT NULL,
  accounttype VARCHAR(20) NOT NULL,
  password VARCHAR(100) NOT NULL
  );