/*
 Navicat Premium Data Transfer

 Source Server         : mysql_54
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : 39.105.54.45:3306
 Source Schema         : test1

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 07/08/2019 14:20:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `articleid` int(20) NOT NULL AUTO_INCREMENT,
  `articletitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `articlesummary` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `articledetail` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userid` int(20) NOT NULL,
  `nowdate` datetime NULL,
  PRIMARY KEY (`articleid`) USING BTREE,
  INDEX `userid`(`userid`) USING BTREE,
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `suser` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2254 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (2222, '2222', '222222', '22222', 1, '2019-05-15 05:25:45');
INSERT INTO `article` VALUES (2223, '2222', '222222', '22222', 1, '2019-05-15 05:25:45');
INSERT INTO `article` VALUES (2224, '2222', '222222', '22222', 1, '2019-05-15 05:55:45');
INSERT INTO `article` VALUES (2225, '2222', '222222', '22222', 3, '2019-05-15 13:25:45');
INSERT INTO `article` VALUES (2226, '2222', '222222', '22222', 1, '2019-05-15 05:25:45');
INSERT INTO `article` VALUES (2227, '2222', '222222', '22222', 5, '2019-05-15 15:25:45');
INSERT INTO `article` VALUES (2228, '2222', '222222', '22222', 1, '2019-05-15 05:25:45');
INSERT INTO `article` VALUES (2229, '2222', '222222', '22222', 6, '2019-05-15 05:25:45');
INSERT INTO `article` VALUES (2230, '2222', '222222', '22222', 2, '2019-05-15 12:25:45');
INSERT INTO `article` VALUES (2231, '2222', '222222', '22222', 5, '2019-05-15 05:35:45');
INSERT INTO `article` VALUES (2232, '2222', '222222', '22222', 4, '2019-05-15 05:58:45');
INSERT INTO `article` VALUES (2233, '2222', '222222', '22222', 3, '2019-05-15 05:25:45');
INSERT INTO `article` VALUES (2234, '2222', '222222', '22222', 6, '2019-05-15 17:36:45');
INSERT INTO `article` VALUES (2235, '2222', '222222', '22222', 1, '2019-05-15 05:25:45');
INSERT INTO `article` VALUES (2236, '2222', '222222', '22222', 1, '2019-05-15 05:55:45');
INSERT INTO `article` VALUES (2237, '2222', '222222', '22222', 3, '2019-05-15 13:25:45');
INSERT INTO `article` VALUES (2238, '2222', '222222', '22222', 1, '2019-05-15 05:25:45');
INSERT INTO `article` VALUES (2239, '2222', '222222', '22222', 5, '2019-05-15 15:25:45');
INSERT INTO `article` VALUES (2240, '2222', '222222', '22222', 1, '2019-05-15 05:25:45');
INSERT INTO `article` VALUES (2241, '2222', '222222', '22222', 6, '2019-05-15 05:25:45');
INSERT INTO `article` VALUES (2242, '2222', '222222', '22222', 2, '2019-05-15 12:25:45');
INSERT INTO `article` VALUES (2243, '2222', '222222', '22222', 5, '2019-05-15 05:35:45');
INSERT INTO `article` VALUES (2244, '2222', '222222', '22222', 4, '2019-05-15 05:58:45');
INSERT INTO `article` VALUES (2245, '2222', '222222', '22222', 3, '2019-05-15 05:25:45');
INSERT INTO `article` VALUES (2246, '2222', '222222', '22222', 6, '2019-05-15 17:36:45');
INSERT INTO `article` VALUES (2247, '2222', '222222', '22222', 5, '2019-05-15 05:25:45');
INSERT INTO `article` VALUES (2248, '在教室内活动，有许多看起来细微的事情值得同学们注意', '在教室内活动，有许多看起来细微的事情值得同学们注意', '<p>在教室内活动，有许多看起来细微的事情值得同学们注意</p>\n', 2, '2019-05-15 12:25:45');
INSERT INTO `article` VALUES (2249, '在教室内活动，有许多看起来细微的事情值得同学们注意', '在教室内活动，有许多看起来细微的事情值得同学们注意', '<script>\n							var E = window.wangEditor\n							var editor = new E(\'#content\') // 两个参数也可以传入 elem 对象，class 选择器\n							//开启debug模式\n							editor.customConfig.debug = true;\n							// 关闭粘贴内容中的样式\n							editor.customConfig.pasteFilterStyle = false\n							// 忽略粘贴内容中的图片\n							editor.customConfig.pasteIgnoreImg = true\n							// 使用 base64 保存图片\n							//editor.customConfig.uploadImgShowBase64 = true\n						\n							// 上传图片到服务器\n							editor.customConfig.uploadFileName = \'myFile\'; //设置文件上传的参数名称\n							editor.customConfig.uploadImgServer = \'../article/upload\'; //设置上传文件的服务器路径\n							editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024; // 将图片大小限制为 3M\n							//自定义上传图片事件\n							editor.customConfig.uploadImgHooks = {\n								before: function(xhr, editor, files) {\n						\n								},\n								success: function(xhr, editor, result) {\n									console.log(\"上传成功\");\n								},\n								fail: function(xhr, editor, result) {\n									console.log(\"上传失败,原因是\" + result);\n								},\n								error: function(xhr, editor) {\n									console.log(\"上传出错\");\n								},\n								timeout: function(xhr, editor) {\n									console.log(\"上传超时\");\n								}\n							}\n						\n							editor.create()\n						</script><p>在教室内活动，有许多看起来细微的事情值得同学们注意</p><p>山东省few<span style=\"font-weight: bold;\">的氛围缺乏发的武器润肺威锋网</span></p><p><br></p><p><br></p><p><img src=\"http://localhost:8080/upload/2019-03-04_113313.jpg\" style=\"max-width:100%;\"><br></p>', 2, '2019-05-15 12:25:45');
INSERT INTO `article` VALUES (2250, ' 的方法论可以遵循，完全是“个人', '古风共5 rev份头 风热刚发的晚饭太32few太热划分为vrryt4g5', '<script>\n							var E = window.wangEditor\n							var editor = new E(\'#content\') // 两个参数也可以传入 elem 对象，class 选择器\n							//开启debug模式\n							editor.customConfig.debug = true;\n							// 关闭粘贴内容中的样式\n							editor.customConfig.pasteFilterStyle = false\n							// 忽略粘贴内容中的图片\n							editor.customConfig.pasteIgnoreImg = true\n							// 使用 base64 保存图片\n							//editor.customConfig.uploadImgShowBase64 = true\n						\n							// 上传图片到服务器\n							editor.customConfig.uploadFileName = \'myFile\'; //设置文件上传的参数名称\n							editor.customConfig.uploadImgServer = \'../article/upload\'; //设置上传文件的服务器路径\n							editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024; // 将图片大小限制为 3M\n							//自定义上传图片事件\n							editor.customConfig.uploadImgHooks = {\n								before: function(xhr, editor, files) {\n						\n								},\n								success: function(xhr, editor, result) {\n									console.log(\"上传成功\");\n								},\n								fail: function(xhr, editor, result) {\n									console.log(\"上传失败,原因是\" + result);\n								},\n								error: function(xhr, editor) {\n									console.log(\"上传出错\");\n								},\n								timeout: function(xhr, editor) {\n									console.log(\"上传超时\");\n								}\n							}\n						\n							editor.create()\n						</script><h1>&nbsp;得我Greg惹分3 3份3</h1><p>分为若干人分为4费23的二维风3让 忍惹3风热4 承担起问他贴梗海棠特供热供热5他5个</p><p>vfdert43t4234r423分析师复古风股份热个人风风发的人</p><p><img src=\"http://localhost:8080/upload/2019-04-16_182433.jpg\" style=\"max-width:100%;\"><br></p><h1 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\">得我Greg惹分3 3份3的死亡如风</h1><p>&nbsp;的创始人非亲非故 慈溪市发放委托人</p>', 2, '2019-05-15 12:25:45');
INSERT INTO `article` VALUES (2251, '和我破日复合绒ifhi欧积分哦平稳if噢诶我if基地', ' 发的如非农hi欧文4覅欧派完i房间诶哦我排位if就', '<script>\n							var E = window.wangEditor\n							var editor = new E(\'#content\') // 两个参数也可以传入 elem 对象，class 选择器\n							//开启debug模式\n							editor.customConfig.debug = true;\n							// 关闭粘贴内容中的样式\n							editor.customConfig.pasteFilterStyle = false\n							// 忽略粘贴内容中的图片\n							editor.customConfig.pasteIgnoreImg = true\n							// 使用 base64 保存图片\n							//editor.customConfig.uploadImgShowBase64 = true\n						\n							// 上传图片到服务器\n							editor.customConfig.uploadFileName = \'myFile\'; //设置文件上传的参数名称\n							editor.customConfig.uploadImgServer = \'../article/upload\'; //设置上传文件的服务器路径\n							editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024; // 将图片大小限制为 3M\n							//自定义上传图片事件\n							editor.customConfig.uploadImgHooks = {\n								before: function(xhr, editor, files) {\n						\n								},\n								success: function(xhr, editor, result) {\n									console.log(\"上传成功\");\n								},\n								fail: function(xhr, editor, result) {\n									console.log(\"上传失败,原因是\" + result);\n								},\n								error: function(xhr, editor) {\n									console.log(\"上传出错\");\n								},\n								timeout: function(xhr, editor) {\n									console.log(\"上传超时\");\n								}\n							}\n						\n							editor.create()\n						</script><h1>&nbsp;发的无人敢惹该扔热敷热敷辅导费人导入法人</h1><p><span style=\"font-size: xx-large;\">&nbsp;</span><span style=\"font-size: x-large;\">当然供热供热无人敢惹隔热个人风dwergre 的第五人格热风服务费大润发热供热供热grew供热二个人e fdrf非得问他热头24天图3v分5天 风人 发到太头2他的学完忍32头3题3他</span><img src=\"http://localhost:8080/upload/2019-03-06_161955.jpg\" style=\"max-width: 100%;\"></p><p><span style=\"font-size: x-large;\">当然供热供热无人敢惹隔热个人风dwergre 的第五人格热风服务费大润发热供热供热grew供热二个人e fdrf非得问他热头24天图3v分5天 风人 发到太头2他的学完忍32头3题3他</span>&nbsp;&nbsp;<br></p>', 2, '2019-05-15 12:25:45');
INSERT INTO `article` VALUES (2252, '房间都if叫哦我or软键盘嚄辅导课网风开发的生理期【热破放假', '幅度为瑞风弄【分破耳机我怕【of么去配偶付款二鹏封ID缺乏', '<script>\n							var E = window.wangEditor\n							var editor = new E(\'#content\') // 两个参数也可以传入 elem 对象，class 选择器\n							//开启debug模式\n							editor.customConfig.debug = true;\n							// 关闭粘贴内容中的样式\n							editor.customConfig.pasteFilterStyle = false\n							// 忽略粘贴内容中的图片\n							editor.customConfig.pasteIgnoreImg = true\n							// 使用 base64 保存图片\n							//editor.customConfig.uploadImgShowBase64 = true\n						\n							// 上传图片到服务器\n							editor.customConfig.uploadFileName = \'myFile\'; //设置文件上传的参数名称\n							editor.customConfig.uploadImgServer = \'../article/upload\'; //设置上传文件的服务器路径\n							editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024; // 将图片大小限制为 3M\n							//自定义上传图片事件\n							editor.customConfig.uploadImgHooks = {\n								before: function(xhr, editor, files) {\n						\n								},\n								success: function(xhr, editor, result) {\n									console.log(\"上传成功\");\n								},\n								fail: function(xhr, editor, result) {\n									console.log(\"上传失败,原因是\" + result);\n								},\n								error: function(xhr, editor) {\n									console.log(\"上传出错\");\n								},\n								timeout: function(xhr, editor) {\n									console.log(\"上传超时\");\n								}\n							}\n						\n							editor.create()\n						</script><p>&nbsp;程度污染房间都IQ日假发票【4破解欧派【 ofkdlsfkdpoqfjewo就啥情况类似的长期而花费为彻底搜青涩if黑哦都IQ而返回去诶覅偶尔玩IE发货地欧其合法ID偶尔吃的时间哦骑单车解耦ICP第七届额覅偶检测基地icdoiqeihfr9rty48932<img src=\"http://localhost:8080/upload/2019-03-06_162056.jpg\" style=\"max-width: 100%;\"></p>', 2, '2019-05-15 12:25:45');
INSERT INTO `article` VALUES (2253, 'd csfrf ds 程度分为分为非完全分娩期氛围', ' 的往前飞44 反倒是采购法人和依据理解GV飞天热饮 ', '<script>\n							var E = window.wangEditor\n							var editor = new E(\'#content\') // 两个参数也可以传入 elem 对象，class 选择器\n							//开启debug模式\n							editor.customConfig.debug = true;\n							// 关闭粘贴内容中的样式\n							editor.customConfig.pasteFilterStyle = false\n							// 忽略粘贴内容中的图片\n							editor.customConfig.pasteIgnoreImg = true\n							// 使用 base64 保存图片\n							//editor.customConfig.uploadImgShowBase64 = true\n						\n							// 上传图片到服务器\n							editor.customConfig.uploadFileName = \'myFile\'; //设置文件上传的参数名称\n							editor.customConfig.uploadImgServer = \'../article/upload\'; //设置上传文件的服务器路径\n							editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024; // 将图片大小限制为 3M\n							//自定义上传图片事件\n							editor.customConfig.uploadImgHooks = {\n								before: function(xhr, editor, files) {\n						\n								},\n								success: function(xhr, editor, result) {\n									console.log(\"上传成功\");\n								},\n								fail: function(xhr, editor, result) {\n									console.log(\"上传失败,原因是\" + result);\n								},\n								error: function(xhr, editor) {\n									console.log(\"上传出错\");\n								},\n								timeout: function(xhr, editor) {\n									console.log(\"上传超时\");\n								}\n							}\n						\n							editor.create()\n						</script><p>vfdegre5各听歌城东社区 uki6lo,非当事人grew人工费热热饭人人付认购人防发多少人跟人隔热管5特cdsrgrgrgfdbuykimku7k6u欢迎uj8ijtr 与nhggjuyki6lki6y聂海涛大V撒晚饭热我哥哥同行业同韩国人并一统江湖要让他突然听歌听歌体育课诺和锐能够烦人氧化亚铜一百个让人4被感染6他人差不多深刻理解愤怒地说的咖啡农人克服你的快乐派人覅内容IE日方你fnlfr</p><p><img src=\"http://localhost:8080/upload/朱学良150429199511101216.jpg\" style=\"max-width: 100%;\"></p>', 2, '2019-05-15 12:25:45');

-- ----------------------------
-- Table structure for suser
-- ----------------------------
DROP TABLE IF EXISTS `suser`;
CREATE TABLE `suser`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userpass` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of suser
-- ----------------------------
INSERT INTO `suser` VALUES (1, 'zhuu', '123456');
INSERT INTO `suser` VALUES (2, 'zhu xueliang', '123456');
INSERT INTO `suser` VALUES (3, 'zhu xueliang', '123456');
INSERT INTO `suser` VALUES (4, 'admin', '123');
INSERT INTO `suser` VALUES (5, '朱学良', '123456');
INSERT INTO `suser` VALUES (6, '年轻', '123456');

SET FOREIGN_KEY_CHECKS = 1;
