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
"http://127.0.0.1:3001/img/carousel/lb23.png",
"http://127.0.0.1:3001/img/carousel/lb23_500x250.png",NULL,NULL,null,null);

#景点表
CREATE TABLE spot(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	country VARCHAR(48),
	spot VARCHAR(48),
	hot INT
);
#中国
INSERT INTO spot VALUES(1,"中国","峨眉山",1);
INSERT INTO spot VALUES(2,"中国","黄山",4);
INSERT INTO spot VALUES(3,"中国","九寨沟",1);
INSERT INTO spot VALUES(4,"中国","青海湖",2);
INSERT INTO spot VALUES(5,"中国","西藏",5);
INSERT INTO spot VALUES(6,"中国","台湾",5);
#韩国
INSERT INTO spot VALUES(7,"韩国","釜山",4);
INSERT INTO spot VALUES(8,"韩国","京畿道",1);
INSERT INTO spot VALUES(9,"韩国","江原道",2);
INSERT INTO spot VALUES(10,"韩国","济州岛",3);
INSERT INTO spot VALUES(11,"韩国","仁川",5);
#马来西亚
INSERT INTO spot VALUES(12,"马来西亚",null,1);
#尼泊尔
INSERT INTO spot VALUES(13,"尼泊尔",null,2);
#菲律宾
INSERT INTO spot VALUES(14,"菲律宾",null,2);
#日本
INSERT INTO spot VALUES(15,"日本","北海道",1);
INSERT INTO spot VALUES(16,"日本","大阪",5);
INSERT INTO spot VALUES(17,"日本","金阁寺",1);
INSERT INTO spot VALUES(18,"日本","奈良",4);
INSERT INTO spot VALUES(19,"日本","宇和岛城",3);
#新加坡
INSERT INTO spot VALUES(20,"新加坡",null,3);
#泰国
INSERT INTO spot VALUES(21,"泰国","曼谷",5);
INSERT INTO spot VALUES(22,"泰国","普吉岛",2);
INSERT INTO spot VALUES(23,"泰国","清迈",4);
INSERT INTO spot VALUES(24,"泰国","东芭乐园",1);
INSERT INTO spot VALUES(25,"泰国","暹罗广场",2);
INSERT INTO spot VALUES(26,"泰国","芭提雅",3);


