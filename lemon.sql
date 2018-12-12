SET NAMES UTF8;
DROP DATABASE IF EXISTS lemon;
CREATE DATABASE lemon CHARSET=UTF8;
USE lemon;
#用户表
CREATE TABLE user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(16),
	upwd VARCHAR(16),
	phone CHAR(11),
	sex INT,
	email VARCHAR(32),
	#游记表id
	vid INT,
	profile VARCHAR(125)
);
#轮播表
CREATE TABLE carousel(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	country VARCHAR(50),
	spot VARCHAR(50),
	src VARCHAR(200),
	lg_url VARCHAR(200),
	md_url VARCHAR(200),
	sm_url VARCHAR(200)

);
INSERT INTO carousel VALUES(1,"中国","西藏","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb01.png","http://127.0.0.1:3001/img/carousel/lb01_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb01.png");
INSERT INTO carousel VALUES(2,"中国","台湾","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb02.png","http://127.0.0.1:3001/img/carousel/lb02_500x250.png",NULL);
INSERT INTO carousel VALUES(3,NULL,NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb03.png","http://127.0.0.1:3001/img/carousel/lb03_500x250.png",NULL);
INSERT INTO carousel VALUES(4,"法国","巴黎","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb04.png","http://127.0.0.1:3001/img/carousel/lb04_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb04.png");
INSERT INTO carousel VALUES(5,NULL,NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb05.png","http://127.0.0.1:3001/img/carousel/lb05_500x250.png",NULL);
INSERT INTO carousel VALUES(6,"新加坡",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb06.png","http://127.0.0.1:3001/img/carousel/lb06_500x250.png",NULL);
INSERT INTO carousel VALUES(7,"尼泊尔",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb07.png","http://127.0.0.1:3001/img/carousel/lb07_500x250.png",NULL);
INSERT INTO carousel VALUES(8,"中国","青海","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb08.png","http://127.0.0.1:3001/img/carousel/lb08_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb08.png");
INSERT INTO carousel VALUES(9,"中国","九寨沟","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb09.png","http://127.0.0.1:3001/img/carousel/lb09_500x250.png",NULL);
INSERT INTO carousel VALUES(10,"法国","巴黎","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb10.png","http://127.0.0.1:3001/img/carousel/lb10_500x250.png",NULL);
INSERT INTO carousel VALUES(11,"中国","杭州","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb11.png","http://127.0.0.1:3001/img/carousel/lb11_500x250.png",NULL);
INSERT INTO carousel VALUES(12,"中国","苏州","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb12.png","http://127.0.0.1:3001/img/carousel/lb12_500x250.png",NULL);
INSERT INTO carousel VALUES(13,"中国","青海","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb13.png","http://127.0.0.1:3001/img/carousel/lb13_500x250.png",NULL);
INSERT INTO carousel VALUES(14,"马来西亚",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb14.png","http://127.0.0.1:3001/img/carousel/lb14_500x250.png",NULL);
INSERT INTO carousel VALUES(15,"新加坡",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb15.png","http://127.0.0.1:3001/img/carousel/lb15_500x250.png",NULL);
INSERT INTO carousel VALUES(16,"尼泊尔",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb16.png","http://127.0.0.1:3001/img/carousel/lb16_500x250.png",NULL);
INSERT INTO carousel VALUES(17,NULL,NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb17.png","http://127.0.0.1:3001/img/carousel/lb17_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb17.png");
INSERT INTO carousel VALUES(18,"日本",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb18.png","http://127.0.0.1:3001/img/carousel/lb18_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb18.png");
INSERT INTO carousel VALUES(19,"菲律宾",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb19.png","http://127.0.0.1:3001/img/carousel/lb19_500x250.png",NULL);
INSERT INTO carousel VALUES(20,"日本",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb20.png","http://127.0.0.1:3001/img/carousel/lb20_500x250.png",NULL);
INSERT INTO carousel VALUES(21,"中国","台湾","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb21.png","http://127.0.0.1:3001/img/carousel/lb21_500x250.png",NULL);
INSERT INTO carousel VALUES(22,NULL,"西藏","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb22.png","http://127.0.0.1:3001/img/carousel/lb22_500_250.png",NULL);
INSERT INTO carousel VALUES(23,"中国","香港","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb23.png","http://127.0.0.1:3001/img/carousel/lb23_500x250.png",NULL);

#景点表
CREATE TABLE spot(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	country VARCHAR(48),
	spot VARCHAR(48),
	iid  INT
);

#图片总表
CREATE TABLE img(
	iid INT PRIMARY KEY AUTO_INCREMENT,
	iimg_path VARCHAR(50)
);
#游记表
CREATE TABLE travel(
	tid INT PRIMARY KEY AUTO_INCREMENT,
	txt TEXT,
	#用户id
	uid INT,
	#图片id
	iid INT,
	Ttime DATETIME,
	#浏览量
	tview INT,
	#点赞
	zan INT,
	btitle VARCHAR(50),
	mtitle VARCHAR(50),
	stitle VARCHAR(50),
	comment VARCHAR(200),
	video_path VARCHAR(60)
);
#攻略表
CREATE TABLE pointer(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	#景点id
	sid INT,
	#图片id
	iid INT,
	txt TEXT,
	#浏览量
	pview INT,
	Ttime DATETIME,
	#浏览量
	tview INT,
	#点赞
	zan INT,
	btitle VARCHAR(50),
	mtitle VARCHAR(50),
	stitle VARCHAR(50)
);
#logo
CREATE TABLE logo_img(
	logo_pid INT PRIMARY KEY AUTO_INCREMENT,
	img_url VARCHAR(200)
);
INSERT INTO logo_img VALUES(1,
"http://127.0.0.1:3001/img/logo/lemon_logo_black.png");
INSERT INTO logo_img VALUES(2,
"http://127.0.0.1:3001/img/logo/lemon_logo_white.png");
