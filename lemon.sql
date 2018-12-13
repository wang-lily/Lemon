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
	sm_url VARCHAR(200),
	years VARCHAR(20),
	day CHAR,
	tip VARCHAR(50)

);
INSERT INTO carousel VALUES(1,"中国","西藏","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb01.png","http://127.0.0.1:3001/img/carousel/lb01_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb01.png",'Nov.2018','2','来一场说走就走的旅行...');
INSERT INTO carousel VALUES(2,"中国","台湾","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb02.png","http://127.0.0.1:3001/img/carousel/lb02_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(3,NULL,NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb03.png","http://127.0.0.1:3001/img/carousel/lb03_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(4,"法国","巴黎","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb04.png","http://127.0.0.1:3001/img/carousel/lb04_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb04.png",'Nov.2016','15','我和你就像一座埃菲尔铁塔和爱琴海。');
INSERT INTO carousel VALUES(5,NULL,NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb05.png","http://127.0.0.1:3001/img/carousel/lb05_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(6,"新加坡",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb06.png","http://127.0.0.1:3001/img/carousel/lb06_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(7,"尼泊尔",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb07.png","http://127.0.0.1:3001/img/carousel/lb07_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(8,"中国","青海","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb08.png","http://127.0.0.1:3001/img/carousel/lb08_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb08.png",'Nov.2017','4','生活就像一盒巧克力。');
INSERT INTO carousel VALUES(9,"中国","九寨沟","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb09.png","http://127.0.0.1:3001/img/carousel/lb09_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(10,"法国","巴黎","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb10.png","http://127.0.0.1:3001/img/carousel/lb10_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(11,"中国","杭州","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb11.png","http://127.0.0.1:3001/img/carousel/lb11_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(12,"中国","苏州","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb12.png","http://127.0.0.1:3001/img/carousel/lb12_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(13,"中国","青海","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb13.png","http://127.0.0.1:3001/img/carousel/lb13_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(14,"马来西亚",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb14.png","http://127.0.0.1:3001/img/carousel/lb14_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(15,"新加坡",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb15.png","http://127.0.0.1:3001/img/carousel/lb15_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(16,"尼泊尔",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb16.png","http://127.0.0.1:3001/img/carousel/lb16_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(17,NULL,NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb17.png","http://127.0.0.1:3001/img/carousel/lb17_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb17.png",'Nov.2016','22','听说摩天轮的每个格子里都装满幸福...');
INSERT INTO carousel VALUES(18,"日本",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb18.png","http://127.0.0.1:3001/img/carousel/lb18_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb18.png",'Nov.2018','12','是我选择了生活，而不是生活选择了我。');
INSERT INTO carousel VALUES(19,"菲律宾",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb19.png","http://127.0.0.1:3001/img/carousel/lb19_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(20,"日本",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb20.png","http://127.0.0.1:3001/img/carousel/lb20_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(21,"中国","台湾","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb21.png","http://127.0.0.1:3001/img/carousel/lb21_500x250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(22,NULL,"西藏","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb22.png","http://127.0.0.1:3001/img/carousel/lb22_500_250.png",NULL,NULL,null,null);
INSERT INTO carousel VALUES(23,"中国","香港","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb23.png","http://127.0.0.1:3001/img/carousel/lb23_500x250.png",NULL,NULL,null,null);

#景点表
CREATE TABLE spot(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	country VARCHAR(48),
	spot VARCHAR(48),
);
#中国
INSERT INTO spot VALUES(1,'中国','峨眉山');
INSERT INTO spot VALUES(2,'中国','黄山');
INSERT INTO spot VALUES(3,'中国','九寨沟');
INSERT INTO spot VALUES(4,'中国','西安');
INSERT INTO spot VALUES(5,'中国','台湾');
#韩国
INSERT INTO spot VALUES(6,'韩国','釜山');
INSERT INTO spot VALUES(7,'韩国','京畿道');
INSERT INTO spot VALUES(8,'韩国','江原道');
INSERT INTO spot VALUES(9,'韩国','济州岛');
INSERT INTO spot VALUES(10,'韩国','仁川');
#马来西亚
INSERT INTO spot VALUES(11,'马来西亚',null);
#尼泊尔
INSERT INTO spot VALUES(12,'尼泊尔',null);
#菲律宾
INSERT INTO spot VALUES(13,'菲律宾',null);
#日本
INSERT INTO spot VALUES(14,'日本','北海道');
INSERT INTO spot VALUES(15,'日本','大阪');
INSERT INTO spot VALUES(16,'日本','金阁寺');
INSERT INTO spot VALUES(17,'日本','奈良');
INSERT INTO spot VALUES(18,'日本','宇和岛城');
#新加坡
INSERT INTO spot VALUES(19,'新加坡',null);
#泰国
INSERT INTO spot VALUES(20,'泰国','曼谷');
INSERT INTO spot VALUES(21,'泰国','普吉岛');
INSERT INTO spot VALUES(22,'泰国','清迈市');
INSERT INTO spot VALUES(23,'泰国','东芭乐园');
INSERT INTO spot VALUES(24,'泰国','暹罗广场');
INSERT INTO spot VALUES(25,'泰国','芭提雅');


#图片总表
CREATE TABLE img(
	iid INT PRIMARY KEY AUTO_INCREMENT,
	sid INT,
	iimg_170_240 VARCHAR(50),
	iimg_270_165 VARCHAR(50),
	iimg_380_220 VARCHAR(50),
	iimg_390_552 VARCHAR(50)
);
#峨眉山
INSERT INTO img VALUES(1,1,"http://127.0.0.1:3001/img/170-240/china-emeishan01.png","http://127.0.0.1:3001/img/270-165/china-emeishan01.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan01.png",
"http://127.0.0.1:3001/img/390-550/china-emeishan01.png");
INSERT INTO img VALUES(2,1,"http://127.0.0.1:3001/img/170-240/china-emeishan02.png","http://127.0.0.1:3001/img/270-165/china-emeishan02.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan02.png",
"http://127.0.0.1:3001/img/390-550/china-emeishan02.png");
INSERT INTO img VALUES(3,1,"http://127.0.0.1:3001/img/170-240/china-emeishan03.png","http://127.0.0.1:3001/img/270-165/china-emeishan03.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan03.png",
"http://127.0.0.1:3001/img/390-550/china-emeishan03.png");
INSERT INTO img VALUES(4,1,"http://127.0.0.1:3001/img/170-240/china-emeishan04.png","http://127.0.0.1:3001/img/270-165/china-emeishan04.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan04.png",
"http://127.0.0.1:3001/img/390-550/china-emeishan04.png");
INSERT INTO img VALUES(5,1,"http://127.0.0.1:3001/img/170-240/china-emeishan05.png","http://127.0.0.1:3001/img/270-165/china-emeishan05.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan05.png",
"http://127.0.0.1:3001/img/390-550/china-emeishan05.png");
#黄山
INSERT INTO img VALUES(6,2,"http://127.0.0.1:3001/img/170-240/china-huangshan01.png","http://127.0.0.1:3001/img/270-165/china-huangshan01.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan01.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan01.png");
INSERT INTO img VALUES(7,2,"http://127.0.0.1:3001/img/170-240/china-huangshan02.png","http://127.0.0.1:3001/img/270-165/china-huangshan02.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan02.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan02.png");
INSERT INTO img VALUES(8,2,"http://127.0.0.1:3001/img/170-240/china-huangshan03.png","http://127.0.0.1:3001/img/270-165/china-huangshan03.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan03.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan03.png");
INSERT INTO img VALUES(9,2,"http://127.0.0.1:3001/img/170-240/china-huangshan04.png","http://127.0.0.1:3001/img/270-165/china-huangshan04.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan04.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan04.png");
INSERT INTO img VALUES(10,2,"http://127.0.0.1:3001/img/170-240/china-huangshan05.png","http://127.0.0.1:3001/img/270-165/china-huangshan05.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan05.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan05.png");
INSERT INTO img VALUES(11,2,"http://127.0.0.1:3001/img/170-240/china-huangshan06.png","http://127.0.0.1:3001/img/270-165/china-huangshan06.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan06.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan06.png");
INSERT INTO img VALUES(12,2,"http://127.0.0.1:3001/img/170-240/china-huangshan07.png","http://127.0.0.1:3001/img/270-165/china-huangshan07.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan07.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan07.png");
#九寨沟
INSERT INTO img VALUES(13,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou01.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou01.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou01.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou01.png");
INSERT INTO img VALUES(14,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou02.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou02.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou02.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou02.png");
INSERT INTO img VALUES(15,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou03.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou03.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou03.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou03.png");
INSERT INTO img VALUES(16,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou04.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou04.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou04.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou04.png");
INSERT INTO img VALUES(17,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou05.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou05.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou05.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou05.png");
INSERT INTO img VALUES(18,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou06.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou06.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou06.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou06.png");
INSERT INTO img VALUES(19,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou07.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou07.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou07.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou07.png");
INSERT INTO img VALUES(20,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou08.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou08.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou08.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou08.png");






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
