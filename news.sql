
use  test;#MySql�����еĿ�test
drop table news;#�����б�����ɾ�����ٽ���

CREATE TABLE news(	
	id 		INTEGER		PRIMARY KEY,
	title		VARCHAR (100) 	NOT NULL ,
	content		text(4000) 	NOT NULL,
	author		VARCHAR (40)  	NOT NULL,
	time		DATE   		NOT NULL,
	keyword		VARCHAR (20) 	NULL,
	type        		INTEGER		NOT NULL
);

##################################�ȵ�����
insert into news values(
	1,
	'hot news 1',
	'aaaaaaaaaaaa\naaaaaaaaaaaaaaaa\naaaaaaaaaaaaaaaa\naaaaaaaaaaaaaaaa\naaaaaaaaaaaaaaaa\naaaaaaaaaaaaaaaa\n',
	'Tom',
	CURDATE(),  #ϵͳ��ǰʱ��
	'hot news 1',
	1);

insert into news values(
	2,
	'hot news 1',
	'ttttttttttt\nttttttttttttttt\nttttttttttttttt\nttttttttttttttt\nttttttttttttttt\n',
	'Tom',
	'2006-09-09',  
	'hot news 1',
	1);

insert into news values(
	3,
	'hot news 3',
	'bbbbbbbbbbbb\nbbbbaaaabbbbbbbb\nbbbbbbaaaabbbbbb\nbbbaaaabbbbbbbbb\nbbbbbbbaaaabbbbb\nbbbbbaaaabbbbbbb\n',
	'Jack',
	'2006-07-09',
	'bbb',
	1
);

##################################��ҵ����
insert into news values(
	4,
	'industry news 1',
	'xxxxxxxxxxxx\nxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxx\n',
	'Mary',
	'2007-02-18',  #ָ��ʱ��ʱ��
	'xxx',
	2
);

insert into news values(
	5,
	'industry news 1',
	'rrrrrrrrrrrr\nrrrrrrrrrrrrrrrr\nrrrrrrrrrrrrrrrr\nrrrrrrrrrrrrrrrr\nrrrrrrrrrrrrrrrr\n',
	'Mary',
	'2007-02-15',  #ָ��ʱ��ʱ��
	'xxx',
	2
);

insert into news values(
	6,
	'industry news 2',
	'yyyyyyyyyyyyy\nyyyyyyyyyyyyyyyyy\nyyyyyyyyyyyyyyyyy\nyyyyyyyyyyyyyyyyy\nyyyyyyyyyyyyyyyyy\nyyyyyyyyyyyyyyyyy\n',
	'Martin',
	'2007-02-08',  #ָ��ʱ��ʱ��
	'yyy',
	2
);


-------------------------------------------------------------------------------------------------------
insert into news values(
	1,
	'hot news 1',
	'aaaaaaaaaaaa\naaaaaaaaaaaaaaaa\naaaaaaaaaaaaaaaa\naaaaaaaaaaaaaaaa\naaaaaaaaaaaaaaaa\naaaaaaaaaaaaaaaa\n',
	'Tom',
	CURDATE(),  #ϵͳ��ǰʱ��
	'hot news 1',
	1);

	
	
	
	

	
