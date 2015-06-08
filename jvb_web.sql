/*
Navicat MySQL Data Transfer

Source Server         : data
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : jvb_web

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-06-03 18:00:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('22', 'aertwerter', 'asas@hoan.com', 'tertertwer', 'awewe', 'awwe', null, '2015-05-29 05:46:57');
INSERT INTO `contact` VALUES ('23', 'rwe', 'asas@hoan.com', 'rwer', 'we', 'we', null, '2015-05-29 05:48:24');
INSERT INTO `contact` VALUES ('24', 'rwe', 'asas@hoan.com', 'rwer', 'we', 'we', null, '2015-05-29 06:10:41');
INSERT INTO `contact` VALUES ('25', 'sds', 'asas@hoan.com', 'sdsd', 'sa', 'asa', null, '2015-05-29 06:40:23');
INSERT INTO `contact` VALUES ('26', 'sds', 'asas@hoan.com', 'sds', 'sas', 'asa', null, '2015-05-29 06:44:04');
INSERT INTO `contact` VALUES ('27', 'fsdfs', 'asas@hoan.com', 'fsdf', 'fsdf', 'sfsd', null, '2015-05-29 06:45:27');
INSERT INTO `contact` VALUES ('28', '', '', '', '', '', null, '2015-06-02 04:13:47');
INSERT INTO `contact` VALUES ('29', 'sdsd', 'hoan@gmail.com', '0985644301', 'sjasIOSJ', 'ZXJASOID', null, '2015-06-02 04:33:26');
INSERT INTO `contact` VALUES ('30', 'tytr', 'ryr@gmail.com', 'ryr', 'ryr', 'rry', null, '2015-06-02 05:07:07');
INSERT INTO `contact` VALUES ('31', 'fsdf', 'e@gmail.com', '0985644301', 'sjdh', 'sdh', null, '2015-06-02 05:10:37');

-- ----------------------------
-- Table structure for lang
-- ----------------------------
DROP TABLE IF EXISTS `lang`;
CREATE TABLE `lang` (
  `id_lang` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `iso_code` varchar(32) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_lang`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lang
-- ----------------------------
INSERT INTO `lang` VALUES ('1', 'Tiếng Việt', 'vi', '1');
INSERT INTO `lang` VALUES ('2', 'Tiếng Nhật', 'jp', '1');
INSERT INTO `lang` VALUES ('3', 'Tiếng Anh', 'en', '1');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id_news` int(11) NOT NULL AUTO_INCREMENT,
  `highlight` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_add` datetime DEFAULT NULL,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '0', '1', '2015-05-29 08:56:00', '2015-05-25 08:56:03');
INSERT INTO `news` VALUES ('2', '0', '1', '2015-06-30 08:56:14', '2015-05-13 08:56:19');
INSERT INTO `news` VALUES ('3', '0', '1', '2015-05-11 08:56:30', '2015-06-02 08:56:34');
INSERT INTO `news` VALUES ('4', '1', '1', '2015-06-16 15:44:59', '2015-07-22 15:45:03');

-- ----------------------------
-- Table structure for news_lang
-- ----------------------------
DROP TABLE IF EXISTS `news_lang`;
CREATE TABLE `news_lang` (
  `id_news` int(11) NOT NULL DEFAULT '0',
  `id_lang` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id_news`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_lang
-- ----------------------------
INSERT INTO `news_lang` VALUES ('1', '1', 'MU: Bán Di Maria, mua \"Beckham nước Đức', 'MU hoàn toàn có thể bán Di Maria cho Bayern để đầu tư cho thương vụ mang tên Marco Reus.');
INSERT INTO `news_lang` VALUES ('1', '2', 'MU：「ベッカムドイツ買っセミディ·マリア、', '十分な大きさの量を必要とするので、指定されたMUの理由は価格だった。ミラー紙は「レッズ」は「人々を解放する」ドルトムントの希望に5000万ポンドを費やすことを喜んでいると述べた。');
INSERT INTO `news_lang` VALUES ('1', '3', 'MU: Semi Di Maria, bought \"Beckham Germany', 'To the MU, they are said to be willing to sit at the negotiating table if any team does accept paid 59.7 million pounds. It means, \"Red Devils\" to receive the full amount they had poured into the treasury of the Real.\r\n\r\nMU reason given was the price because they need a large enough amount of money to pursue Marco Reus. Mirror newspaper said the \"Reds\" are willing to spend 50 million pounds in hopes of Dortmund \"release the people\".');
INSERT INTO `news_lang` VALUES ('2', '1', 'HLV Arsene Wenger của Arsenal khẳng định RẤT THÍCH Arturo Vidal', 'Trước những tin đồn về việc Arsenal muốn mua tiền vệ Chile Arturo Vidal, HLV Arsene Wenger đã phủ nhận rằng Pháo thủ đang xúc tiến chuyển nhượng như báo chí khẳng định.');
INSERT INTO `news_lang` VALUES ('2', '2', 'アーセン·ベンゲル監督は、アルトゥーロ·ビダルが楽しんで確認します', 'アーセナルについての噂はアルトゥーロ·ビダル連続公開新聞を持ってしようとしている後、アーセン·ベンゲル監督が正式にクレームを表明している：誰が送信されるのいずれかの応答を求めていない。\r\n\r\nヴィダル、チリ代表MF、28は、コート「アーセナル」次のシーズンに切り替えることが噂されている。誰がこの情報を明らかにすることはゴンサロ·アロヨという名前の非常に評判の記者です。確かに、彼は昨年の夏後半にアーセナルに到着しますアレクシス·サンチェスを主張した最初の。');
INSERT INTO `news_lang` VALUES ('2', '3', 'Arsene Wenger confirms Arturo Vidal ENJOYED', 'After rumors about Arsenal are looking to have Arturo Vidal continuously published newspaper, Arsene Wenger has officially voiced claim: No one has asked for any replies to be sent.\r\n\r\nVidal, Chilean midfielder, 28, is rumored to be switching to coat \'Gunners\' next season. Who revealed this information is a very reputable reporter named Gonzalo Arroyo. Indeed, he was the first to assert Alexis Sanchez will arrive late Arsenal last summer.');
INSERT INTO `news_lang` VALUES ('3', '1', 'Debuchy - FA cup  là niềm tự hào lớn', 'Nói về trận chung kết Cúp FA, Wenger cho biết: “Chúng tôi có một đội ngũ dày dạn. Nếu các bạn cho rằng tôi có một quyết định lớn phải đưa ra (khi chọn đội hình trận chung kết) thì chính xác rồi đấy. Sẽ có những tuyển thủ hàng đầu phải ngồi dự bị, vì chúng tôi có một đội ngũ rất dày”.');
INSERT INTO `news_lang` VALUES ('3', '2', 'Debuchy - FAカップは大きな誇りでした', 'FAカップ決勝の話、ベンゲル監督は言った： \"我々は、経験豊かなチームを持っています。あなたは私が（最終チームの選択を）作るために大きな決断を持っていると思われる場合はまさに絵です。私たちが「非常に厚いのチームを持っているので、ベンチに主要企業があります。');
INSERT INTO `news_lang` VALUES ('3', '3', 'Debuchy - FA Cup is like the French Cup', 'Mathieu Debuchy says the unpredictable nature of the FA Cup makes it similar to the French equivalent.\r\nArsenal have faced Championship opposition in each of their last two cup semi-finals, needing extra-time to progress on both occasions.he FA Cup is pretty much the same - sometimes clubs from the lower divisions have a good FA Cup campaign. Because of this, I think they are similar competitions. It is extremely difficult to win a cup tie.\r\n\r\n\r\nLower-league cl');
INSERT INTO `news_lang` VALUES ('4', '1', 'Tuyển phiên dịch viên tiếng nhật', 'Công ty JVB Việt Nam đang có nhu cầu tuyển phiên dịch viên tiếng Nhật có trình độ tương đương N2. . .');
INSERT INTO `news_lang` VALUES ('4', '2', '採用情報日本語通訳', '会社JVBベトナムのニーズが通訳を日本同等のレベルN2を募集しています。。。');
INSERT INTO `news_lang` VALUES ('4', '3', 'Careers Japanese interpreters', 'The company JVB Vietnam needs are reruiting interpreters Japanese equivalent level N2. . .');

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting
-- ----------------------------

-- ----------------------------
-- Table structure for setting_lang
-- ----------------------------
DROP TABLE IF EXISTS `setting_lang`;
CREATE TABLE `setting_lang` (
  `id_setting` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_setting`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting_lang
-- ----------------------------

-- ----------------------------
-- Table structure for users_tbl
-- ----------------------------
DROP TABLE IF EXISTS `users_tbl`;
CREATE TABLE `users_tbl` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_tbl
-- ----------------------------
