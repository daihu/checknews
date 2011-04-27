use test
create table m_item_image (
		id   bigint(20) PRIMARY KEY auto_increment not null,
		coverFlag	int(11) not null,
		createTime	datetime not null,
		itemId	bigint(20)	not null,
		position	int(11)	not null,
		resUrl	varchar(128) not null,
		title	varchar(64) 	,
		version	int(11)
);