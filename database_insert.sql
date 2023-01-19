/*
Problem 2)
*/

DROP TABLE IF EXISTS animes;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS videos;
DROP TABLE IF EXISTS favorite_lists;
DROP TABLE IF EXISTS subscribes;
DROP TABLE IF EXISTS saves;
DROP TABLE IF EXISTS follows;

CREATE TABLE animes(
	aid integer primary key not null, 	--anime unique id
	name text NOT NULL,		--name of anime
	author text NOT NULL,	--author of anime
	studio text NOT NULL	--anime studio
	);
	
INSERT INTO animes VALUES(100,'No Game No Life','Kamiya Yu','MADHOUSE');
INSERT INTO animes VALUES(101,'TIGERxDRAGON!','TAkemiya Yuyuko','J.C.STAFF');
INSERT INTO animes VALUES(102,'Overlord','Maruyama Kugane','MADHOUSE');
INSERT INTO animes VALUES(103,'Angels of Death','Makoto Sanada','J.C.STAFF');
INSERT INTO animes VALUES(104,'Angel Beats!','Maeda Jun','P.A.Works');
INSERT INTO animes VALUES(105,'CLANNAD','Maeda Jun','Kyoto Animation');
INSERT INTO animes VALUES(106,'Air','Maeda Jun','Kyoto Animation');
INSERT INTO animes VALUES(107,'Haruhi Suzumiya','Tanigawa Nagaru','Kyoto Animation');
INSERT INTO animes VALUES(108,'K-ON','Kakifly','Kyoto Animation');
INSERT INTO animes VALUES(109,'Sword Art Online','Reki Kawahara','A-1 Pictures');
	
CREATE TABLE users(
	uid integer primary key not null, 	--user unique id
	username text NOT NULL,		--name of user
	password text NOT NULL, 	--password of the user
	email_address text NOT NULL		--email of the user
	);
	
INSERT INTO users VALUES(2798,'Shiro','101104666','shiro@gmail.com');
INSERT INTO users VALUES(15145830,'Sora','nogamenolife','Sora@gmail.com');
INSERT INTO users VALUES(16548743,'Bronya','Zaychik','wolfDawn@gmail.com');
INSERT INTO users VALUES(264846,'Yae Sakura','KallenKaslana','Yukri@gmail.com');
INSERT INTO users VALUES(537853,'Kallen','Sakura','Miko@gmail.com');
INSERT INTO users VALUES(4357831,'Murata','MurataHimeko','Eclipse@gmail.com');
INSERT INTO users VALUES(378941534,'Kiana','KianaKaslana','herrscher@gmail.com');
INSERT INTO users VALUES(1111,'Liliya','LiliyaOlenyeva','Blueberry@gmail.com');
INSERT INTO users VALUES(745863,'Seele','SeeleVollerei','Bronyawife@gmail.com');
INSERT INTO users VALUES(8530,'Theresa','Apocalypse','Luna@gmail.com');
INSERT INTO users VALUES(777,'Raiden Mei','Kiyana','green@gmail.com');

	
CREATE TABLE videos(
	user_id integer not null references users(uid),		--strong entity users primary key uid
	vid text not null,		--video id
	date text not null, 		--publish date
	title text not null,		--video title
	primary key (user_id, vid)
	);
	
INSERT INTO videos VALUES(777,'av926143432','2020-07-03','Sinner''s Elegy');
INSERT INTO videos VALUES(378941534,'av24149246','2018-05-31','Queen Befall');
INSERT INTO videos VALUES(4357831,'av38096452','2018-12-14','Last Lesson');
INSERT INTO videos VALUES(378941534,'av92252043','2020-02-28','Sky meteor');
INSERT INTO videos VALUES(378941534,'av501440303','2021-01-29','Duchen');
INSERT INTO videos VALUES(378941534,'av14899802','2017-09-30','Reburn');
INSERT INTO videos VALUES(16548743,'av71549436','2019-10-18','Bronya Zaychik');
INSERT INTO videos VALUES(745863,'av70927145','2019-10-12','Dual-Ego');
	
CREATE TABLE favorite_lists(
	user_id integer not null references users(uid),		--strong entity users primary key uid
	list_name text not null,
	primary key (user_id, list_name)
	);
	
