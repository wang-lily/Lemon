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
insert into user values(null,'jack','aa123456','13012345678',1,'jack@163.com',null,'我是jack');
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
	tip VARCHAR(50),
	#所属主题
	theme VARCHAR(10)


);
INSERT INTO carousel VALUES(1,"中国","西藏","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb01.png","http://127.0.0.1:3001/img/carousel/lb01_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb01.png",'Nov.2018','2','来一场说走就走的旅行...',"人文");
INSERT INTO carousel VALUES(2,"中国","台湾","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb02.png","http://127.0.0.1:3001/img/carousel/lb02_500x250.png",NULL,NULL,NULL,NULL,"美食");
INSERT INTO carousel VALUES(3,NULL,NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb03.png","http://127.0.0.1:3001/img/carousel/lb03_500x250.png",NULL,NULL,NULL,NULL,"山水");
INSERT INTO carousel VALUES(4,"法国","巴黎","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb04.png","http://127.0.0.1:3001/img/carousel/lb04_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb04.png",'Nov.2016','15','我和你就像一座埃菲尔铁塔和爱琴海。',"休闲");
INSERT INTO carousel VALUES(5,NULL,NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb05.png","http://127.0.0.1:3001/img/carousel/lb05_500x250.png",NULL,NULL,NULL,NULL,"美食");
INSERT INTO carousel VALUES(6,"新加坡",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb06.png","http://127.0.0.1:3001/img/carousel/lb06_500x250.png",NULL,NULL,NULL,NULL,"美食");
INSERT INTO carousel VALUES(7,"尼泊尔",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb07.png","http://127.0.0.1:3001/img/carousel/lb07_500x250.png",NULL,NULL,NULL,NULL,"休闲");
INSERT INTO carousel VALUES(8,"中国","青海","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb08.png","http://127.0.0.1:3001/img/carousel/lb08_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb08.png",'Nov.2017','4','生活就像一盒巧克力。',"山水");
INSERT INTO carousel VALUES(9,"中国","九寨沟","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb09.png","http://127.0.0.1:3001/img/carousel/lb09_500x250.png",NULL,NULL,NULL,NULL,"山水");
INSERT INTO carousel VALUES(10,"法国","巴黎","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb10.png","http://127.0.0.1:3001/img/carousel/lb10_500x250.png",NULL,NULL,NULL,NULL,"休闲");
INSERT INTO carousel VALUES(11,"中国","杭州","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb11.png","http://127.0.0.1:3001/img/carousel/lb11_500x250.png",NULL,NULL,NULL,NULL,"人文");
INSERT INTO carousel VALUES(12,"中国","苏州","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb12.png","http://127.0.0.1:3001/img/carousel/lb12_500x250.png",NULL,NULL,NULL,NULL,"人文");
INSERT INTO carousel VALUES(13,"中国","青海","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb13.png","http://127.0.0.1:3001/img/carousel/lb13_500x250.png",NULL,NULL,NULL,NULL,"休闲");
INSERT INTO carousel VALUES(14,"马来西亚",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb14.png","http://127.0.0.1:3001/img/carousel/lb14_500x250.png",NULL,NULL,NULL,NULL,"海岛");
INSERT INTO carousel VALUES(15,"新加坡",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb15.png","http://127.0.0.1:3001/img/carousel/lb15_500x250.png",NULL,NULL,NULL,NULL,"休闲");
INSERT INTO carousel VALUES(16,"尼泊尔",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb16.png","http://127.0.0.1:3001/img/carousel/lb16_500x250.png",NULL,NULL,NULL,NULL,"人文");
INSERT INTO carousel VALUES(17,NULL,NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb17.png","http://127.0.0.1:3001/img/carousel/lb17_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb17.png",'Nov.2016','22','听说摩天轮的每个格子里都装满幸福...',"美食");
INSERT INTO carousel VALUES(18,"日本",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb18.png","http://127.0.0.1:3001/img/carousel/lb18_500x250.png","http://127.0.0.1:3001/img/carousel/sm_lb18.png",'Nov.2018','12','是我选择了生活，而不是生活选择了我。',"美食");
INSERT INTO carousel VALUES(19,"菲律宾",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb19.png","http://127.0.0.1:3001/img/carousel/lb19_500x250.png",NULL,NULL,NULL,NULL,"海岛");
INSERT INTO carousel VALUES(20,"日本",NULL,"http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb20.png","http://127.0.0.1:3001/img/carousel/lb20_500x250.png",NULL,NULL,NULL,NULL,"人文");
INSERT INTO carousel VALUES(21,"中国","台湾","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb21.png","http://127.0.0.1:3001/img/carousel/lb21_500x250.png",NULL,NULL,NULL,NULL,"海岛");
INSERT INTO carousel VALUES(22,NULL,"西藏","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb22.png","http://127.0.0.1:3001/img/carousel/lb22_500_250.png",NULL,NULL,NULL,NULL,"休闲");
INSERT INTO carousel VALUES(23,"中国","香港","http://127.0.0.1:3001/img/carousel/picture.png",
"http://127.0.0.1:3001/img/carousel/lb23.png",
"http://127.0.0.1:3001/img/carousel/lb23_500x250.png",NULL,NULL,NULL,NULL,"美食");

#景点表
CREATE TABLE spot(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	country VARCHAR(48),
	spot VARCHAR(48),
	hot INT,
	click_rate INT
	
);
#中国
INSERT INTO spot VALUES(1,"中国","峨眉山",3,1111);
INSERT INTO spot VALUES(2,"中国","黄山",4,1112);
INSERT INTO spot VALUES(3,"中国","九寨沟",3,1113);
INSERT INTO spot VALUES(4,"中国","青海湖",2,1114);
INSERT INTO spot VALUES(5,"中国","西藏",5,1115);
INSERT INTO spot VALUES(6,"中国","台湾",5,1114);
#韩国
INSERT INTO spot VALUES(7,"韩国","釜山",4,1114);
INSERT INTO spot VALUES(8,"韩国","京畿道",1,1114);
INSERT INTO spot VALUES(9,"韩国","江原道",2,1114);
INSERT INTO spot VALUES(10,"韩国","济州岛",3,1118);
INSERT INTO spot VALUES(11,"韩国","仁川",5,1114);
INSERT INTO spot VALUES(12,"韩国","长岛",4,1119);
#马来西亚
INSERT INTO spot VALUES(13,"马来西亚",null,1,1120);
#尼泊尔
INSERT INTO spot VALUES(14,"尼泊尔",null,2,1114);
#菲律宾
INSERT INTO spot VALUES(15,"菲律宾",null,2,1114);
#日本
INSERT INTO spot VALUES(16,"日本","北海道",1,1114);
INSERT INTO spot VALUES(17,"日本","大阪",5,1114);
INSERT INTO spot VALUES(18,"日本","金阁寺",1,1114);
INSERT INTO spot VALUES(19,"日本","奈良",4,1114);
INSERT INTO spot VALUES(20,"日本","宇和岛城",3,1121);
INSERT INTO spot VALUES(21,"日本","富士山",4,1114);
#新加坡
INSERT INTO spot VALUES(22,"新加坡",null,3,1122);
#泰国
INSERT INTO spot VALUES(23,"泰国","曼谷",5,1114);
INSERT INTO spot VALUES(24,"泰国","普吉岛",2,1123);
INSERT INTO spot VALUES(25,"泰国","清迈",4,1114);
INSERT INTO spot VALUES(26,"泰国","东芭乐园",1,1114);
INSERT INTO spot VALUES(27,"泰国","暹罗广场",2,1114);
INSERT INTO spot VALUES(28,"泰国","芭提雅",3,1114);
#其他景点
INSERT INTO spot VALUES(DEFAULT,"中国","苏州",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","杭州",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","重庆",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","香港",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","成都",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","呼伦贝尔",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","哈尔滨",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","青岛",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","大连",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","云南",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","桂林",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","贵州",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","四姑娘山",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","泸沽湖",5,1110);
INSERT INTO spot VALUES(DEFAULT,"中国","上海",5,1110);


#图片总表
CREATE TABLE img(
	iid INT PRIMARY KEY AUTO_INCREMENT,
	sid INT,
	iimg_170_240 VARCHAR(80),
	iimg_270_165 VARCHAR(80),
	iimg_380_220 VARCHAR(80),
	iimg_390_552 VARCHAR(80),
	#所属季节0~11
	season INT,
	#所属主题
	theme VARCHAR(10)

);
#峨眉山
INSERT INTO img VALUES(null,1,"http://127.0.0.1:3001/img/170-240/china-emeishan01.png",
"http://127.0.0.1:3001/img/270-165/china-emeishan01.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan01_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-emeishan01_390_552.png",5,"山水");
INSERT INTO img VALUES(null,1,"http://127.0.0.1:3001/img/170-240/china-emeishan02.png",
"http://127.0.0.1:3001/img/270-165/china-emeishan02.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan02_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-emeishan02_390_552.png",0,"人文");
INSERT INTO img VALUES(null,1,"http://127.0.0.1:3001/img/170-240/china-emeishan03.png",
"http://127.0.0.1:3001/img/270-165/china-emeishan03.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan03_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-emeishan03_390_552.png",9,"美食");
INSERT INTO img VALUES(null,1,"http://127.0.0.1:3001/img/170-240/china-emeishan04.png",
"http://127.0.0.1:3001/img/270-165/china-emeishan04.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan04_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-emeishan04_390_552.png",10,NULL);
INSERT INTO img VALUES(null,1,"http://127.0.0.1:3001/img/170-240/china-emeishan05.png",
"http://127.0.0.1:3001/img/270-165/china-emeishan05.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan05_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-emeishan05_390_552.png",3,NULL);
INSERT INTO img VALUES(null,1,"http://127.0.0.1:3001/img/170-240/china-emeishan06.png",
"http://127.0.0.1:3001/img/270-165/china-emeishan06.png",
"http://127.0.0.1:3001/img/380-220/china-emeishan06_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-emeishan06_390_552.png",6,NULL);
#黄山
INSERT INTO img VALUES(null,2,"http://127.0.0.1:3001/img/170-240/china-huangshan01.png",
"http://127.0.0.1:3001/img/270-165/china-huangshan01.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan01_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-huangshan01_390_552.png",5,"山水");
INSERT INTO img VALUES(null,2,"http://127.0.0.1:3001/img/170-240/china-huangshan02.png",
"http://127.0.0.1:3001/img/270-165/china-huangshan02.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan02_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-huangshan02_390_552.png",1,"人文");
INSERT INTO img VALUES(null,2,"http://127.0.0.1:3001/img/170-240/china-huangshan03.png",
"http://127.0.0.1:3001/img/270-165/china-huangshan03.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan03_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-huangshan03_390_552.png",0,"美食");
INSERT INTO img VALUES(null,2,"http://127.0.0.1:3001/img/170-240/china-huangshan04.png",
"http://127.0.0.1:3001/img/270-165/china-huangshan04.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan04_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-huangshan04_390_552.png",9,NULL);
INSERT INTO img VALUES(null,2,"http://127.0.0.1:3001/img/170-240/china-huangshan05.png",
"http://127.0.0.1:3001/img/270-165/china-huangshan05.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan05_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-huangshan05_390_552.png",10,NULL);
INSERT INTO img VALUES(null,2,"http://127.0.0.1:3001/img/170-240/china-huangshan06.png",
"http://127.0.0.1:3001/img/270-165/china-huangshan06.png",
"http://127.0.0.1:3001/img/380-220/china-huangshan06_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-huangshan06_390_552.png",6,NULL);

#九寨沟
INSERT INTO img VALUES(null,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou01.png",
"http://127.0.0.1:3001/img/270-165/china-jiuzhaigou01.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou01_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-jiuzhaigou01_390_552.png",5,"山水");
INSERT INTO img VALUES(null,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou02.png",
"http://127.0.0.1:3001/img/270-165/china-jiuzhaigou02.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou02_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-jiuzhaigou02_390_552.png",2,"人文");
INSERT INTO img VALUES(null,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou03.png",
"http://127.0.0.1:3001/img/270-165/china-jiuzhaigou03.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou03_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-jiuzhaigou03_390_552.png",0,NULL);
INSERT INTO img VALUES(null,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou04.png",
"http://127.0.0.1:3001/img/270-165/china-jiuzhaigou04.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou04_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-jiuzhaigou04_390_552.png",9,"美食");
INSERT INTO img VALUES(null,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou05.png",
"http://127.0.0.1:3001/img/270-165/china-jiuzhaigou05.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou05_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-jiuzhaigou05_390_552.png",8,NULL);
INSERT INTO img VALUES(null,3,"http://127.0.0.1:3001/img/170-240/china-jiuzhaigou06.png",
"http://127.0.0.1:3001/img/270-165/china-jiuzhaigou06.png",
"http://127.0.0.1:3001/img/380-220/china-jiuzhaigou06_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-jiuzhaigou06_390_552.png",6,NULL);

#青海湖
INSERT INTO img VALUES(null,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu01.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu01.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu01_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-qinghaihu01_390_552.png",5,"山水");
INSERT INTO img VALUES(null,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu02.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu02.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu02_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-qinghaihu02_390_552.png",4,"美食");
INSERT INTO img VALUES(null,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu03.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu03.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu03_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-qinghaihu03_390_552.png",6,"人文");
INSERT INTO img VALUES(null,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu04.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu04.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu04_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-qinghaihu04_390_552.png",9,NULL);
INSERT INTO img VALUES(null,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu05.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu05.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu05_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-qinghaihu05_390_552.png",8,NULL);
INSERT INTO img VALUES(null,4,"http://127.0.0.1:3001/img/170-240/china-qinghaihu06.png",
"http://127.0.0.1:3001/img/270-165/china-qinghaihu06.png",
"http://127.0.0.1:3001/img/380-220/china-qinghaihu06_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-qinghaihu06_390_552.png",10,NULL);

#西藏
INSERT INTO img VALUES(null,5,"http://127.0.0.1:3001/img/170-240/china-xizang01.png",
"http://127.0.0.1:3001/img/270-165/china-xizang01.png",
"http://127.0.0.1:3001/img/380-220/china-xizang01_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-xizang01_390_552.png",0,NULL);
INSERT INTO img VALUES(null,5,"http://127.0.0.1:3001/img/170-240/china-xizang02.png",
"http://127.0.0.1:3001/img/270-165/china-xizang02.png",
"http://127.0.0.1:3001/img/380-220/china-xizang02_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-xizang02_390_552.png",6,"人文");
INSERT INTO img VALUES(null,5,"http://127.0.0.1:3001/img/170-240/china-xizang03.png",
"http://127.0.0.1:3001/img/270-165/china-xizang03.png",
"http://127.0.0.1:3001/img/380-220/china-xizang03_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-xizang03_390_552.png",9,NULL);
INSERT INTO img VALUES(null,5,"http://127.0.0.1:3001/img/170-240/china-xizang04.png",
"http://127.0.0.1:3001/img/270-165/china-xizang04.png",
"http://127.0.0.1:3001/img/380-220/china-xizang04_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-xizang04_390_552.png",10,"美食");
INSERT INTO img VALUES(null,5,"http://127.0.0.1:3001/img/170-240/china-xizang05.png",
"http://127.0.0.1:3001/img/270-165/china-xizang05.png",
"http://127.0.0.1:3001/img/380-220/china-xizang05_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-xizang05_390_552.png",8,NULL);
INSERT INTO img VALUES(null,5,"http://127.0.0.1:3001/img/170-240/china-xizang06.png",
"http://127.0.0.1:3001/img/270-165/china-xizang06.png",
"http://127.0.0.1:3001/img/380-220/china-xizang06_368_220.png",
"http://127.0.0.1:3001/img/390-552/china-xizang06_390_552.png",5,NULL);

#台湾
INSERT INTO img VALUES(null,6,"http://127.0.0.1:3001/img/170-240/tw_101.png",
"http://127.0.0.1:3001/img/270-165/tw_101.png",
"http://127.0.0.1:3001/img/380-220/tw_101_368_220.png",
"http://127.0.0.1:3001/img/390-552/tw_101.png",0,"人文");
INSERT INTO img VALUES(null,6,"http://127.0.0.1:3001/img/170-240/tw_gx.png",
"http://127.0.0.1:3001/img/270-165/tw_gx.png",
"http://127.0.0.1:3001/img/380-220/tw_gx368_220.png",
"http://127.0.0.1:3001/img/390-552/tw_gx.png",1,"休闲");
INSERT INTO img VALUES(null,6,"http://127.0.0.1:3001/img/170-240/tw_kd.png",
"http://127.0.0.1:3001/img/270-165/tw_kd.png",
"http://127.0.0.1:3001/img/380-220/tw_kd368_220.png",
"http://127.0.0.1:3001/img/390-552/tw_kd.png",6,"美食");
INSERT INTO img VALUES(null,6,"http://127.0.0.1:3001/img/170-240/tw_nh.png",
"http://127.0.0.1:3001/img/270-165/tw_nh.png",
"http://127.0.0.1:3001/img/380-220/tw_nh368_220.png",
"http://127.0.0.1:3001/img/390-552/tw_nh.png",7,"海岛");
INSERT INTO img VALUES(null,6,"http://127.0.0.1:3001/img/170-240/tw_xj.png",
"http://127.0.0.1:3001/img/270-165/tw_xj.png",
"http://127.0.0.1:3001/img/380-220/tw_xj368_220.png",
"http://127.0.0.1:3001/img/390-552/tw_xj.png",9,NULL);
INSERT INTO img VALUES(null,6,"http://127.0.0.1:3001/img/170-240/tw-dbj.png",
"http://127.0.0.1:3001/img/270-165/tw-dbj.png",
"http://127.0.0.1:3001/img/380-220/tw-dbj368_220.png",
"http://127.0.0.1:3001/img/390-552/tw-dbj.png",5,NULL);

#釜山
INSERT INTO img VALUES(null,7,"http://127.0.0.1:3001/img/170-240/hg_fs.png",
"http://127.0.0.1:3001/img/270-165/hg_fs.png",
"http://127.0.0.1:3001/img/380-220/hg_fs368_220.png",
"http://127.0.0.1:3001/img/390-552/hg_fs.png",1,NULL);
#京畿道
INSERT INTO img VALUES(null,8,"http://127.0.0.1:3001/img/170-240/hg_jjd.png",
"http://127.0.0.1:3001/img/270-165/hg_jjd.png",
"http://127.0.0.1:3001/img/380-220/hg_jjd368_220.png",
"http://127.0.0.1:3001/img/390-552/hg_jjd.png",10,NULL);
#江原道
INSERT INTO img VALUES(null,9,"http://127.0.0.1:3001/img/170-240/hg_jyd.png",
"http://127.0.0.1:3001/img/270-165/hg_jyd.png",
"http://127.0.0.1:3001/img/380-220/hg_jyd368_220.png",
"http://127.0.0.1:3001/img/390-552/hg_jyd.png",5,"休闲");
#济州岛
INSERT INTO img VALUES(null,10,"http://127.0.0.1:3001/img/170-240/hg_jzd.png",
"http://127.0.0.1:3001/img/270-165/hg_jzd.png",
"http://127.0.0.1:3001/img/380-220/hg_jzd368_220.png",
"http://127.0.0.1:3001/img/390-552/hg_jzd.png",10,"海岛");
#仁川
INSERT INTO img VALUES(null,11,"http://127.0.0.1:3001/img/170-240/hg_rc.png",
"http://127.0.0.1:3001/img/270-165/hg_rc.png",
"http://127.0.0.1:3001/img/380-220/hg_rc368_220.png",
"http://127.0.0.1:3001/img/390-552/hg_rc.png",4,NULL);
#长岛
INSERT INTO img VALUES(null,12,"http://127.0.0.1:3001/img/170-240/hg_cd.png",
"http://127.0.0.1:3001/img/270-165/hg_cd.png",
"http://127.0.0.1:3001/img/380-220/hg_cd368_220.png",
"http://127.0.0.1:3001/img/390-552/hg_cd.png",4,"海岛");

#马来西亚
INSERT INTO img VALUES(null,13,"http://127.0.0.1:3001/img/170-240/Malaysia01.png",
"http://127.0.0.1:3001/img/270-165/Malaysia01.png",
"http://127.0.0.1:3001/img/380-220/Malaysia01_368_220.png",
"http://127.0.0.1:3001/img/390-552/Malaysia01_390_552.png",1,"休闲");
INSERT INTO img VALUES(null,13,"http://127.0.0.1:3001/img/170-240/Malaysia02.png",
"http://127.0.0.1:3001/img/270-165/Malaysia02.png",
"http://127.0.0.1:3001/img/380-220/Malaysia02_368_220.png",
"http://127.0.0.1:3001/img/390-552/Malaysia02_390_552.png",7,NULL);
INSERT INTO img VALUES(null,13,"http://127.0.0.1:3001/img/170-240/Malaysia03.png",
"http://127.0.0.1:3001/img/270-165/Malaysia03.png",
"http://127.0.0.1:3001/img/380-220/Malaysia03_368_220.png",
"http://127.0.0.1:3001/img/390-552/Malaysia03_390_552.png",7,"海岛");
INSERT INTO img VALUES(null,13,"http://127.0.0.1:3001/img/170-240/Malaysia04.png",
"http://127.0.0.1:3001/img/270-165/Malaysia04.png",
"http://127.0.0.1:3001/img/380-220/Malaysia04_368_220.png",
"http://127.0.0.1:3001/img/390-552/Malaysia04_390_552.png",7,NULL);
INSERT INTO img VALUES(null,13,"http://127.0.0.1:3001/img/170-240/Malaysia05.png",
"http://127.0.0.1:3001/img/270-165/Malaysia05.png",
"http://127.0.0.1:3001/img/380-220/Malaysia05_368_220.png",
"http://127.0.0.1:3001/img/390-552/Malaysia05_390_552.png",7,NULL);
INSERT INTO img VALUES(null,13,"http://127.0.0.1:3001/img/170-240/Malaysia06.png",
"http://127.0.0.1:3001/img/270-165/Malaysia06.png",
"http://127.0.0.1:3001/img/380-220/Malaysia06_368_220.png",
"http://127.0.0.1:3001/img/390-552/Malaysia06_390_552.png",4,NULL);

#尼泊尔
INSERT INTO img VALUES(null,14,"http://127.0.0.1:3001/img/170-240/Nepal01.png",
"http://127.0.0.1:3001/img/270-165/Nepal01.png",
"http://127.0.0.1:3001/img/380-220/Nepal01_368_220.png",
"http://127.0.0.1:3001/img/390-552/Nepal01_390_552.png",7,NULL);
INSERT INTO img VALUES(null,14,"http://127.0.0.1:3001/img/170-240/Nepal02.png",
"http://127.0.0.1:3001/img/270-165/Nepal02.png",
"http://127.0.0.1:3001/img/380-220/Nepal02_368_220.png",
"http://127.0.0.1:3001/img/390-552/Nepal02_390_552.png",8,"休闲");
INSERT INTO img VALUES(null,14,"http://127.0.0.1:3001/img/170-240/Nepal03.png",
"http://127.0.0.1:3001/img/270-165/Nepal03.png",
"http://127.0.0.1:3001/img/380-220/Nepal03_368_220.png",
"http://127.0.0.1:3001/img/390-552/Nepal03_390_552.png",5,"山水");
INSERT INTO img VALUES(null,14,"http://127.0.0.1:3001/img/170-240/Nepal04.png",
"http://127.0.0.1:3001/img/270-165/Nepal04.png",
"http://127.0.0.1:3001/img/380-220/Nepal04_368_220.png",
"http://127.0.0.1:3001/img/390-552/Nepal04_390_552.png",1,NULL);
INSERT INTO img VALUES(null,14,"http://127.0.0.1:3001/img/170-240/Nepal05.png",
"http://127.0.0.1:3001/img/270-165/Nepal05.png",
"http://127.0.0.1:3001/img/380-220/Nepal05_368_220.png",
"http://127.0.0.1:3001/img/390-552/Nepal05_390_552.png",11,NULL);
INSERT INTO img VALUES(null,14,"http://127.0.0.1:3001/img/170-240/Nepal06.png",
"http://127.0.0.1:3001/img/270-165/Nepal06.png",
"http://127.0.0.1:3001/img/380-220/Nepal06_368_220.png",
"http://127.0.0.1:3001/img/390-552/Nepal06_390_552.png",4,NULL);

#菲律宾
INSERT INTO img VALUES(null,15,"http://127.0.0.1:3001/img/170-240/Philippine01.png",
"http://127.0.0.1:3001/img/270-165/Philippine01.png",
"http://127.0.0.1:3001/img/380-220/Philippine01_368_220.png",
"http://127.0.0.1:3001/img/390-552/Philippine01_390_552.png",1,NULL);
INSERT INTO img VALUES(null,15,"http://127.0.0.1:3001/img/170-240/Philippine02.png",
"http://127.0.0.1:3001/img/270-165/Philippine02.png",
"http://127.0.0.1:3001/img/380-220/Philippine02_368_220.png",
"http://127.0.0.1:3001/img/390-552/Philippine02_390_552.png",8,NULL);
INSERT INTO img VALUES(null,15,"http://127.0.0.1:3001/img/170-240/Philippine03.png",
"http://127.0.0.1:3001/img/270-165/Philippine03.png",
"http://127.0.0.1:3001/img/380-220/Philippine03_368_220.png",
"http://127.0.0.1:3001/img/390-552/Philippine03_390_552.png",11,NULL);
INSERT INTO img VALUES(null,15,"http://127.0.0.1:3001/img/170-240/Philippine04.png",
"http://127.0.0.1:3001/img/270-165/Philippine04.png",
"http://127.0.0.1:3001/img/380-220/Philippine04_368_220.png",
"http://127.0.0.1:3001/img/390-552/Philippine04_390_552.png",0,"海岛");
INSERT INTO img VALUES(null,15,"http://127.0.0.1:3001/img/170-240/Philippine05.png",
"http://127.0.0.1:3001/img/270-165/Philippine05.png",
"http://127.0.0.1:3001/img/380-220/Philippine05_368_220.png",
"http://127.0.0.1:3001/img/390-552/Philippine05_390_552.png",11,"休闲");
INSERT INTO img VALUES(null,15,"http://127.0.0.1:3001/img/170-240/Philippine06.png",
"http://127.0.0.1:3001/img/270-165/Philippine06.png",
"http://127.0.0.1:3001/img/380-220/Philippine06_368_220.png",
"http://127.0.0.1:3001/img/390-552/Philippine06_390_552.png",8,NULL);
INSERT INTO img VALUES(null,15,"http://127.0.0.1:3001/img/170-240/Philippine07.png",
"http://127.0.0.1:3001/img/270-165/Philippine07.png",
"http://127.0.0.1:3001/img/380-220/Philippine07_368_220.png",
"http://127.0.0.1:3001/img/390-552/Philippine07_390_552.png",4,NULL);
#北海道
INSERT INTO img VALUES(null,16,"http://127.0.0.1:3001/img/170-240/rb_bhd.png",
"http://127.0.0.1:3001/img/270-165/rb_bhd.png",
"http://127.0.0.1:3001/img/380-220/rb_bhd368_220.png",
"http://127.0.0.1:3001/img/390-552/rb_bhd.png",5,"山水");
#大阪
INSERT INTO img VALUES(null,17,"http://127.0.0.1:3001/img/170-240/rb_db.png",
"http://127.0.0.1:3001/img/270-165/rb_db.png",
"http://127.0.0.1:3001/img/380-220/rb_db368_220.png",
"http://127.0.0.1:3001/img/390-552/rb_db.png",1,"休闲");
#金阁寺
INSERT INTO img VALUES(null,18,"http://127.0.0.1:3001/img/170-240/rb_jgs.png",
"http://127.0.0.1:3001/img/270-165/rb_jgs.png",
"http://127.0.0.1:3001/img/380-220/rb_jgs368_220.png",
"http://127.0.0.1:3001/img/390-552/rb_jgs.png",2,NULL);
#奈良
INSERT INTO img VALUES(null,19,"http://127.0.0.1:3001/img/170-240/rb_nl.png",
"http://127.0.0.1:3001/img/270-165/rb_nl.png",
"http://127.0.0.1:3001/img/380-220/rb_nl368_220.png",
"http://127.0.0.1:3001/img/390-552/rb_nl.png",2,NULL);
#宇和岛城
INSERT INTO img VALUES(null,20,"http://127.0.0.1:3001/img/170-240/rb_yhdc.png",
"http://127.0.0.1:3001/img/270-165/rb_yhdc.png",
"http://127.0.0.1:3001/img/380-220/rb_yhdc368_220.png",
"http://127.0.0.1:3001/img/390-552/rb_yhdc.png",2,NULL);
#富士山
INSERT INTO img VALUES(null,21,"http://127.0.0.1:3001/img/170-240/rb_fss.png",
"http://127.0.0.1:3001/img/270-165/rb_fss.png",
"http://127.0.0.1:3001/img/380-220/rb_fss368_220.png",
"http://127.0.0.1:3001/img/390-552/rb_fss.png",2,NULL);

#新加坡
INSERT INTO img VALUES(null,22,"http://127.0.0.1:3001/img/170-240/Singapore01.png",
"http://127.0.0.1:3001/img/270-165/Singapore02.png",
"http://127.0.0.1:3001/img/380-220/Singapore02_368_220.png",
"http://127.0.0.1:3001/img/390-552/Singapore02_390_552.png",2,"山水");
INSERT INTO img VALUES(null,22,"http://127.0.0.1:3001/img/170-240/Singapore02.png",
"http://127.0.0.1:3001/img/270-165/Singapore03.png",
"http://127.0.0.1:3001/img/380-220/Singapore03_368_220.png",
"http://127.0.0.1:3001/img/390-552/Singapore03_390_552.png",11,NULL);
INSERT INTO img VALUES(null,22,"http://127.0.0.1:3001/img/170-240/Singapore03.png",
"http://127.0.0.1:3001/img/270-165/Singapore04.png",
"http://127.0.0.1:3001/img/380-220/Singapore04_368_220.png",
"http://127.0.0.1:3001/img/390-552/Singapore04_390_552.png",10,NULL);
INSERT INTO img VALUES(null,22,"http://127.0.0.1:3001/img/170-240/Singapore04.png",
"http://127.0.0.1:3001/img/270-165/Singapore05.png",
"http://127.0.0.1:3001/img/380-220/Singapore05_368_220.png",
"http://127.0.0.1:3001/img/390-552/Singapore05_390_552.png",11,NULL);
INSERT INTO img VALUES(null,22,"http://127.0.0.1:3001/img/170-240/Singapore05.png",
"http://127.0.0.1:3001/img/270-165/Singapore06.png",
"http://127.0.0.1:3001/img/380-220/Singapore06_368_220.png",
"http://127.0.0.1:3001/img/390-552/Singapore06_390_552.png",5,NULL);
INSERT INTO img VALUES(null,22,"http://127.0.0.1:3001/img/170-240/Singapore06.png",
"http://127.0.0.1:3001/img/270-165/Singapore07.png",
"http://127.0.0.1:3001/img/380-220/Singapore07_368_220.png",
"http://127.0.0.1:3001/img/390-552/Singapore07_390_552.png",11,"休闲");
INSERT INTO img VALUES(null,22,"http://127.0.0.1:3001/img/170-240/Singapore07.png",
"http://127.0.0.1:3001/img/270-165/Singapore08.png",
"http://127.0.0.1:3001/img/380-220/Singapore08_368_220.png",
"http://127.0.0.1:3001/img/390-552/Singapore08_390_552.png",4,NULL);
INSERT INTO img VALUES(null,22,"http://127.0.0.1:3001/img/170-240/Singapore08.png",
"http://127.0.0.1:3001/img/270-165/Singapore04.png",
"http://127.0.0.1:3001/img/380-220/Singapore04_368_220.png",
"http://127.0.0.1:3001/img/390-552/Singapore04_390_552.png",3,NULL);

#曼谷
INSERT INTO img VALUES(null,23,"http://127.0.0.1:3001/img/170-240/tg_mg.png",
"http://127.0.0.1:3001/img/270-165/tg_mg.png",
"http://127.0.0.1:3001/img/380-220/tg_mg368_220.png",
"http://127.0.0.1:3001/img/390-552/tg_mg.png",2,NULL);
#普吉岛
INSERT INTO img VALUES(null,24,"http://127.0.0.1:3001/img/170-240/tg_pjd.png",
"http://127.0.0.1:3001/img/270-165/tg_pjd.png",
"http://127.0.0.1:3001/img/380-220/tg_pjd368_220.png",
"http://127.0.0.1:3001/img/390-552/tg_pjd.png",3,"海岛");
#清迈市
INSERT INTO img VALUES(null,25,"http://127.0.0.1:3001/img/170-240/tg_qms.png",
"http://127.0.0.1:3001/img/270-165/tg_qms.png",
"http://127.0.0.1:3001/img/380-220/tg_qms368_220.png",
"http://127.0.0.1:3001/img/390-552/tg_qms.png",3,NULL);
#东芭乐园
INSERT INTO img VALUES(null,26,"http://127.0.0.1:3001/img/170-240/tg_dbly.png",
"http://127.0.0.1:3001/img/270-165/tg_dbly.png",
"http://127.0.0.1:3001/img/380-220/tg_dbly368_220.png",
"http://127.0.0.1:3001/img/390-552/tg_dbly.png",3,"休闲");
#暹罗广场
INSERT INTO img VALUES(null,27,"http://127.0.0.1:3001/img/170-240/tg_llgc.png",
"http://127.0.0.1:3001/img/270-165/tg_llgc.png",
"http://127.0.0.1:3001/img/380-220/tg_llgc368_220.png",
"http://127.0.0.1:3001/img/390-552/tg_llgc.png",3,"休闲");
#芭提雅
INSERT INTO img VALUES(null,28,"http://127.0.0.1:3001/img/170-240/tg_bty.png",
"http://127.0.0.1:3001/img/270-165/tg_bty.png",
"http://127.0.0.1:3001/img/380-220/tg_bty368_220.png",
"http://127.0.0.1:3001/img/390-552/tg_bty.png",3,"休闲");

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
	spot VARCHAR(50),
	#图片
	img VARCHAR(255),
	#内容
	#发表时间
	Ttime VARCHAR(50),
	#浏览量
	tview INT,
	#点赞
	zan INT,
	totaltitle VARCHAR(50),
	subtitle VARCHAR(50)
);
INSERT INTO pointer VALUES(null,"重庆","http://127.0.0.1:3001/img/chongqing_strategy/cm.jpg
&http://127.0.0.1:3001/img/chongqing_strategy/cq_route2.png&http://127.0.0.1:3001/img/chongqing_strategy/cqk.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/nanbinglu.png&
http://127.0.0.1:3001/img/chongqing_strategy/cq_route3.png&
http://127.0.0.1:3001/img/chongqing_strategy/xh.png&
http://127.0.0.1:3001/img/chongqing_strategy/hg.png&http://127.0.0.1:3001/img/chongqing_strategy/jym1.png",
'2018-5-8',355316,2331,"重庆48h｜网红、艺术、市井全体验，山城这样玩才地道！",null);

INSERT INTO pointer VALUES(null,"香港","http://127.0.0.1:3001/img/chongqing_strategy/HongKong1.jpg
&http://127.0.0.1:3001/img/chongqing_strategy/HongKong2.jpg
&http://127.0.0.1:3001/img/chongqing_strategy/HongKong3.jpg",
'2018-5-8',355316,2331,"我的2017# 二刷香港——“打个飞的去红馆看杨小姐演唱会！",null);

INSERT INTO pointer VALUES(null,"上海","http://127.0.0.1:3001/img/chongqing_strategy/Disney1.jpg
&http://127.0.0.1:3001/img/chongqing_strategy/Disney2.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/Disney3.jpg",
'2018-5-8',355316,2331,"上海迪士尼最全攻略！好吃好玩带娃必备！",null);

INSERT INTO pointer VALUES(null,"大阪","http://127.0.0.1:3001/img/chongqing_strategy/db1.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/db2.png&http://127.0.0.1:3001/img/chongqing_strategy/db3.jpg",
'2018-5-8',355316,2331,"大阪经典2日玩法（含购物攻略）！",null);

INSERT INTO pointer VALUES(null,"北海道","http://127.0.0.1:3001/img/chongqing_strategy/cm.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/cq_route2.png&http://127.0.0.1:3001/img/chongqing_strategy/cqk.jpg",
'2018-5-8',355316,2331,"没有樱花没有雪 秋天的北海道也挺美！",null);

INSERT INTO pointer VALUES(null,"美国大峡谷","http://127.0.0.1:3001/img/chongqing_strategy/America1.jpg
&http://127.0.0.1:3001/img/chongqing_strategy/America2.jpg&http://127.0.0.1:3001/img/chongqing_strategy/America3.jpg",
'2018-5-8',355316,2331,"美国大峡谷环线自驾：住宿优选！",null);

INSERT INTO pointer VALUES(null,"三亚","http://127.0.0.1:3001/img/chongqing_strategy/cm.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/cq_route2.png&http://127.0.0.1:3001/img/chongqing_strategy/cqk.jpg",
'2018-5-8',355316,2331,"天堂大佛石全海景玻璃栈道，开启三亚新体验！",null);

INSERT INTO pointer VALUES(null,"香港","http://127.0.0.1:3001/img/chongqing_strategy/HongKong1.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/HongKong2.jpg&http://127.0.0.1:3001/img/chongqing_strategy/HongKong3.jpg",
'2018-5-8',355316,2331,"香港美食地图，惊艳了味蕾的9家店！",null);

INSERT INTO pointer VALUES(null,"云南","http://127.0.0.1:3001/img/chongqing_strategy/yunnan1.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/yunnan2.jpg&http://127.0.0.1:3001/img/chongqing_strategy/yunnan3.jpg",
'2018-5-8',355316,2331,"云南的天空，开出漫天的花（大理、丽江、泸沽湖、昆明）！",null);

INSERT INTO pointer VALUES(null,"重庆","http://127.0.0.1:3001/img/chongqing_strategy/cm.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/cq_route2.png&http://127.0.0.1:3001/img/chongqing_strategy/cqk.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/nanbinglu.png&
http://127.0.0.1:3001/img/chongqing_strategy/cq_route3.png&
http://127.0.0.1:3001/img/chongqing_strategy/xh.png&
http://127.0.0.1:3001/img/chongqing_strategy/hg.png&http://127.0.0.1:3001/img/chongqing_strategy/jym1.png",
'2018-5-8',355316,2331,"重庆48h｜网红、艺术、市井全体验，山城这样玩才地道！",null);

INSERT INTO pointer VALUES(null,"香港","http://127.0.0.1:3001/img/chongqing_strategy/HongKong1.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/HongKong2.jpg&http://127.0.0.1:3001/img/chongqing_strategy/HongKong3.jpg",
'2018-5-8',355316,2331,"我的2017# 二刷香港——“打个飞的去红馆看杨小姐演唱会！",null);

INSERT INTO pointer VALUES(null,"上海","http://127.0.0.1:3001/img/chongqing_strategy/Disney1.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/Disney2.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/Disney3.jpg",
'2018-5-8',355316,2331,"上海迪士尼最全攻略！好吃好玩带娃必备！",null);

INSERT INTO pointer VALUES(null,"大阪","http://127.0.0.1:3001/img/chongqing_strategy/db1.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/db2.png&http://127.0.0.1:3001/img/chongqing_strategy/db3.jpg",
'2018-5-8',355316,2331,"大阪经典2日玩法（含购物攻略）！",null);

INSERT INTO pointer VALUES(null,"北海道","http://127.0.0.1:3001/img/chongqing_strategy/cm.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/cq_route2.png&http://127.0.0.1:3001/img/chongqing_strategy/cqk.jpg",
'2018-5-8',355316,2331,"没有樱花没有雪 秋天的北海道也挺美！",null);

INSERT INTO pointer VALUES(null,"美国大峡谷","http://127.0.0.1:3001/img/chongqing_strategy/America1.jpg
&http://127.0.0.1:3001/img/chongqing_strategy/America2.jpg
&http://127.0.0.1:3001/img/chongqing_strategy/America3.jpg",
'2018-5-8',355316,2331,"美国大峡谷环线自驾：住宿优选！",null);

INSERT INTO pointer VALUES(null,"三亚大佛石","http://127.0.0.1:3001/img/chongqing_strategy/cm.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/cq_route2.png&http://127.0.0.1:3001/img/chongqing_strategy/cqk.jpg",
'2018-5-8',355316,2331,"天堂大佛石全海景玻璃栈道，开启三亚新体验！",null);

INSERT INTO pointer VALUES(null,"香港","http://127.0.0.1:3001/img/chongqing_strategy/HongKong1.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/HongKong2.jpg&http://127.0.0.1:3001/img/chongqing_strategy/HongKong3.jpg",
'2018-5-8',355316,2331,"香港美食地图，惊艳了味蕾的9家店！",null);

INSERT INTO pointer VALUES(null,"云南","http://127.0.0.1:3001/img/chongqing_strategy/yunnan1.jpg&
http://127.0.0.1:3001/img/chongqing_strategy/yunnan2.jpg&http://127.0.0.1:3001/img/chongqing_strategy/yunnan3.jpg",
'2018-5-8',355316,2331,"云南的天空，开出漫天的花（大理、丽江、泸沽湖、昆明）！",null);

#攻略评论表
CREATE TABLE strategycomm(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	#景点id
	sid INT,
	#用户名
	user_name VARCHAR(25),
	#发表时间
	ctime DATETIME,
	#内容
	content VARCHAR(255),
	#点赞
	zan INT,
	#踩
	cai INT
);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'111',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'112',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'113',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'114',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'111',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'112',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'113',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'114',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'111',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'112',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'113',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'114',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'113',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'114',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'111',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'112',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'113',0,0);
INSERT INTO strategycomm VALUES(null,1,'dd',now(),'114',0,0);




#logo
CREATE TABLE logo_img(
	logo_pid INT PRIMARY KEY AUTO_INCREMENT,
	img_url VARCHAR(200)
);
INSERT INTO logo_img VALUES(1,
"http://127.0.0.1:3001/img/logo/lemon_logo_black.png");
INSERT INTO logo_img VALUES(2,
"http://127.0.0.1:3001/img/logo/lemon_logo_white.png");
