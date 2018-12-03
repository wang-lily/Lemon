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
	cimg_path VARCHAR(32),
	spot VARCHAR(50)
);

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
	video_path VARCHAR(60),
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
	stitle VARCHAR(50),
);