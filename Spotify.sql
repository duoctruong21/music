create table album(
	id_albumn varchar2(10) primary key,
	name_albums varchar2(255),
	id_singer varchar2(10),
	genre_album varchar2(255),
	artWorkPath varchar2(255),
	postedBy_album varchar2(255),
	show varchar2(255),
	postDay date
)
create table singer(
	id_singer varchar2(10) primary key ,
	name_singer varchar2(100),
	picture_singer long
)
create table song(
	id_song varchar2(10) primary key,
	id_singer varchar2(10),
	id_album varchar2(10),
    id_genre varchar2(10),
	path_song varchar2(255),
	listens number (10),
	postBy_song varchar2(255),
	postDay_song varchar2(255)
)
create table genres(
	id_genre varchar2(10) primary key,
	name_genre varchar2(255)
)

create table users(
	id_user varchar2(10) primary key,
	name_user varchar2(255),
	name_account varchar2(255),
	password varchar2(20),
	email varchar2(255),
	decentralization number(1),
	registration_date date,
	avatar long
)
ALTER TABLE album 
ADD CONSTRAINT fk_singer_album
FOREIGN KEY (id_singer) REFERENCES singer(id_singer);

ALTER TABLE song 
ADD CONSTRAINT fk_singer_song
FOREIGN KEY (id_singer) REFERENCES singer(id_singer);

ALTER TABLE song 
ADD CONSTRAINT fk_song_genre
FOREIGN KEY (id_genre) REFERENCES genres(id_genre);

--add data in singer table
insert into singer(id_singer, name_singer)
values ('01','Đàm Vĩnh Hưng');
insert into singer(id_singer, name_singer)
values ('02','Sơn Tùng M-TP');
insert into singer(id_singer, name_singer)
values ('03','Hà Anh Tu?n');
insert into singer(id_singer, name_singer)
values ('04','Bùi Anh Tu?n');
insert into singer(id_singer, name_singer)
values ('05','Phan M?nh Qu?nh');
insert into singer(id_singer, name_singer)
values ('06','L??ng Bích H?u');
insert into singer(id_singer, name_singer)
values ('07','Uyên Linh');
insert into singer(id_singer, name_singer)
values ('08','Thu Minh');

--Thêm d? li?u vào b?ng genres
insert into genres values ('01','Pop');
insert into genres values ('02','Rock');
insert into genres values ('03','Jazz');
insert into genres values ('04','Opera');
insert into genres values ('05','Country');
insert into genres values ('06','R&B');
insert into genres values ('07','Dance');
insert into genres values ('08','Blues');
insert into genres values ('09','Ballad');
insert into genres values ('10','Accoustic');
insert into genres values ('11','Bolero');


