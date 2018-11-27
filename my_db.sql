# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.5-10.0.17-MariaDB)
# Database: my_db
# Generation Time: 2016-06-06 06:47:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章 id',
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '標題',
  `category` varchar(50) NOT NULL DEFAULT '' COMMENT '分類',
  `content` text NOT NULL COMMENT '內文',
  `publish` tinyint(1) NOT NULL COMMENT '是否發布',
  `create_date` datetime NOT NULL COMMENT '建立日期',
  `modify_date` datetime DEFAULT NULL COMMENT '修改日期',
  `creater_id` int(11) DEFAULT NULL COMMENT '建立者id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;

INSERT INTO `article` (`id`, `title`, `category`, `content`, `publish`, `create_date`, `modify_date`, `creater_id`)
VALUES
	(1,'第一篇文章','新聞','<p>隨著Oculus Rift以及HTC Vive消費版陸續出貨，虛擬實境(VR)相關話題持續延燒，關心此產業發展的朋友，或許會對於這兩款VR頭盔的銷量頗感興趣。在Facebook以及HTC都尚未公布確切銷售數字前，外媒《UPload》就提前給出了數據，結果看來滿不錯的！</p>\n\n<p>HTC Vive出貨量至少五萬套</p>\n\n<p>由於HTC Vive需要基於Steam VR來執行，因此《UPloadVR》透過使用SteamDB和SteamSpy來收集Steam的資料並進行分析，資料主要來自Steam的免費遊戲。據《UPloadVR》統計，目前HTC Vive的出貨量已達5萬套，其中約3萬5千套是消費者版。這個數字主要是從《Job Simulator》遊戲的購買資料而來，因為這款遊戲隨著HTC Vive消費者版同捆發售。</p>\n\n<p>其實HTC Vive出貨量達5萬套，明顯是個被低估的數字，因為還有部分預定的玩家尚未沒收到貨，除此之外也肯定有部分玩家收到貨後，還沒下載同捆遊戲。</p>\n\n<p>Oculus Rift出貨預估超過30萬台</p>\n\n<p>而HTC Vive的強力競爭對手─Oculus Rift，根據歌爾聲學（Oculus Rift的代工廠商之一）副總裁馮莉在4月16日在北京受訪的說法，其銷售量（預購量）已經超過30萬台。</p>\n\n<p>頂級VR頭盔產品中，被Facebook收購的Oculus Rift是第一個正式出貨的產品(今年3月28日)，而HTC Vive緊追在後，從今年的4月5日起於全球正式出貨。這兩款VR裝置都需要搭配具備足夠效能的電腦才可執行。</p>\n\n<p>除了需要搭配高規電腦之外，Oculus Rift與HTC Vive的高昂價格(前者定價599美元、後者則是799美元(台灣售價新台幣28288元))也應是這兩家公司推廣VR的困難點之一。然而，就以上預估銷售數字來看，Oculus Rift以及HTC Vive的首張成績單看來表現的都還不錯。</p>\n\n<p>(中時電子報)</p>',1,'2016-05-16 01:01:00',NULL,1),
	(2,'asdf','消息','<p>sadfsadf</p>',1,'2016-05-17 09:22:24',NULL,1),
	(6,'asdf','最新消息','asdf',1,'2016-06-06 14:22:32',NULL,1);

/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '使用者id',
  `username` varchar(30) NOT NULL COMMENT '登⼊帳號',
  `password` varchar(100) NOT NULL COMMENT '使用者密碼',
  `name` varchar(30) NOT NULL COMMENT '名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `username`, `password`, `name`)
VALUES
	(1,'mktsai','098f6bcd4621d373cade4e832627b4f6','阿洋'),
	(3,'ccc','9df62e693988eb4e1e1444ece0578579','ccc');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table works
# ------------------------------------------------------------

DROP TABLE IF EXISTS `works`;

CREATE TABLE `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '作品 id',
  `intro` text NOT NULL COMMENT '簡介',
  `image_path` text COMMENT '圖⽚路徑',
  `video_path` text COMMENT '影⽚路徑',
  `publish` tinyint(1) NOT NULL COMMENT '是否發布',
  `upload_date` datetime NOT NULL COMMENT '上傳時間',
  `create_user_id` int(11) NOT NULL COMMENT '誰上傳的(建⽴立者id)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;

INSERT INTO `works` (`id`, `intro`, `image_path`, `video_path`, `publish`, `upload_date`, `create_user_id`)
VALUES
	(1,'<p>開心的影片開心的影片開心的影片開心的影片開心的影片開心的影片開心的影片</p>',NULL,'files/videos/laughing.mp4',1,'2016-05-23 12:32:00',1),
	(2,'自拍','files/images/20150514002349.jpg',NULL,1,'2016-05-24 12:36:20',1),
	(3,'小黑','files/images/20150514021023.jpg',NULL,1,'2016-05-24 13:36:20',1);

/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
