show databases;

-- DB 생성 --
create database SMTP_mail;

use SMTP_mail;

-- table 생성 -- 
create table user(
id varchar(20) not null unique,
pw varchar(20) not null,
mail varchar(30) not null,
tmp_pw varchar(20)
);

-- insert --
insert into user (id,pw, mail)
values('id1', 'pw1', 'hhjjkk7186@naver.com');

-- update --
update user set tmp_pw='RandomString' where id='id1';

-- select --
select * from user;
select tmp_pw from user where id="id1";

drop table user;