INSERT INTO favorite_lists VALUES(16548743,'Seele''s video');
INSERT INTO favorite_lists VALUES(745863,'Sister''s video');
INSERT INTO favorite_lists VALUES(777,'baka Kiyana');
INSERT INTO favorite_lists VALUES(777,'Bronya');
INSERT INTO favorite_lists VALUES(378941534,'favoriteList');
INSERT INTO favorite_lists VALUES(8530,'Kawai');
INSERT INTO favorite_lists VALUES(2798,'Game video');
INSERT INTO favorite_lists VALUES(15145830,'Game video');

	
CREATE TABLE subscribes(
	user_id integer not null,		--user id
	anime_id integer not null, 		--anime id
	subscribes_number integer not null,		--subscribe number
	primary key (user_id, anime_id)
	);
	
INSERT INTO subscribes VALUES(16548743,100,1);
INSERT INTO subscribes VALUES(16548743,102,2);
INSERT INTO subscribes VALUES(16548743,104,3);
INSERT INTO subscribes VALUES(16548743,105,4);
INSERT INTO subscribes VALUES(16548743,106,5);
INSERT INTO subscribes VALUES(16548743,107,6);
INSERT INTO subscribes VALUES(378941534,100,1);
INSERT INTO subscribes VALUES(378941534,101,2);
INSERT INTO subscribes VALUES(378941534,109,3);
INSERT INTO subscribes VALUES(8530,102,1);
INSERT INTO subscribes VALUES(8530,104,2);
INSERT INTO subscribes VALUES(8530,100,3);
INSERT INTO subscribes VALUES(8530,109,4);
INSERT INTO subscribes VALUES(1111,100,1);
INSERT INTO subscribes VALUES(1111,101,2);
INSERT INTO subscribes VALUES(15145830,100,1);
INSERT INTO subscribes VALUES(27981,100,1);
INSERT INTO subscribes VALUES(745863,100,1);
INSERT INTO subscribes VALUES(745863,105,2);
INSERT INTO subscribes VALUES(745863,106,3);

	
CREATE TABLE saves(
	user_id integer not null,		--user id
	upload_user_id integer not null,	--video upload user id
	video_id text not null, 		--video id
	favorite_list_name text not null,	--save in which favorite list_name
	primary key (user_id, upload_user_id, video_id, favorite_list_name),
	foreign key (upload_user_id, video_id) references videos (user_id, videos),
	foreign key (user_id, favorite_list_name) references favorite_lists (user_id, list_name)
	);

INSERT INTO saves VALUES(16548743,745863,'av70927145','Seele''s video');
INSERT INTO saves VALUES(745863,16548743,'av71549436','Sister''s video');
INSERT INTO saves VALUES(777,378941534,'av24149246','baka Kiyana');
INSERT INTO saves VALUES(777,378941534,'av92252043','baka Kiyana');
INSERT INTO saves VALUES(777,378941534,'av501440303','baka Kiyana');
INSERT INTO saves VALUES(777,378941534,'av14899802','baka Kiyana');
INSERT INTO saves VALUES(777,16548743,'av70927145','Bronya');
INSERT INTO saves VALUES(378941534,4357831,'av38096452','favoriteList');
INSERT INTO saves VALUES(378941534,777,'av926143432','favoriteList');
INSERT INTO saves VALUES(378941534,16548743,'av71549436','favoriteList');
	
CREATE TABLE follows(
	user_id integer not null,	--user id
	up_id integer not null,		--followed user id
	primary key (user_id, up_id)
	);
	
INSERT INTO follows VALUES(2798,15145830);
INSERT INTO follows VALUES(15145830,2798);
INSERT INTO follows VALUES(16548743,745863);
INSERT INTO follows VALUES(16548743,8530);
INSERT INTO follows VALUES(16548743,777);
INSERT INTO follows VALUES(16548743,378941534);
INSERT INTO follows VALUES(16548743,1111);
INSERT INTO follows VALUES(378941534,4357831);
INSERT INTO follows VALUES(378941534,16548743);
INSERT INTO follows VALUES(378941534,777);


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	