#图片总表
CREATE TABLE img(
	iid INT PRIMARY KEY AUTO_INCREMENT,
	sid INT,
	iimg_170_240 VARCHAR(80),
	iimg_270_165 VARCHAR(80),
	iimg_380_220 VARCHAR(80),
	iimg_390_552 VARCHAR(80)
);
#峨眉山
INSERT INTO img VALUES(1,1,"http://127.0.0.1:3001/img/170-240/china-emeishan01.png","http://127.0.0.1:3001/img/270-165/china-emeishan01.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan01_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-emeishan01_390_552.png");
INSERT INTO img VALUES(2,1,"http://127.0.0.1:3001/img/170-240/china-emeishan02.png","http://127.0.0.1:3001/img/270-165/china-emeishan02.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan02_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-emeishan02_390_552.png");
INSERT INTO img VALUES(3,1,"http://127.0.0.1:3001/img/170-240/china-emeishan03.png","http://127.0.0.1:3001/img/270-165/china-emeishan03.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan03_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-emeishan03_390_552.png");
INSERT INTO img VALUES(4,1,"http://127.0.0.1:3001/img/170-240/china-emeishan04.png","http://127.0.0.1:3001/img/270-165/china-emeishan04.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan04_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-emeishan04_390_552.png");
INSERT INTO img VALUES(5,1,"http://127.0.0.1:3001/img/170-240/china-emeishan05.png","http://127.0.0.1:3001/img/270-165/china-emeishan05.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan05_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-emeishan05_390_552.png");
#黄山
INSERT INTO img VALUES(6,2,"http://127.0.0.1:3001/img/170-240/china-huangshan01.png","http://127.0.0.1:3001/img/270-165/china-huangshan01.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan01_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan01_390_552.png");
INSERT INTO img VALUES(7,2,"http://127.0.0.1:3001/img/170-240/china-huangshan02.png","http://127.0.0.1:3001/img/270-165/china-huangshan02.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan02_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan02_390_552.png");
INSERT INTO img VALUES(8,2,"http://127.0.0.1:3001/img/170-240/china-huangshan03.png","http://127.0.0.1:3001/img/270-165/china-huangshan03.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan03_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan03_390_552.png");
INSERT INTO img VALUES(9,2,"http://127.0.0.1:3001/img/170-240/china-huangshan04.png","http://127.0.0.1:3001/img/270-165/china-huangshan04.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan04_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan04_390_552.png");
INSERT INTO img VALUES(10,2,"http://127.0.0.1:3001/img/170-240/china-huangshan05.png","http://127.0.0.1:3001/img/270-165/china-huangshan05.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan05_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan05_390_552.png");
INSERT INTO img VALUES(11,2,"http://127.0.0.1:3001/img/170-240/china-huangshan07.png","http://127.0.0.1:3001/img/270-165/china-huangshan07.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan07_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan07_390_552.png");
INSERT INTO img VALUES(12,2,"http://127.0.0.1:3001/img/170-240/china-huangshan09.png","http://127.0.0.1:3001/img/270-165/china-huangshan09.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan09_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-huangshan09_390_552.png");
#九寨沟
INSERT INTO img VALUES(13,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou01.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou01.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou01_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou01_390_552.png");
INSERT INTO img VALUES(14,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou02.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou02.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou02_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou02_390_552.png");
INSERT INTO img VALUES(15,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou03.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou03.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou03_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou03_390_552.png");
INSERT INTO img VALUES(16,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou04.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou04.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou04_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou04_390_552.png");
INSERT INTO img VALUES(17,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou05.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou05.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou05_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou05_390_552.png");
INSERT INTO img VALUES(18,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou06.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou06.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou06_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou06_390_552.png");
INSERT INTO img VALUES(19,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou07.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou07.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou07_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou07_390_552.png");
INSERT INTO img VALUES(20,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou08.png","http://127.0.0.1:3001/img/270-165/china-jiuzhaigou08.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou08_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-jiuzhaigou08_390_552.png");
#青海湖
INSERT INTO img VALUES(21,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu01.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu01.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu01_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-qinghaihu01_390_552.png");
INSERT INTO img VALUES(22,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu02.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu02.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu02_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-qinghaihu02_390_552.png");
INSERT INTO img VALUES(23,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu03.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu03.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu03_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-qinghaihu03_390_552.png");
INSERT INTO img VALUES(24,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu04.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu04.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu04_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-qinghaihu04_390_552.png");
INSERT INTO img VALUES(25,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu05.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu05.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu05_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-qinghaihu05_390_552.png");
INSERT INTO img VALUES(26,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu06.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu06.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu06_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-qinghaihu06_390_552.png");
INSERT INTO img VALUES(27,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu07.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu07.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu07_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-qinghaihu07_390_552.png");
INSERT INTO img VALUES(28,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu08.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu08.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu08_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-qinghaihu08_390_552.png");
#西藏
INSERT INTO img VALUES(29,5,"http://127.0.0.1:3001/img/170-240/china-xizang01.png",
"http://127.0.0.1:3001/img/270-165/china-xizang01.png",
"http://127.0.0.1:3001/img/380-220/china-xizang01_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-xizang01_390_552.png");
INSERT INTO img VALUES(30,5,"http://127.0.0.1:3001/img/170-240/china-xizang02.png",
"http://127.0.0.1:3001/img/270-165/china-xizang02.png",
"http://127.0.0.1:3001/img/380-220/china-xizang02_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-xizang02_390_552.png");
INSERT INTO img VALUES(31,5,"http://127.0.0.1:3001/img/170-240/china-xizang03.png",
"http://127.0.0.1:3001/img/270-165/china-xizang03.png",
"http://127.0.0.1:3001/img/380-220/china-xizang03_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-xizang03_390_552.png");
INSERT INTO img VALUES(32,5,"http://127.0.0.1:3001/img/170-240/china-xizang04.png",
"http://127.0.0.1:3001/img/270-165/china-xizang04.png",
"http://127.0.0.1:3001/img/380-220/china-xizang04_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-xizang04_390_552.png");
INSERT INTO img VALUES(33,5,"http://127.0.0.1:3001/img/170-240/china-xizang05.png",
"http://127.0.0.1:3001/img/270-165/china-xizang05.png",
"http://127.0.0.1:3001/img/380-220/china-xizang05_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-xizang05_390_552.png");
INSERT INTO img VALUES(34,5,"http://127.0.0.1:3001/img/170-240/china-xizang06.png",
"http://127.0.0.1:3001/img/270-165/china-xizang06.png",
"http://127.0.0.1:3001/img/380-220/china-xizang06_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-xizang06_390_552.png");
INSERT INTO img VALUES(35,5,"http://127.0.0.1:3001/img/170-240/china-xizang07.png",
"http://127.0.0.1:3001/img/270-165/china-xizang07.png",
"http://127.0.0.1:3001/img/380-220/china-xizang07_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-xizang07_390_552.png");
INSERT INTO img VALUES(36,5,"http://127.0.0.1:3001/img/170-240/china-xizang08.png",
"http://127.0.0.1:3001/img/270-165/china-xizang08.png",
"http://127.0.0.1:3001/img/380-220/china-xizang08_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-xizang08_390_552.png");
INSERT INTO img VALUES(39,5,"http://127.0.0.1:3001/img/170-240/china-xizang09.png",
"http://127.0.0.1:3001/img/270-165/china-xizang09.png",
"http://127.0.0.1:3001/img/380-220/china-xizang09_368_220.png",
"http://127.0.0.1:3001/img/390-550/china-xizang09_390_552.png");
#台湾
INSERT INTO img VALUES(40,6,"http://127.0.0.1:3001/img/170-240/tw.png",
"http://127.0.0.1:3001/img/270-165/tw.png",
"http://127.0.0.1:3001/img/380-220/tw368_220.png",
"http://127.0.0.1:3001/img/390-550/tw.png");
INSERT INTO img VALUES(41,6,"http://127.0.0.1:3001/img/170-240/tw_101.png",
"http://127.0.0.1:3001/img/270-165/tw_101.png",
"http://127.0.0.1:3001/img/380-220/tw_101_368_220.png",
"http://127.0.0.1:3001/img/390-550/tw_101.png");
INSERT INTO img VALUES(42,6,"http://127.0.0.1:3001/img/170-240/tw_gx.png",
"http://127.0.0.1:3001/img/270-165/tw_gx.png",
"http://127.0.0.1:3001/img/380-220/tw_gx368_220.png",
"http://127.0.0.1:3001/img/390-550/tw_gx.png");
INSERT INTO img VALUES(43,6,"http://127.0.0.1:3001/img/170-240/tw_kd.png",
"http://127.0.0.1:3001/img/270-165/tw_kd.png",
"http://127.0.0.1:3001/img/380-220/tw_kd368_220.png",
"http://127.0.0.1:3001/img/390-550/tw_kd.png");
INSERT INTO img VALUES(44,6,"http://127.0.0.1:3001/img/170-240/tw_nh.png",
"http://127.0.0.1:3001/img/270-165/tw_nh.png",
"http://127.0.0.1:3001/img/380-220/tw_nh368_220.png",
"http://127.0.0.1:3001/img/390-550/tw_nh.png");
INSERT INTO img VALUES(45,6,"http://127.0.0.1:3001/img/170-240/tw_xj.png",
"http://127.0.0.1:3001/img/270-165/tw_xj.png",
"http://127.0.0.1:3001/img/380-220/tw_xj368_220.png",
"http://127.0.0.1:3001/img/390-550/tw_xj.png");
INSERT INTO img VALUES(46,6,"http://127.0.0.1:3001/img/170-240/tw-dbj.png",
"http://127.0.0.1:3001/img/270-165/tw-dbj.png",
"http://127.0.0.1:3001/img/380-220/tw-dbj368_220.png",
"http://127.0.0.1:3001/img/390-550/tw-dbj.png");

#釜山
INSERT INTO img VALUES(47,7,"http://127.0.0.1:3001/img/170-240/hg_fs.png",
"http://127.0.0.1:3001/img/270-165/hg_fs.png",
"http://127.0.0.1:3001/img/380-220/hg_fs368_220.png",
"http://127.0.0.1:3001/img/390-550/hg_fs.png");
#京畿道
INSERT INTO img VALUES(48,8,"http://127.0.0.1:3001/img/170-240/hg_jjd.png",
"http://127.0.0.1:3001/img/270-165/hg_jjd.png",
"http://127.0.0.1:3001/img/380-220/hg_jjd368_220.png",
"http://127.0.0.1:3001/img/390-550/hg_jjd.png");
#江原道
INSERT INTO img VALUES(49,9,"http://127.0.0.1:3001/img/170-240/hg_jyd.png",
"http://127.0.0.1:3001/img/270-165/hg_jyd.png",
"http://127.0.0.1:3001/img/380-220/hg_jyd368_220.png",
"http://127.0.0.1:3001/img/390-550/hg_jyd.png");
#济州岛
INSERT INTO img VALUES(50,10,"http://127.0.0.1:3001/img/170-240/hg_jzd.png",
"http://127.0.0.1:3001/img/270-165/hg_jzd.png",
"http://127.0.0.1:3001/img/380-220/hg_jzd368_220.png",
"http://127.0.0.1:3001/img/390-550/hg_jzd.png");
#仁川
INSERT INTO img VALUES(51,11,"http://127.0.0.1:3001/img/170-240/hg_rc.png",
"http://127.0.0.1:3001/img/270-165/hg_rc.png",
"http://127.0.0.1:3001/img/380-220/hg_rc368_220.png",
"http://127.0.0.1:3001/img/390-550/hg_rc.png");


#马来西亚
INSERT INTO img VALUES(52,12,"http://127.0.0.1:3001/img/170-240/Malaysia01.png",
"http://127.0.0.1:3001/img/270-165/Malaysia01.png",
"http://127.0.0.1:3001/img/380-220/Malaysia01_368_220.png",
"http://127.0.0.1:3001/img/390-550/Malaysia01_390_552.png");
INSERT INTO img VALUES(53,12,"http://127.0.0.1:3001/img/170-240/Malaysia02.png",
"http://127.0.0.1:3001/img/270-165/Malaysia02.png",
"http://127.0.0.1:3001/img/380-220/Malaysia02_368_220.png",
"http://127.0.0.1:3001/img/390-550/Malaysia02_390_552.png");
INSERT INTO img VALUES(54,12,"http://127.0.0.1:3001/img/170-240/Malaysia03.png",
"http://127.0.0.1:3001/img/270-165/Malaysia03.png",
"http://127.0.0.1:3001/img/380-220/Malaysia03_368_220.png",
"http://127.0.0.1:3001/img/390-550/Malaysia03_390_552.png");
INSERT INTO img VALUES(55,12,"http://127.0.0.1:3001/img/170-240/Malaysia04.png",
"http://127.0.0.1:3001/img/270-165/Malaysia04.png",
"http://127.0.0.1:3001/img/380-220/Malaysia04_368_220.png",
"http://127.0.0.1:3001/img/390-550/Malaysia04_390_552.png");
INSERT INTO img VALUES(56,12,"http://127.0.0.1:3001/img/170-240/Malaysia05.png",
"http://127.0.0.1:3001/img/270-165/Malaysia05.png",
"http://127.0.0.1:3001/img/380-220/Malaysia05_368_220.png",
"http://127.0.0.1:3001/img/390-550/Malaysia05_390_552.png");
INSERT INTO img VALUES(57,12,"http://127.0.0.1:3001/img/170-240/Malaysia06.png",
"http://127.0.0.1:3001/img/270-165/Malaysia06.png",
"http://127.0.0.1:3001/img/380-220/Malaysia06_368_220.png",
"http://127.0.0.1:3001/img/390-550/Malaysia06_390_552.png");
INSERT INTO img VALUES(58,12,"http://127.0.0.1:3001/img/170-240/Malaysia07.png",
"http://127.0.0.1:3001/img/270-165/Malaysia07.png",
"http://127.0.0.1:3001/img/380-220/Malaysia07_368_220.png",
"http://127.0.0.1:3001/img/390-550/Malaysia07_390_552.png");
INSERT INTO img VALUES(59,12,"http://127.0.0.1:3001/img/170-240/Malaysia08.png",
"http://127.0.0.1:3001/img/270-165/Malaysia08.png",
"http://127.0.0.1:3001/img/380-220/Malaysia08_368_220.png",
"http://127.0.0.1:3001/img/390-550/Malaysia08_390_552.png");
INSERT INTO img VALUES(60,12,"http://127.0.0.1:3001/img/170-240/Malaysia09.png",
"http://127.0.0.1:3001/img/270-165/Malaysia09.png",
"http://127.0.0.1:3001/img/380-220/Malaysia09_368_220.png",
"http://127.0.0.1:3001/img/390-550/Malaysia09_390_552.png");
INSERT INTO img VALUES(61,12,"http://127.0.0.1:3001/img/170-240/Malaysia10.png",
"http://127.0.0.1:3001/img/270-165/Malaysia10.png",
"http://127.0.0.1:3001/img/380-220/Malaysia10_368_220.png",
"http://127.0.0.1:3001/img/390-550/Malaysia10_390_552.png");
#尼泊尔
INSERT INTO img VALUES(62,13,"http://127.0.0.1:3001/img/170-240/Nepal01.png",
"http://127.0.0.1:3001/img/270-165/Nepal01.png",
"http://127.0.0.1:3001/img/380-220/Nepal01_368_220.png",
"http://127.0.0.1:3001/img/390-550/Nepal01_390_552.png");
INSERT INTO img VALUES(63,13,"http://127.0.0.1:3001/img/170-240/Nepal02.png",
"http://127.0.0.1:3001/img/270-165/Nepal02.png",
"http://127.0.0.1:3001/img/380-220/Nepal02_368_220.png",
"http://127.0.0.1:3001/img/390-550/Nepal02_390_552.png");
INSERT INTO img VALUES(64,13,"http://127.0.0.1:3001/img/170-240/Nepal03.png",
"http://127.0.0.1:3001/img/270-165/Nepal03.png",
"http://127.0.0.1:3001/img/380-220/Nepal03_368_220.png",
"http://127.0.0.1:3001/img/390-550/Nepal03_390_552.png");
INSERT INTO img VALUES(65,13,"http://127.0.0.1:3001/img/170-240/Nepal04.png",
"http://127.0.0.1:3001/img/270-165/Nepal04.png",
"http://127.0.0.1:3001/img/380-220/Nepal04_368_220.png",
"http://127.0.0.1:3001/img/390-550/Nepal04_390_552.png");
INSERT INTO img VALUES(66,13,"http://127.0.0.1:3001/img/170-240/Nepal06.png",
"http://127.0.0.1:3001/img/270-165/Nepal06.png",
"http://127.0.0.1:3001/img/380-220/Nepal06_368_220.png",
"http://127.0.0.1:3001/img/390-550/Nepal06_390_552.png");
INSERT INTO img VALUES(67,13,"http://127.0.0.1:3001/img/170-240/Nepal07.png",
"http://127.0.0.1:3001/img/270-165/Nepal07.png",
"http://127.0.0.1:3001/img/380-220/Nepal07_368_220.png",
"http://127.0.0.1:3001/img/390-550/Nepal07_390_552.png");
INSERT INTO img VALUES(68,13,"http://127.0.0.1:3001/img/170-240/Nepal09.png",
"http://127.0.0.1:3001/img/270-165/Nepal09.png",
"http://127.0.0.1:3001/img/380-220/Nepal09_368_220.png",
"http://127.0.0.1:3001/img/390-550/Nepal09_390_552.png");
INSERT INTO img VALUES(69,13,"http://127.0.0.1:3001/img/170-240/Nepal10.png",
"http://127.0.0.1:3001/img/270-165/Nepal10.png",
"http://127.0.0.1:3001/img/380-220/Nepal10_368_220.png",
"http://127.0.0.1:3001/img/390-550/Nepal10_390_552.png");
INSERT INTO img VALUES(70,13,"http://127.0.0.1:3001/img/170-240/Nepal11.png",
"http://127.0.0.1:3001/img/270-165/Nepal11.png",
"http://127.0.0.1:3001/img/380-220/Nepal11_368_220.png",
"http://127.0.0.1:3001/img/390-550/Nepal11_390_552.png");

#菲律宾
INSERT INTO img VALUES(71,14,"http://127.0.0.1:3001/img/170-240/Philippine01.png",
"http://127.0.0.1:3001/img/270-165/Philippine01.png",
"http://127.0.0.1:3001/img/380-220/Philippine01_368_220.png",
"http://127.0.0.1:3001/img/390-550/Philippine01_390_552.png");
INSERT INTO img VALUES(72,14,"http://127.0.0.1:3001/img/170-240/Philippine04.png",
"http://127.0.0.1:3001/img/270-165/Philippine04.png",
"http://127.0.0.1:3001/img/380-220/Philippine04_368_220.png",
"http://127.0.0.1:3001/img/390-550/Philippine04_390_552.png");
INSERT INTO img VALUES(73,14,"http://127.0.0.1:3001/img/170-240/Philippine05.png",
"http://127.0.0.1:3001/img/270-165/Philippine05.png",
"http://127.0.0.1:3001/img/380-220/Philippine05_368_220.png",
"http://127.0.0.1:3001/img/390-550/Philippine05_390_552.png");
INSERT INTO img VALUES(74,14,"http://127.0.0.1:3001/img/170-240/Philippine06.png",
"http://127.0.0.1:3001/img/270-165/Philippine06.png",
"http://127.0.0.1:3001/img/380-220/Philippine06_368_220.png",
"http://127.0.0.1:3001/img/390-550/Philippine06_390_552.png");
INSERT INTO img VALUES(75,14,"http://127.0.0.1:3001/img/170-240/Philippine07.png",
"http://127.0.0.1:3001/img/270-165/Philippine07.png",
"http://127.0.0.1:3001/img/380-220/Philippine07_368_220.png",
"http://127.0.0.1:3001/img/390-550/Philippine07_390_552.png");
INSERT INTO img VALUES(76,14,"http://127.0.0.1:3001/img/170-240/Philippine08.png",
"http://127.0.0.1:3001/img/270-165/Philippine08.png",
"http://127.0.0.1:3001/img/380-220/Philippine08_368_220.png",
"http://127.0.0.1:3001/img/390-550/Philippine08_390_552.png");
INSERT INTO img VALUES(77,14,"http://127.0.0.1:3001/img/170-240/Philippine11.png",
"http://127.0.0.1:3001/img/270-165/Philippine11.png",
"http://127.0.0.1:3001/img/380-220/Philippine11_368_220.png",
"http://127.0.0.1:3001/img/390-550/Philippine11_390_552.png");
#北海道
INSERT INTO img VALUES(78,15,"http://127.0.0.1:3001/img/170-240/rb_bhd.png",
"http://127.0.0.1:3001/img/270-165/rb_bhd.png",
"http://127.0.0.1:3001/img/380-220/rb_bhd368_220.png",
"http://127.0.0.1:3001/img/390-550/rb_bhd.png");
#大阪
INSERT INTO img VALUES(79,16,"http://127.0.0.1:3001/img/170-240/rb_db.png",
"http://127.0.0.1:3001/img/270-165/rb_db.png",
"http://127.0.0.1:3001/img/380-220/rb_db368_220.png",
"http://127.0.0.1:3001/img/390-550/rb_db.png");
#金阁寺
INSERT INTO img VALUES(80,17,"http://127.0.0.1:3001/img/170-240/rb_jgs.png",
"http://127.0.0.1:3001/img/270-165/rb_jgs.png",
"http://127.0.0.1:3001/img/380-220/rb_jgs368_220.png",
"http://127.0.0.1:3001/img/390-550/rb_jgs.png");
#奈良
INSERT INTO img VALUES(81,18,"http://127.0.0.1:3001/img/170-240/rb_nl.png",
"http://127.0.0.1:3001/img/270-165/rb_nl.png",
"http://127.0.0.1:3001/img/380-220/rb_nl368_220.png",
"http://127.0.0.1:3001/img/390-550/rb_nl.png");
#宇和岛城
INSERT INTO img VALUES(82,19,"http://127.0.0.1:3001/img/170-240/rb_yhdc.png",
"http://127.0.0.1:3001/img/270-165/rb_yhdc.png",
"http://127.0.0.1:3001/img/380-220/rb_yhdc368_220.png",
"http://127.0.0.1:3001/img/390-550/rb_yhdc.png");
#新加坡
INSERT INTO img VALUES(83,20,"http://127.0.0.1:3001/img/170-240/Singapore02.png",
"http://127.0.0.1:3001/img/270-165/Singapore02.png",
"http://127.0.0.1:3001/img/380-220/Singapore02_368_220.png",
"http://127.0.0.1:3001/img/390-550/Singapore02_390_552.png");
INSERT INTO img VALUES(84,20,"http://127.0.0.1:3001/img/170-240/Singapore03.png",
"http://127.0.0.1:3001/img/270-165/Singapore03.png",
"http://127.0.0.1:3001/img/380-220/Singapore03_368_220.png",
"http://127.0.0.1:3001/img/390-550/Singapore03_390_552.png");
INSERT INTO img VALUES(85,20,"http://127.0.0.1:3001/img/170-240/Singapore04.png",
"http://127.0.0.1:3001/img/270-165/Singapore04.png",
"http://127.0.0.1:3001/img/380-220/Singapore04_368_220.png",
"http://127.0.0.1:3001/img/390-550/Singapore04_390_552.png");
INSERT INTO img VALUES(86,20,"http://127.0.0.1:3001/img/170-240/Singapore05.png",
"http://127.0.0.1:3001/img/270-165/Singapore05.png",
"http://127.0.0.1:3001/img/380-220/Singapore05_368_220.png",
"http://127.0.0.1:3001/img/390-550/Singapore05_390_552.png");
INSERT INTO img VALUES(87,20,"http://127.0.0.1:3001/img/170-240/Singapore06.png",
"http://127.0.0.1:3001/img/270-165/Singapore06.png",
"http://127.0.0.1:3001/img/380-220/Singapore06_368_220.png",
"http://127.0.0.1:3001/img/390-550/Singapore06_390_552.png");
INSERT INTO img VALUES(88,20,"http://127.0.0.1:3001/img/170-240/Singapore07.png",
"http://127.0.0.1:3001/img/270-165/Singapore07.png",
"http://127.0.0.1:3001/img/380-220/Singapore07_368_220.png",
"http://127.0.0.1:3001/img/390-550/Singapore07_390_552.png");
INSERT INTO img VALUES(89,20,"http://127.0.0.1:3001/img/170-240/Singapore08.png",
"http://127.0.0.1:3001/img/270-165/Singapore08.png",
"http://127.0.0.1:3001/img/380-220/Singapore08_368_220.png",
"http://127.0.0.1:3001/img/390-550/Singapore08_390_552.png");
INSERT INTO img VALUES(90,20,"http://127.0.0.1:3001/img/170-240/Singapore09.png",
"http://127.0.0.1:3001/img/270-165/Singapore09.png",
"http://127.0.0.1:3001/img/380-220/Singapore09_368_220.png",
"http://127.0.0.1:3001/img/390-550/Singapore09_390_552.png");
INSERT INTO img VALUES(91,20,"http://127.0.0.1:3001/img/170-240/Singapore10.png",
"http://127.0.0.1:3001/img/270-165/Singapore10.png",
"http://127.0.0.1:3001/img/380-220/Singapore10_368_220.png",
"http://127.0.0.1:3001/img/390-550/Singapore10_390_552.png");
INSERT INTO img VALUES(92,20,"http://127.0.0.1:3001/img/170-240/Singapore11.png",
"http://127.0.0.1:3001/img/270-165/Singapore11.png",
"http://127.0.0.1:3001/img/380-220/Singapore11_368_220.png",
"http://127.0.0.1:3001/img/390-550/Singapore11_390_552.png");

#曼谷
INSERT INTO img VALUES(93,21,"http://127.0.0.1:3001/img/170-240/tg_mg.png",
"http://127.0.0.1:3001/img/270-165/tg_mg.png",
"http://127.0.0.1:3001/img/380-220/tg_mg368_220.png",
"http://127.0.0.1:3001/img/390-550/tg_mg.png");
#普吉岛
INSERT INTO img VALUES(94,22,"http://127.0.0.1:3001/img/170-240/tg_pjd.png",
"http://127.0.0.1:3001/img/270-165/tg_pjd.png",
"http://127.0.0.1:3001/img/380-220/tg_pjd368_220.png",
"http://127.0.0.1:3001/img/390-550/tg_pjd.png");
#清迈市
INSERT INTO img VALUES(95,23,"http://127.0.0.1:3001/img/170-240/tg_qms.png",
"http://127.0.0.1:3001/img/270-165/tg_qms.png",
"http://127.0.0.1:3001/img/380-220/tg_qms368_220.png",
"http://127.0.0.1:3001/img/390-550/tg_qms.png");
#东芭乐园
INSERT INTO img VALUES(96,24,"http://127.0.0.1:3001/img/170-240/tg_dbly.png",
"http://127.0.0.1:3001/img/270-165/tg_dbly.png",
"http://127.0.0.1:3001/img/380-220/tg_dbly368_220.png",
"http://127.0.0.1:3001/img/390-550/tg_dbly.png");
#暹罗广场
INSERT INTO img VALUES(97,25,"http://127.0.0.1:3001/img/170-240/tg_llgc.png",
"http://127.0.0.1:3001/img/270-165/tg_llgc.png",
"http://127.0.0.1:3001/img/380-220/tg_llgc368_220.png",
"http://127.0.0.1:3001/img/390-550/tg_llgc.png");
#芭提雅
INSERT INTO img VALUES(98,26,"http://127.0.0.1:3001/img/170-240/tg_bty.png",
"http://127.0.0.1:3001/img/270-165/tg_bty.png",
"http://127.0.0.1:3001/img/380-220/tg_bty368_220.png",
"http://127.0.0.1:3001/img/390-550/tg_bty.png");

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
