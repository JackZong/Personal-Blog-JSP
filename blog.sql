/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-06-11 15:12:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_access
-- ----------------------------
DROP TABLE IF EXISTS `blog_access`;
CREATE TABLE `blog_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) default NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_access
-- ----------------------------

-- ----------------------------
-- Table structure for blog_article_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_category`;
CREATE TABLE `blog_article_category` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned default '0',
  `name` varchar(255) default '',
  `rank` int(3) unsigned default '500',
  `index_show` int(1) unsigned default '1',
  `status` int(10) unsigned default '1',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_article_category
-- ----------------------------
INSERT INTO `blog_article_category` VALUES ('1', '0', '读书', '200', '1', '1');
INSERT INTO `blog_article_category` VALUES ('2', '0', '电影', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('3', '0', '旅行', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('4', '0', '技术笔记', '500', '0', '1');
INSERT INTO `blog_article_category` VALUES ('5', '4', 'javascript', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('6', '4', 'html', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('7', '4', 'css', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('8', '4', 'go lang', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('10', '0', 'Vue', '500', '1', '1');
INSERT INTO `blog_article_category` VALUES ('11', '10', 'webpack', '500', '1', '0');

-- ----------------------------
-- Table structure for blog_article_detail
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_detail`;
CREATE TABLE `blog_article_detail` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) character set utf8 default '',
  `category_id` int(10) unsigned default NULL,
  `user_id` int(10) unsigned default NULL,
  `content` longtext character set utf8,
  `hits` int(10) unsigned default '0',
  `img_file` varchar(255) character set utf8 default '',
  `tags` varchar(255) character set utf8 default '',
  `create_time` int(10) unsigned default NULL,
  `update_time` int(10) unsigned default NULL,
  `status` int(10) unsigned default '1',
  PRIMARY KEY  (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of blog_article_detail
-- ----------------------------
INSERT INTO `blog_article_detail` VALUES ('3', 'iOS 11 十一大新功能抢先看！', '1', null, '北京时间 6 月 6 日凌晨，苹果在 WWDC 2017 上正式发布旗下全新一代移动操作系统 iOS 11。\r\n\r\n新的 iOS 系统带来了大量新功能，不仅让 iOS 设备变得更加个性、智能和强大，也让游戏和 App 中的增强现实（AR）体验来到 iOS 设备。\r\n苹果表示，iOS 11 为 iPhone 带来巨大进步，让 iPad 实现里程碑式飞跃。\r\n\r\niOS 11 兼容 iPhone 5s 及其更新设备、iPad mini 2/第五代 iPad 及其更新设备，以及第六代 iPod touch。\r\n开发者预览版即日起开始公测，iOS 11 将于今年秋季正式推送。\r\n\r\n以下，奉上 iOS 11 十一大新功能抢先看！\r\n\r\n一、iOS 11 for iPad\r\n\r\n毫无疑问，iPad 设备是 iOS 11 系统更新的最大赢家。\r\n\r\n在此之前，iOS 9 也曾对 iPad 设备“关爱有加”，只是单独的加几个效率和生产力功能，并没有让初登舞台的 iPad Pro 在移动生产力设备领域杀出一片天。\r\n\r\n之后两年，iPad 销量一跌再跌，“纯内容消费性平板”的黄金年代一去不复返，而苹果也终于痛下决心在 iOS 11 系统上拿出了 iPad 生产力工具的系统解决方案。', '987', 'img/apple.jpg', 'wwdc', '1314520', null, '1');
INSERT INTO `blog_article_detail` VALUES ('6', '深夜俱乐部丨聊聊让你印象深刻的城市吧！', '3', null, '<p>相信不少尾巴都有去过旅游，旅游不仅仅能增加人对世界、历史的见解，还能促进人与人之间的交流：不管是与身边人，还是与陌生人。那么尾巴们去过的城市里面，哪一个城市让你印象深刻呢？</p><p><strong>@罗莱尔特</strong>：我印象比较深刻的或许是上海和台北了。前者主要是因为这座城市有一种曾经与现在的交错感，不少建筑有古典的外观，但又有现代的室内装潢及设计；后者更多地是被这里的人文气息所吸引，特别有趣的是那天在台北，有一个年轻人差点被车撞到，破口大骂的却是：“诶你干什么 Ho！”这句话不管怎么样都无法让人生气，甚至还觉得有点好笑啊！</p><p></p><p><strong>@小淼-海</strong>：我去过的城市不算多，印象深刻的可能算武汉一个吧，唯一忘不了的就是武汉美女特别多，走在街上都有些不可思议的感觉。</p><blockquote>「 深夜俱乐部 」是数字尾巴开设的栏目，我们每晚都会提供一个能愉快畅谈的话题，在这里尾巴们既可以倾听编辑部小伙伴们的主观见解与看法，也可以在帖子下或表达鲜明的个人立场或与其他小伙伴进行一场轰轰烈烈的讨论，且适度的掉掉节操也是可以的。</blockquote>', '666', 'img/shenye.jpg', '上海', '1314520', null, '1');
INSERT INTO `blog_article_detail` VALUES ('7', '五分钟带你看完 WWDC 2017 新品发布', '1', null, '<p>苹果 WWDC 2017 的新品终于都亮相了，有你最期待的 iOS 11、macOS、watchOS（好玩儿的可多啦），还有新上市的产品哦，新款 iMac、iPad、Homepod，该来的都来了，想知道今年的新系统有什么好玩儿的亮点吗？智能语音音箱有什么新奇好玩儿的功能吗？新的iPad长什么样子？透露个小秘密，VR、AR也要跟我们见面了，想知道新的系统和设备有什么好玩儿有趣的小技巧吗，动动你的小手指快点开～<br></p><p><a href=\"http://v.youku.com/v_show/id_XMjgwODI5NDI2OA==.html\" rel=\"nofollow\">http://v.youku.com/v_show/id_XMjgwODI5NDI2OA==.html</a><br></p><p>⬇️ 你想要的新鲜资讯，都在这里 ⬇️</p>', '587', 'img/wwdc.jpg', 'wwdc', '1314520', null, '1');
INSERT INTO `blog_article_detail` VALUES ('8', '神作新篇，《纪念碑谷 2》登陆 App Store', '1', null, '<p>与 WWDC 2017 开幕同步，《纪念碑谷 2（Monument Valley 2）》正式登陆 App Store。</p><p>《纪念碑谷 2》的前作——《纪念碑谷》，是 ustwo 公司开发制作的一款于 2014 年发行的精致解谜手游。</p><blockquote><font>用有趣的空间错位感交织出了清新唯美的迷宫世界，玩家需要引领公主小萝莉在这座神奇的迷宫中寻找正确的道路，抵达终点，带来一次神奇建筑与奇妙几何体相结合的梦幻探险。</font></blockquote>', '0', 'img/beigu.jpg', '纪念北姑', '1314520', null, '1');
INSERT INTO `blog_article_detail` VALUES ('9', '文章你发给', '8', null, '<p>阿斯顿撒</p>', '0', '', '撒', '1618091033', null, '1');

-- ----------------------------
-- Table structure for blog_broadcast
-- ----------------------------
DROP TABLE IF EXISTS `blog_broadcast`;
CREATE TABLE `blog_broadcast` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `content` varchar(255) character set utf8 default '',
  `create_time` int(10) unsigned default NULL,
  `status` int(10) unsigned default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of blog_broadcast
-- ----------------------------
INSERT INTO `blog_broadcast` VALUES ('1', '好好学习，天天向上！', '1424674500', '1');
INSERT INTO `blog_broadcast` VALUES ('2', '天气变冷了，注意保暖~', '1424884500', '1');
INSERT INTO `blog_broadcast` VALUES ('3', '记得好好吃饭呀~', '1424633500', '1');
INSERT INTO `blog_broadcast` VALUES ('4', '出门带好伞哦亲(づ￣3￣)づ╭❤～', '1424707200', '0');

-- ----------------------------
-- Table structure for blog_friend_link
-- ----------------------------
DROP TABLE IF EXISTS `blog_friend_link`;
CREATE TABLE `blog_friend_link` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` char(50) character set utf8 default NULL,
  `url` char(100) character set utf8 default NULL,
  `status` int(1) unsigned default '1',
  `index_show` int(1) unsigned default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of blog_friend_link
-- ----------------------------
INSERT INTO `blog_friend_link` VALUES ('1', '百度', 'http://www.baidu.com', '10', '1');
INSERT INTO `blog_friend_link` VALUES ('2', '优酷', 'http://www.youku.com', '10', '1');
INSERT INTO `blog_friend_link` VALUES ('3', '淘宝', 'http://www.taobao.com', '1', '1');
INSERT INTO `blog_friend_link` VALUES ('4', '维基百科', 'http://zh.wikipedia.org', '1', '1');
INSERT INTO `blog_friend_link` VALUES ('7', 'github', 'https://github.com/', '1', '1');

-- ----------------------------
-- Table structure for blog_node
-- ----------------------------
DROP TABLE IF EXISTS `blog_node`;
CREATE TABLE `blog_node` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) default NULL,
  `status` tinyint(1) default '0',
  `remark` varchar(255) default NULL,
  `sort` smallint(6) unsigned default NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_node
-- ----------------------------

-- ----------------------------
-- Table structure for blog_role
-- ----------------------------
DROP TABLE IF EXISTS `blog_role`;
CREATE TABLE `blog_role` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) default NULL,
  `status` tinyint(1) unsigned default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_role
-- ----------------------------

-- ----------------------------
-- Table structure for blog_role_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_role_user`;
CREATE TABLE `blog_role_user` (
  `role_id` mediumint(9) unsigned default NULL,
  `user_id` char(32) default NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for blog_text
-- ----------------------------
DROP TABLE IF EXISTS `blog_text`;
CREATE TABLE `blog_text` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) default NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_text
-- ----------------------------
INSERT INTO `blog_text` VALUES ('1', '0', '哺乳类');
INSERT INTO `blog_text` VALUES ('2', '0', '两栖类');

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` char(20) default NULL,
  `sex` char(1) default NULL,
  `user_name` varchar(255) default NULL,
  `password` char(150) default NULL,
  `email` char(30) default NULL,
  `avatar_file` char(250) NOT NULL,
  `login_last_time` int(10) default NULL,
  `status` int(10) unsigned default '1',
  `role_id` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES ('1', '林金章', '男', '123', '123', 'ljzwiki@163.com', '', '1427370933', '1', null);
