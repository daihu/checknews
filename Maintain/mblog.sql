drop table m_mblog;
create TABLE m_mblog (
id bigint(20) auto_increment ,
content longtext  not null,
createTime datetime not null,
lastCommentTime datetime  null,
userid  bigint(20) not null,
version int(11) null,
primary key(id)
);
 



CREATE TABLE  users (
  username VARCHAR(20) NOT NULL,
  accounttype VARCHAR(20) NOT NULL,
  password VARCHAR(100) NOT NULL
  );