drop database if exists db_song;
create database db_song;
use db_song;
set names gbk;
drop table if exists category;
create table category(id int primary key auto_increment,name varchar(20));
insert into category(name) values ("���и���"),("�����ҥ"),("У԰����");
select * from category;

drop table if exists song;
create table song(id int primary key auto_increment,name varchar(20),singer varchar(20),pubDate datetime,categoryId int,foreign key(categoryId) references category(id));
insert into song(name,singer,pubDate,categoryId) values ("��ˮǧɽ","�ܽ���","20080504",1),("���Ҽ���","��С��","20080507",1),("�ʺ�","�ܽ���","20080508",1),("��Ԫ��","��̺�","20080510",2),("Ů����","��ѩ��","20080507",2),("�ഺ�޻�","����","20080512",3);
select * from song;


