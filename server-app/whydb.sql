use whydb;

-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 47.252.26.8    Database: vNews
-- ------------------------------------------------------
-- Server version	5.7.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一新闻id--主键',
  `news_title` varchar(255) NOT NULL COMMENT '新闻标题',
  `news_body` text NOT NULL COMMENT '新闻内容',
  `news_newsViews` int(11) NOT NULL COMMENT '新闻浏览数',
  `news_time` datetime NOT NULL COMMENT '新闻发布时间',
  `news_state` int(11) NOT NULL COMMENT '新闻状态--0 删除 1正常',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `like_count` int(11) NOT NULL DEFAULT '0' COMMENT '新闻点赞总数',
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'admin_news1','```language\n我测试一下这个news\n```\n# 好像有格式呢\n1. 编译1\n2. 测试2\n3. 写代码3',3,'2022-03-24 16:30:31',1,1,0),(2,'admin_new2','adafasfddddddddddddddddddd',2,'2022-03-24 16:31:23',1,1,0),(3,'test的第一个问题报告','为什么不能上传图片？\n上传图片就报错！！',1,'2022-03-24 16:40:09',1,2,0),(4,'admin_应该可以上传文件了','打开了swagger那一段资源addresourcehandler...\n![1a9757597fc7ff35ff40e40fae9dbcfc_w.jpg](/img/31e32ea9a6574c71a12345de328bb4be.jpg)',6,'2022-03-24 18:32:08',1,1,1),(5,'这是一张图片测试一下数据保存','这是内容，图片在这里![gittransport.png](/img/f1f441aaf98e4694ac19a630c6bdc9df.png)\n插入了图片',7,'2022-03-29 18:47:23',1,1,0),(12,'市场动荡不改长期投资原则','##### 先锋领航首席投资官Greg Davis，发布于2022年1月27日\n\n先锋领航一直以来都在强调长期投资的重要性。不管是美股还是A股最近的表现，都是鲜明的例子，更加凸显了长期投资这一点。\n\n尤其我们看到，美国股市近期颇为跌宕起伏。1月20日，美股市场全天稳健上涨，以科技股闻名的纳斯达克指数最高点涨幅近2%。但浮盈在尾盘的一连串抛售中蒸发。仅仅两个工作日后，即 1 月 24 日，又出现了相反的一幕，代表美国大型上市企业股票的标准普尔 500 指数最大跌幅达到了4%，但在尾盘飙升后又收于正值区域。\n\n而中国股市也受外围市场剧烈动荡影响，市场风险偏好下行，1月25日A股全线回调，走出2022年开年以来最差的一天，北向资金出现净流出，终结了此前连续7日净买入态势。\n\n市场的短期波动因各种经济、政策以及情绪因素呈现高度不确定性，短期国内外市场还可能出现更大的波动，很多投资者为此倍感担忧，但我们一直认为，对于长期投资者来说，不过度关注市场短期波动才是一个明智的策略。\n\n \n\n## 未来市场或将出现更大波动\n很显然，金融市场在 2022 年出现大幅波动的情况在所难免。其中有两个最大的因素——加速上升的通胀和仍未结束的疫情——持续存在。先锋领航全球首席经济学家Joe Davis表示：我们认为美联储需要果断采取行动来遏制美国通胀形势，因此我们不难想象未来市场还会出现更多的波动，以及低利率环境也加剧了股市投资出现亏损的可能性。\n\n但是，基于历史经验，我们认为仍然可以对市场长期前景保持乐观态度。如图所示，波动性是常数而非变数，尤其在股市处于低谷时往往会出现大幅飙升。\n**::: hljs-center\n\n\n历史数据：波动率和长期收益\n\n:::\n**\n![Ahistoryofvolatilityandlongtermgains1173x600.png](/img/4bb9af61a6a546c9b54fb3edeeb86799.png)\n\n注：波动率为MSCI全球指数过去 30 个工作日股票价格波动标准差。\n\n资料来源：先锋领航计算，使用Refinitiv Datastream截至2022年1月21日的数据，数据访问时间为2022年1月24日。\n\n过往表现不能保证未来回报。指数的表现并不能准确代表任何特定投资表现，因为无法直接投资于任一指数。\n\n \n\n投资者应该注意的是，从一个较长的时间维度来看全球市场，那些在所难免的市场低谷过后都会迎来更高的高峰。这就是为什么我们建议投资者要为了长期目标而投资，例如退休养老，而不是仅仅为了追求短期收益，我们的投资方法需要由目标来指导。而正如先锋领航的投资原则所强调的那样，合理的投资目标是应当基于对投资回报的现实预期而设定的。\n\n \n\n坚持均衡和长期投资\n在先锋领航2022 年全球经济及市场展望中指出，我们对长期股票回报前景持谨慎但不看跌的态度。未来一年市场走势将受到政府调整疫情初期一系列非常态的财政和货币支持力度的影响。\n\n而我们对固定收益的前景更为乐观；尽管利率水平目前仍处于历史低位，但自 2020 年以来的适度上涨相应调高了我们的回报前景。利率上升对投资者而言可以说是一线希望，虽然一段时间内可能会带来一定的负回报，但长期来看对债券投资是利好因素。\n\n未来几个月，政府出于平衡考虑的相关举措，可能会对经济增长、通胀和投资回报产生重大影响，过程中还将面临诸多困难和挑战。与此同时，投资者也并不轻松，长期投资可能需要克服市场修正带来的冲击和挑战，甚至可能经历市值从高点下跌10%以上的情况。\n\n但一如既往，我们还是建议投资者：保持长远目光，摒除可能导致冲动决策的市场噪音，忠于自己的目标，并相信市场最终会奖励那些拥抱长期的人。\n\n \n\n注：\n\n所有投资都涉及风险，包括可能损失本金。\n债券投资涉及利率、信用和通胀风险。',3,'2022-03-31 21:00:12',1,1,0);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_tag`
--

DROP TABLE IF EXISTS `news_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_tag` (
  `news_id` int(11) NOT NULL COMMENT '新闻id',
  `tag_id` int(11) NOT NULL COMMENT 'tag id',
  UNIQUE KEY `news_id` (`news_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_tag`
--

LOCK TABLES `news_tag` WRITE;
/*!40000 ALTER TABLE `news_tag` DISABLE KEYS */;
INSERT INTO `news_tag` VALUES (1,1),(2,1),(3,2),(4,1),(5,1),(12,3);
/*!40000 ALTER TABLE `news_tag` ENABLE KEYS */;
UNLOCK TABLES;




--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `login_time` datetime NOT NULL COMMENT '最后登录时间',
  `login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `user_id` int(11) NOT NULL COMMENT '用户id--主键',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('2022-04-01 09:39:09','127.0.0.1',1),('2022-03-31 23:16:39','127.0.0.1',2);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(30) NOT NULL COMMENT '角色名',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'USER'),(2,'ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一分类id--主键',
  `tag_name` varchar(20) NOT NULL COMMENT '分类名',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'主页',1),(2,'公司介绍',2),(3,'市场动态',1),(4,'研究动态',1);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户唯一id--主键',
  `user_name` varchar(30) NOT NULL COMMENT '用户名--不能重复',
  `user_password` varchar(255) NOT NULL COMMENT '用户密码',
  `user_mail` varchar(50) NOT NULL COMMENT '用户邮箱',
  `user_state` int(11) NOT NULL COMMENT '用户状态 0 封禁 1正常',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','$2a$10$jP.iE738yVy1ya9IEf4uMu1RKsEDY5B7VXAd/IKNi36YQejsjA852','biwier@agilesun.com',1),(2,'test','$2a$10$wRcs4YJNlCquWflMdp5I/uqSgium3ODA9yYFhxlUfWzUs4JvMTa9u','adamus@agilesun.com',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_like`
--

DROP TABLE IF EXISTS `user_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '点赞的用户id',
  `news_id` int(11) NOT NULL COMMENT '被点赞的文章id',
  `status` varchar(255) DEFAULT '1' COMMENT '点赞状态，0取消，1点赞',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ul1` (`user_id`,`news_id`) USING BTREE,
  UNIQUE KEY `ul2` (`news_id`,`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户点赞表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_like`
--

LOCK TABLES `user_like` WRITE;
/*!40000 ALTER TABLE `user_like` DISABLE KEYS */;
INSERT INTO `user_like` VALUES (1,1,4,'1','2022-03-29 20:36:24','2022-03-29 20:36:24'),(2,1,5,'0','2022-03-29 20:36:22','2022-03-29 20:36:22'),(5,2,12,'0','2022-04-01 09:36:38','2022-04-01 09:36:38');
/*!40000 ALTER TABLE `user_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1),(2,1,2),(3,2,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;


-- Dump completed on 2022-04-01 18:01:46
DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(30) NOT NULL COMMENT '用户名--不能重复',
  `message` text NOT NULL COMMENT '消息内容',
  `email` varchar(50) NOT NULL COMMENT '用户邮箱',
  `ip` varchar(50) NOT NULL COMMENT 'IP',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
