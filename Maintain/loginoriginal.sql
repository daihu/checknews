use  test;#MySql中已有的库test

CREATE TABLE  users (
  username VARCHAR(20) NOT NULL,
  password VARCHAR(20) NOT NULL,
  PRIMARY KEY(username)
);

insert into users values('zxf','888');
insert into users values('penny','666');


