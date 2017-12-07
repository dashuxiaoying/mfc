create table admin
(
  uid int auto_increment
    primary key,
  username varchar(50) null,
  password varchar(50) null
)
  engine=MyISAM collate=utf8_unicode_ci
;

