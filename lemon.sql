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
	email VARCHAR(32),
	#游记表id
	vid INT	
);
#轮播表
CREATE TABLE carousel(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	cimg_path VARCHAR(32)
);
#地点表
CREATE TABLE address(
	aid INT PRIMARY KEY AUTO_INCREMENT,
	address VARCHAR(32)
);
#景点表
CREATE TABLE spot(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	aid INT
);
#图片总表
CREATE TABLE img(
	iid INT PRIMARY KEY AUTO_INCREMENT,
	#图片所属的景点id
	sid INT,
	#图片所属的地点id
	aid INT
);
#游记表
CREATE TABLE travel(
	tid INT PRIMARY KEY AUTO_INCREMENT,
	content TEXT,
	#用户id
	uid INT,
	#图片id
	iid INT,
	Ttime DATETIME,
	#浏览量
	tview INT
);
#指南表
CREATE TABLE pointer(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	#景点id
	sid INT,
	#图片id
	iid INT,
	content TEXT,
	#浏览量
	pview INT
);