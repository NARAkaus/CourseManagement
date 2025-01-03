/*
 Navicat Premium Data Transfer

 Source Server         : localhost-mysql
 Source Server Type    : MySQL
 Source Server Version : 50731 (5.7.31-log)
 Source Host           : localhost:3306
 Source Schema         : student_manager_system

 Target Server Type    : MySQL
 Target Server Version : 50731 (5.7.31-log)
 File Encoding         : 65001

 Date: 23/12/2024 16:10:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `real_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `school` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sex` tinyint(4) NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456', '管理员', 0, '北京大学', '123555@qq.com', '13366554487', 0, '2023-03-28 15:06:24');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '编号',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名',
  `credits` decimal(4, 1) NOT NULL DEFAULT 2.0 COMMENT '学分',
  `score` int(11) NOT NULL DEFAULT 100 COMMENT '满分',
  `number` int(11) NOT NULL DEFAULT 32 COMMENT '课时',
  `year` int(11) NOT NULL DEFAULT 2016 COMMENT '届时',
  `term` tinyint(4) NOT NULL DEFAULT 0 COMMENT '学期',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '类别 1必修 2选修',
  `profession` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '专业',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('2016011001', '数字电路基础', 4.0, 100, 18, 2016, 1, 1, '电子信息工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016011002', '大学物理', 4.0, 100, 20, 2016, 1, 1, '电子信息工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016011003', '线性代数', 1.0, 100, 18, 2016, 1, 1, '电子信息工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016011004', '复变函数', 2.0, 100, 18, 2016, 1, 1, '电子信息工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016011005', '模拟电子线路', 4.0, 100, 18, 2016, 1, 1, '电子信息工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016011006', '信号与系统', 2.0, 100, 18, 2016, 1, 1, '电子信息工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016011007', '大学英语', 4.0, 100, 18, 2016, 1, 1, '电子信息工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016011008', '体育', 1.0, 100, 16, 2016, 1, 1, '电子信息工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016011009', '电子技术', 2.0, 100, 16, 2016, 1, 1, '电子信息工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016011010', '多媒体技术', 2.0, 100, 18, 2016, 1, 1, '电子信息工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016021001', '物联网工程导论', 2.0, 100, 18, 2016, 1, 1, '物联网', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016021002', '物联网安全', 2.0, 100, 18, 2016, 1, 1, '物联网', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016021003', '现代通信技术', 1.0, 100, 18, 2016, 1, 1, '物联网', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016021004', '无线传感器网络', 4.0, 100, 18, 2016, 1, 1, '物联网', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016021005', '现代传感器技术', 2.0, 100, 18, 2016, 1, 1, '物联网', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016021006', '信号与系统概论', 2.0, 100, 18, 2016, 1, 1, '物联网', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016031001', '计算机网络技术', 1.0, 100, 18, 2016, 1, 1, '计算机', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016031002', '网络与通信', 1.0, 100, 18, 2016, 1, 1, '计算机', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016031003', '计算机安全', 2.0, 100, 15, 2016, 1, 1, '计算机', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016031004', '算法与数据结构', 4.0, 100, 18, 2016, 1, 1, '计算机', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016031005', '多媒体信息处理', 2.0, 100, 14, 2016, 1, 1, '计算机', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016031006', '计算机组成原理', 2.0, 100, 18, 2016, 1, 1, '计算机', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016041001', '高频电子线路', 4.0, 100, 18, 2016, 1, 1, '通信工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016041002', '光纤通讯', 2.0, 100, 16, 2016, 1, 1, '通信工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016041003', '移动通讯', 1.0, 100, 18, 2016, 1, 1, '通信工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016041004', '电路分析', 1.0, 100, 18, 2016, 1, 1, '通信工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016041005', '程控交换技术', 2.0, 100, 18, 2016, 1, 1, '通信工程', '2023-03-31 15:50:22');
INSERT INTO `course` VALUES ('2016041006', '通信原理', 4.0, 100, 18, 2016, 1, 1, '通信工程', '2023-03-31 15:50:22');

-- ----------------------------
-- Table structure for course_info
-- ----------------------------
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `room` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `profession` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_info
-- ----------------------------
INSERT INTO `course_info` VALUES (1, '2016011001', 1, 25, '404', '电子信息工程');
INSERT INTO `course_info` VALUES (2, '2016011002', 1, 25, '401', '电子信息工程');
INSERT INTO `course_info` VALUES (3, '2016011003', 1, 25, '403', '电子信息工程');
INSERT INTO `course_info` VALUES (4, '2016011004', 1, 25, '406', '电子信息工程');
INSERT INTO `course_info` VALUES (5, '2016011005', 1, 25, '405', '电子信息工程');
INSERT INTO `course_info` VALUES (6, '2016011006', 1, 25, '402', '电子信息工程');
INSERT INTO `course_info` VALUES (7, '2016021001', 1, 25, '505', '物联网');
INSERT INTO `course_info` VALUES (8, '2016021002', 1, 25, NULL, '物联网');
INSERT INTO `course_info` VALUES (9, '2016021003', 1, 25, NULL, '物联网');
INSERT INTO `course_info` VALUES (10, '2016021005', 1, 25, NULL, '物联网');
INSERT INTO `course_info` VALUES (11, '2016021006', 1, 25, NULL, '物联网');
INSERT INTO `course_info` VALUES (12, '2016031001', 1, 25, '506', '计算机');
INSERT INTO `course_info` VALUES (13, '2016031002', 1, 25, NULL, '计算机');
INSERT INTO `course_info` VALUES (14, '2016031003', 1, 25, NULL, '计算机');
INSERT INTO `course_info` VALUES (15, '2016031004', 1, 25, NULL, '计算机');
INSERT INTO `course_info` VALUES (16, '2016031005', 1, 25, NULL, '计算机');
INSERT INTO `course_info` VALUES (17, '2016031006', 1, 25, NULL, '计算机');
INSERT INTO `course_info` VALUES (18, '2016041001', 1, 25, '506', '通信工程');
INSERT INTO `course_info` VALUES (19, '2016041002', 1, 25, NULL, '通信工程');
INSERT INTO `course_info` VALUES (20, '2016041003', 1, 25, NULL, '通信工程');
INSERT INTO `course_info` VALUES (21, '2016021004', 1, 25, NULL, '物联网');
INSERT INTO `course_info` VALUES (22, '2016041004', 1, 25, NULL, '通信工程');
INSERT INTO `course_info` VALUES (23, '2016041005', 1, 25, NULL, '通信工程');
INSERT INTO `course_info` VALUES (24, '2016041006', 1, 25, NULL, '通信工程');
INSERT INTO `course_info` VALUES (27, '2016011007', 1, 25, NULL, '电子信息工程');
INSERT INTO `course_info` VALUES (28, '2016011008', 1, 25, NULL, '电子信息工程');
INSERT INTO `course_info` VALUES (29, '2016011009', 1, 25, NULL, '电子信息工程');
INSERT INTO `course_info` VALUES (30, '2016011010', 1, 25, NULL, '电子信息工程');

-- ----------------------------
-- Table structure for courseware
-- ----------------------------
DROP TABLE IF EXISTS `courseware`;
CREATE TABLE `courseware`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `attachmenturl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `attachmentname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `addtime` datetime NULL DEFAULT NULL,
  `createid` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courseware
-- ----------------------------
INSERT INTO `courseware` VALUES (1, 2016011004, '复变函数', '999', 'http://localhost:9192/files/815238c8-3d2b-4e3f-b4b1-ed7a11dca1a0', '新建DOCX 文档 (2) (1).docx', '2024-12-23 04:04:12', 'admin', '管理员');
INSERT INTO `courseware` VALUES (2, 2016011001, '数字电路基础', '888', 'http://localhost:9192/files/570d8308-859c-4c92-85c0-0fe941b60291', '新建DOCX 文档 (2) (1).docx', '2024-12-23 04:04:24', 'admin', '管理员');
INSERT INTO `courseware` VALUES (3, 2016011006, '信号与系统', '666', 'http://localhost:9192/files/c771e64f-1855-43ec-b1ec-7fec18e1c4a1', '新建DOCX 文档 (2) (1) (1).docx', '2024-12-23 04:06:05', 'admin', '管理员');

-- ----------------------------
-- Table structure for homework
-- ----------------------------
DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `attachmenturl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `attachmentname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `addtime` datetime NULL DEFAULT NULL,
  `createid` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homework
-- ----------------------------
INSERT INTO `homework` VALUES (1, 2016011001, '数字电路基础', '123', 'http://localhost:9192/files/7c7e7276-ff89-47ae-a568-c73ccd27e168', '新建DOCX 文档 (2).docx', '2024-12-23 11:40:27', '3890290', '张三');
INSERT INTO `homework` VALUES (2, 2016011003, '线性代数', '333', 'http://localhost:9192/files/afdccdf0-0a55-4d7e-839c-ac9cddf38ae3', '新建DOCX 文档 (2).docx', '2024-12-23 11:59:37', '3890290', '张三');
INSERT INTO `homework` VALUES (3, 2016011005, '模拟电子线路', '请按时提交', 'http://localhost:9192/files/ff07bce6-b684-4ab0-a638-235d83aa510a', '新建DOCX 文档 (2).docx', '2024-12-23 03:14:36', '3890290', '张三');

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES (1, '电子信息工程');
INSERT INTO `profession` VALUES (2, '物联网');
INSERT INTO `profession` VALUES (3, '计算机');
INSERT INTO `profession` VALUES (4, '通信工程');
INSERT INTO `profession` VALUES (5, '土木工程');
INSERT INTO `profession` VALUES (6, '网络工程');
INSERT INTO `profession` VALUES (7, '工程造价');
INSERT INTO `profession` VALUES (8, '会计');
INSERT INTO `profession` VALUES (9, '环境工程');
INSERT INTO `profession` VALUES (12, '123');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `real_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `level` tinyint(4) NOT NULL DEFAULT 2,
  `school` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `admission_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `profession` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `grade` int(11) NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sex` tinyint(4) NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('3168901101', '3168901101', '123456', '陈小明', 2, '北京大学', '2016', '564387882@qq.com', '电子信息工程', 1601, '13351204423', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901102', '3168901102', '123456', '谭小强', 2, '北京大学', '2016', '564387882@qq.com', '电子信息工程', 1601, '13104561561', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901103', '3168901103', '123456', '曹维启', 2, '北京大学', '2016', '363740@qq.com', '电子信息工程', 1601, '13700010121', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901104', '3168901104', '123456', '吕德', 2, '北京大学', '2016', '7206466@qq.com', '电子信息工程', 1601, '15103373621', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901105', '3168901105', '123456', '柏泽', 2, '北京大学', '2016', '030844828@qq.com', '电子信息工程', 1601, '13306440031', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901106', '3168901106', '123456', '熊辉力', 2, '北京大学', '2016', '3685763@qq.com', '电子信息工程', 1601, '13600165166', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901107', '3168901107', '123456', '傅冠', 2, '北京大学', '2016', '6334420@qq.com', '电子信息工程', 1601, '13701752016', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901108', '3168901108', '123456', '酆保', 2, '北京大学', '2016', '60323042@qq.com', '电子信息工程', 1601, '15200310443', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901109', '3168901109', '123456', '郑腾', 2, '北京大学', '2016', '05575@qq.com', '电子信息工程', 1601, '13103111152', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901110', '3168901110', '123456', '吴斌', 2, '北京大学', '2016', '26882036@qq.com', '电子信息工程', 1601, '13104042247', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901111', '3168901111', '123456', '柳慧巧', 2, '北京大学', '2016', '86670083@qq.com', '电子信息工程', 1601, '13704164341', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901112', '3168901112', '123456', '伏颖', 2, '北京大学', '2016', '8035523@qq.com', '电子信息工程', 1601, '13003751100', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901113', '3168901113', '123456', '鲍翔旭', 2, '北京大学', '2016', '336043@qq.com', '电子信息工程', 1601, '15105275012', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901114', '3168901114', '123456', '周泰盛', 2, '北京大学', '2016', '45773822@qq.com', '电子信息工程', 1601, '13605744115', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901115', '3168901115', '123456', '葛思', 2, '北京大学', '2016', '3434347@qq.com', '电子信息工程', 1601, '13102513003', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901116', '3168901116', '123456', '舒乐', 2, '北京大学', '2016', '720673668@qq.com', '电子信息工程', 1601, '13004250563', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901117', '3168901117', '123456', '孔月莺', 2, '北京大学', '2016', '8460727@qq.com', '电子信息工程', 1601, '13402175067', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901118', '3168901118', '123456', '姜斌', 2, '北京大学', '2016', '06402840@qq.com', '电子信息工程', 1601, '15301131611', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901119', '3168901119', '123456', '汪敬震', 2, '北京大学', '2016', '632228805@qq.com', '电子信息工程', 1601, '15704356031', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901120', '3168901120', '123456', '曹旭', 2, '北京大学', '2016', '8607467@qq.com', '电子信息工程', 1601, '13501641007', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901121', '3168901121', '123456', '柳影荔', 2, '北京大学', '2016', '8600234@qq.com', '电子信息工程', 1601, '13006514022', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901122', '3168901122', '123456', '蓝敬震', 2, '北京大学', '2016', '6427836@qq.com', '电子信息工程', 1601, '15001253413', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901123', '3168901123', '123456', '陈启', 2, '北京大学', '2016', '632837@qq.com', '电子信息工程', 1601, '15101024161', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901124', '3168901124', '123456', '严发', 2, '北京大学', '2016', '3775303@qq.com', '电子信息工程', 1601, '13402221141', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901125', '3168901125', '123456', '严强军', 2, '北京大学', '2016', '2833865@qq.com', '电子信息工程', 1601, '13501243126', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901126', '3168901126', '123456', '傅梅', 2, '北京大学', '2016', '5738850@qq.com', '电子信息工程', 1601, '13304411716', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901127', '3168901127', '123456', '齐莲', 2, '北京大学', '2016', '584875@qq.com', '电子信息工程', 1601, '13506746627', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901128', '3168901128', '123456', '邹燕彩', 2, '北京大学', '2016', '84482@qq.com', '电子信息工程', 1601, '15106244167', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901129', '3168901129', '123456', '滕承乐', 2, '北京大学', '2016', '64373866@qq.com', '电子信息工程', 1601, '15302411511', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901130', '3168901130', '123456', '吴翰', 2, '北京大学', '2016', '44353236@qq.com', '电子信息工程', 1601, '15106114741', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901131', '3168901131', '123456', '杨梦', 2, '北京大学', '2016', '2728205@qq.com', '电子信息工程', 1601, '13507047313', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901132', '3168901132', '123456', '尹厚庆', 2, '北京大学', '2016', '563536627@qq.com', '电子信息工程', 1601, '15300773435', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901133', '3168901133', '123456', '康莎', 2, '北京大学', '2016', '70302307@qq.com', '电子信息工程', 1601, '15602604715', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901134', '3168901134', '123456', '薛婉娴', 2, '北京大学', '2016', '75037403@qq.com', '电子信息工程', 1601, '15206754657', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901135', '3168901135', '123456', '毕强军', 2, '北京大学', '2016', '724302@qq.com', '电子信息工程', 1601, '13403206262', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901136', '3168901136', '123456', '孔雅', 2, '北京大学', '2016', '756085533@qq.com', '电子信息工程', 1601, '13406450046', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901137', '3168901137', '123456', '谈世', 2, '北京大学', '2016', '0647457@qq.com', '电子信息工程', 1601, '13307111421', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901138', '3168901138', '123456', '米勤', 2, '北京大学', '2016', '046766@qq.com', '电子信息工程', 1601, '15606114131', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901139', '3168901139', '123456', '水利清', 2, '北京大学', '2016', '7200038@qq.com', '电子信息工程', 1601, '15001216365', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901140', '3168901140', '123456', '昌飞彬', 2, '北京大学', '2016', '654302@qq.com', '电子信息工程', 1601, '13004151321', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901141', '3168901141', '123456', '范之', 2, '北京大学', '2016', '2063886@qq.com', '电子信息工程', 1601, '13500617610', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901142', '3168901142', '123456', '薛聪澜', 2, '北京大学', '2016', '6245266@qq.com', '电子信息工程', 1601, '13704104643', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901143', '3168901143', '123456', '蓝盛', 2, '北京大学', '2016', '335486@qq.com', '电子信息工程', 1601, '13005132500', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901144', '3168901144', '123456', '朱庆', 2, '北京大学', '2016', '706350@qq.com', '电子信息工程', 1601, '13107244171', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901145', '3168901145', '123456', '殷环', 2, '北京大学', '2016', '48684@qq.com', '电子信息工程', 1601, '13605745626', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901146', '3168901146', '123456', '水兴', 2, '北京大学', '2016', '73852533@qq.com', '电子信息工程', 1601, '13106661141', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901147', '3168901147', '123456', '姚言', 2, '北京大学', '2016', '4704574@qq.com', '电子信息工程', 1601, '13003310011', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901148', '3168901148', '123456', '邵震', 2, '北京大学', '2016', '475455334@qq.com', '电子信息工程', 1601, '13707631151', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901149', '3168901149', '123456', '史震', 2, '北京大学', '2016', '24778085@qq.com', '电子信息工程', 1601, '15607100436', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901150', '3168901150', '123456', '卞奇', 2, '北京大学', '2016', '2404227@qq.com', '电子信息工程', 1601, '13103720567', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901201', '3168901201', '123456', '范婉娴', 2, '北京大学', '2016', '7066785@qq.com', '电子信息工程', 1602, '15200665614', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901202', '3168901202', '123456', '廉善', 2, '北京大学', '2016', '67077805@qq.com', '电子信息工程', 1602, '15103017634', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901203', '3168901203', '123456', '倪士以', 2, '北京大学', '2016', '05246750@qq.com', '电子信息工程', 1602, '13202301117', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901204', '3168901204', '123456', '鲁梦', 2, '北京大学', '2016', '0656520@qq.com', '电子信息工程', 1602, '15701427421', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901205', '3168901205', '123456', '董素', 2, '北京大学', '2016', '63387005@qq.com', '电子信息工程', 1602, '13004617373', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901206', '3168901206', '123456', '孙山仁', 2, '北京大学', '2016', '46352855@qq.com', '电子信息工程', 1602, '13103714112', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901207', '3168901207', '123456', '贺山仁', 2, '北京大学', '2016', '285423@qq.com', '电子信息工程', 1602, '15707311051', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901208', '3168901208', '123456', '严成', 2, '北京大学', '2016', '7687340@qq.com', '电子信息工程', 1602, '13102565231', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901209', '3168901209', '123456', '袁邦', 2, '北京大学', '2016', '870438832@qq.com', '电子信息工程', 1602, '13101156211', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901210', '3168901210', '123456', '邵清', 2, '北京大学', '2016', '4053375@qq.com', '电子信息工程', 1602, '15302141611', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901211', '3168901211', '123456', '曹平保', 2, '北京大学', '2016', '7357382@qq.com', '电子信息工程', 1602, '13304641061', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901212', '3168901212', '123456', '邵天', 2, '北京大学', '2016', '42574087@qq.com', '电子信息工程', 1602, '15100521211', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901213', '3168901213', '123456', '卞振壮', 2, '北京大学', '2016', '7025057@qq.com', '电子信息工程', 1602, '15204103116', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901214', '3168901214', '123456', '袁政谦', 2, '北京大学', '2016', '4805454@qq.com', '电子信息工程', 1602, '15101671130', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901215', '3168901215', '123456', '于波宁', 2, '北京大学', '2016', '245580023@qq.com', '电子信息工程', 1602, '13701476173', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901216', '3168901216', '123456', '柏家', 2, '北京大学', '2016', '768323@qq.com', '电子信息工程', 1602, '15201043173', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901217', '3168901217', '123456', '葛德', 2, '北京大学', '2016', '7327877@qq.com', '电子信息工程', 1602, '15006110211', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901218', '3168901218', '123456', '王素', 2, '北京大学', '2016', '57005005@qq.com', '电子信息工程', 1602, '15005100117', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901219', '3168901219', '123456', '尹岚苑', 2, '北京大学', '2016', '0825326@qq.com', '电子信息工程', 1602, '13101404753', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901220', '3168901220', '123456', '滕树', 2, '北京大学', '2016', '357238@qq.com', '电子信息工程', 1602, '15103057271', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901221', '3168901221', '123456', '黄菁梦', 2, '北京大学', '2016', '0580535@qq.com', '电子信息工程', 1602, '13700171411', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901222', '3168901222', '123456', '安桂', 2, '北京大学', '2016', '47478072@qq.com', '电子信息工程', 1602, '15000117256', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901223', '3168901223', '123456', '邵波宁', 2, '北京大学', '2016', '2778557@qq.com', '电子信息工程', 1602, '13500517267', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901224', '3168901224', '123456', '米雄琛', 2, '北京大学', '2016', '500736436@qq.com', '电子信息工程', 1602, '15105237601', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901225', '3168901225', '123456', '昌全', 2, '北京大学', '2016', '2824060@qq.com', '电子信息工程', 1602, '15101716170', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901226', '3168901226', '123456', '明娴', 2, '北京大学', '2016', '385775220@qq.com', '电子信息工程', 1602, '15005352602', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901227', '3168901227', '123456', '梁咏卿', 2, '北京大学', '2016', '4386430@qq.com', '电子信息工程', 1602, '13604517122', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901228', '3168901228', '123456', '米富顺', 2, '北京大学', '2016', '7548265@qq.com', '电子信息工程', 1602, '13303637011', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901229', '3168901229', '123456', '韩飞彬', 2, '北京大学', '2016', '453876@qq.com', '电子信息工程', 1602, '13705117612', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901230', '3168901230', '123456', '钱明永', 2, '北京大学', '2016', '03252@qq.com', '电子信息工程', 1602, '15101123463', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901231', '3168901231', '123456', '纪宁', 2, '北京大学', '2016', '005752@qq.com', '电子信息工程', 1602, '15301157217', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901232', '3168901232', '123456', '陶坚和', 2, '北京大学', '2016', '742685@qq.com', '电子信息工程', 1602, '13300111425', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901233', '3168901233', '123456', '成晨辰', 2, '北京大学', '2016', '33006388@qq.com', '电子信息工程', 1602, '15101247675', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901234', '3168901234', '123456', '酆融', 2, '北京大学', '2016', '5722584@qq.com', '电子信息工程', 1602, '15004132761', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901235', '3168901235', '123456', '闵文', 2, '北京大学', '2016', '24367446@qq.com', '电子信息工程', 1602, '15605153713', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901236', '3168901236', '123456', '毛翔旭', 2, '北京大学', '2016', '6658502@qq.com', '电子信息工程', 1602, '15501176016', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901237', '3168901237', '123456', '戚豪', 2, '北京大学', '2016', '4847407@qq.com', '电子信息工程', 1602, '13104111406', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901238', '3168901238', '123456', '窦保', 2, '北京大学', '2016', '044585@qq.com', '电子信息工程', 1602, '13104422431', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901239', '3168901239', '123456', '殷力', 2, '北京大学', '2016', '87283@qq.com', '电子信息工程', 1602, '15700111146', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901240', '3168901240', '123456', '云琰', 2, '北京大学', '2016', '26885884@qq.com', '电子信息工程', 1602, '13203110110', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901241', '3168901241', '123456', '宋信子', 2, '北京大学', '2016', '6848065@qq.com', '电子信息工程', 1602, '13301151352', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901242', '3168901242', '123456', '喻梦', 2, '北京大学', '2016', '633455677@qq.com', '电子信息工程', 1602, '15107352571', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901243', '3168901243', '123456', '狄琳素', 2, '北京大学', '2016', '8225565@qq.com', '电子信息工程', 1602, '13605211327', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901244', '3168901244', '123456', '蓝岩中', 2, '北京大学', '2016', '5203470@qq.com', '电子信息工程', 1602, '15005721751', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901245', '3168901245', '123456', '潘琛', 2, '北京大学', '2016', '253640@qq.com', '电子信息工程', 1602, '15102333417', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901246', '3168901246', '123456', '余娣叶', 2, '北京大学', '2016', '84720780@qq.com', '电子信息工程', 1602, '13101311117', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901247', '3168901247', '123456', '谢克伦', 2, '北京大学', '2016', '3757525@qq.com', '电子信息工程', 1602, '15206410040', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901248', '3168901248', '123456', '昌冠', 2, '北京大学', '2016', '72022682@qq.com', '电子信息工程', 1602, '15303461002', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901249', '3168901249', '123456', '滕栋', 2, '北京大学', '2016', '660780624@qq.com', '电子信息工程', 1602, '15103267560', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901250', '3168901250', '123456', '曹河哲', 2, '北京大学', '2016', '658375@qq.com', '电子信息工程', 1602, '13001637635', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168901324', '3168901324', '123456', '林立川', 2, '北京大学', '2016', '532224308@qq.com', '电子信息工程', 1603, '13351204723', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902101', '3168902101', '123456', '席壮', 2, '北京大学', '2016', '6830004@qq.com', '物联网', 1601, '15103416551', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902102', '3168902102', '123456', '孙涛', 2, '北京大学', '2016', '828856@qq.com', '物联网', 1601, '13405007356', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902103', '3168902103', '123456', '俞翔旭', 2, '北京大学', '2016', '78804386@qq.com', '物联网', 1601, '15306101110', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902104', '3168902104', '123456', '汤璐', 2, '北京大学', '2016', '3540@qq.com', '物联网', 1601, '13303164030', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902105', '3168902105', '123456', '和菊', 2, '北京大学', '2016', '4882378@qq.com', '物联网', 1601, '13105636006', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902106', '3168902106', '123456', '乐邦', 2, '北京大学', '2016', '7885605@qq.com', '物联网', 1601, '15101332030', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902107', '3168902107', '123456', '袁林有', 2, '北京大学', '2016', '88742207@qq.com', '物联网', 1601, '13507104146', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902108', '3168902108', '123456', '穆博', 2, '北京大学', '2016', '42464323@qq.com', '物联网', 1601, '15702516501', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902109', '3168902109', '123456', '殷全', 2, '北京大学', '2016', '576737323@qq.com', '物联网', 1601, '13305743136', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902110', '3168902110', '123456', '卫飘育', 2, '北京大学', '2016', '8772876@qq.com', '物联网', 1601, '13403111166', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902111', '3168902111', '123456', '章之', 2, '北京大学', '2016', '0046283@qq.com', '物联网', 1601, '13603544101', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902112', '3168902112', '123456', '姜君琴', 2, '北京大学', '2016', '326823822@qq.com', '物联网', 1601, '15201164043', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902113', '3168902113', '123456', '袁茗', 2, '北京大学', '2016', '3568087@qq.com', '物联网', 1601, '15501015116', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902114', '3168902114', '123456', '戴震', 2, '北京大学', '2016', '26428062@qq.com', '物联网', 1601, '15101167731', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902115', '3168902115', '123456', '许策腾', 2, '北京大学', '2016', '668602@qq.com', '物联网', 1601, '13506343451', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902116', '3168902116', '123456', '陈莉桂', 2, '北京大学', '2016', '683765@qq.com', '物联网', 1601, '15106671011', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902117', '3168902117', '123456', '朱兴', 2, '北京大学', '2016', '26763667@qq.com', '物联网', 1601, '15302426153', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902118', '3168902118', '123456', '酆黛', 2, '北京大学', '2016', '8423543@qq.com', '物联网', 1601, '13601016005', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902119', '3168902119', '123456', '陶岚苑', 2, '北京大学', '2016', '6807053@qq.com', '物联网', 1601, '15003071111', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902120', '3168902120', '123456', '章坚和', 2, '北京大学', '2016', '4083208@qq.com', '物联网', 1601, '13603367311', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902121', '3168902121', '123456', '云芸', 2, '北京大学', '2016', '772644@qq.com', '物联网', 1601, '13100754201', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902122', '3168902122', '123456', '滕泰盛', 2, '北京大学', '2016', '46055603@qq.com', '物联网', 1601, '13500132241', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902123', '3168902123', '123456', '张莲', 2, '北京大学', '2016', '237832@qq.com', '物联网', 1601, '15003021260', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902124', '3168902124', '123456', '吴宜可', 2, '北京大学', '2016', '673300@qq.com', '物联网', 1601, '15104511074', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902125', '3168902125', '123456', '韩茜秋', 2, '北京大学', '2016', '6588874@qq.com', '物联网', 1601, '15202135736', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902126', '3168902126', '123456', '祝兰凤', 2, '北京大学', '2016', '84287836@qq.com', '物联网', 1601, '13403160525', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902127', '3168902127', '123456', '韩珠', 2, '北京大学', '2016', '06346828@qq.com', '物联网', 1601, '13104261355', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902128', '3168902128', '123456', '齐思', 2, '北京大学', '2016', '62830066@qq.com', '物联网', 1601, '15503013111', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902129', '3168902129', '123456', '祝飞彬', 2, '北京大学', '2016', '588650427@qq.com', '物联网', 1601, '13101151001', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902130', '3168902130', '123456', '尤刚', 2, '北京大学', '2016', '260605@qq.com', '物联网', 1601, '15102102066', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902131', '3168902131', '123456', '平寒', 2, '北京大学', '2016', '864880@qq.com', '物联网', 1601, '15704166215', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902132', '3168902132', '123456', '杨亮', 2, '北京大学', '2016', '24285463@qq.com', '物联网', 1601, '13107006331', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902133', '3168902133', '123456', '雷生龙', 2, '北京大学', '2016', '675436427@qq.com', '物联网', 1601, '13101126612', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902134', '3168902134', '123456', '康婕馨', 2, '北京大学', '2016', '767837707@qq.com', '物联网', 1601, '15600040516', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902135', '3168902135', '123456', '袁健世', 2, '北京大学', '2016', '706507@qq.com', '物联网', 1601, '13101545212', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902136', '3168902136', '123456', '梁莎', 2, '北京大学', '2016', '7856334@qq.com', '物联网', 1601, '13400511072', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902137', '3168902137', '123456', '湛军', 2, '北京大学', '2016', '308225520@qq.com', '物联网', 1601, '15503630132', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902138', '3168902138', '123456', '朱杰涛', 2, '北京大学', '2016', '55076606@qq.com', '物联网', 1601, '13104171530', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902139', '3168902139', '123456', '喻炎德', 2, '北京大学', '2016', '45363206@qq.com', '物联网', 1601, '15105347451', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902140', '3168902140', '123456', '尹月莺', 2, '北京大学', '2016', '68056@qq.com', '物联网', 1601, '15505211717', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902141', '3168902141', '123456', '茅民', 2, '北京大学', '2016', '7737206@qq.com', '物联网', 1601, '15204632454', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902142', '3168902142', '123456', '鲁健世', 2, '北京大学', '2016', '63428@qq.com', '物联网', 1601, '13206165601', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902143', '3168902143', '123456', '袁启', 2, '北京大学', '2016', '203540768@qq.com', '物联网', 1601, '13104415156', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902144', '3168902144', '123456', '滕朋斌', 2, '北京大学', '2016', '632348680@qq.com', '物联网', 1601, '15103052507', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902145', '3168902145', '123456', '董顺', 2, '北京大学', '2016', '6685387@qq.com', '物联网', 1601, '13102514245', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902146', '3168902146', '123456', '苏辉力', 2, '北京大学', '2016', '07038636@qq.com', '物联网', 1601, '15107111147', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902147', '3168902147', '123456', '贝厚庆', 2, '北京大学', '2016', '74727700@qq.com', '物联网', 1601, '15607121314', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902148', '3168902148', '123456', '卞健世', 2, '北京大学', '2016', '2454326@qq.com', '物联网', 1601, '15005216176', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902149', '3168902149', '123456', '伍会思', 2, '北京大学', '2016', '7757387@qq.com', '物联网', 1601, '15007517312', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168902150', '3168902150', '123456', '陈伯', 2, '北京大学', '2016', '7030528@qq.com', '物联网', 1601, '13605141004', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903101', '3168903101', '123456', '元才发', 2, '北京大学', '2016', '0028434@qq.com', '计算机', 1601, '13103547031', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903102', '3168903102', '123456', '余伯', 2, '北京大学', '2016', '4838006@qq.com', '计算机', 1601, '15604376436', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903103', '3168903103', '123456', '云光天', 2, '北京大学', '2016', '8773608@qq.com', '计算机', 1601, '15502165043', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903104', '3168903104', '123456', '傅珊莎', 2, '北京大学', '2016', '43065623@qq.com', '计算机', 1601, '15606345572', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903105', '3168903105', '123456', '唐强军', 2, '北京大学', '2016', '80042463@qq.com', '计算机', 1601, '13602120114', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903106', '3168903106', '123456', '卞军', 2, '北京大学', '2016', '037708204@qq.com', '计算机', 1601, '15704135123', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903107', '3168903107', '123456', '苏乐', 2, '北京大学', '2016', '777055@qq.com', '计算机', 1601, '13101171576', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903108', '3168903108', '123456', '宋超', 2, '北京大学', '2016', '6038@qq.com', '计算机', 1601, '15101237351', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903109', '3168903109', '123456', '朱馥', 2, '北京大学', '2016', '2682566@qq.com', '计算机', 1601, '13000117111', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903110', '3168903110', '123456', '屈波宁', 2, '北京大学', '2016', '77072608@qq.com', '计算机', 1601, '15101110411', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903111', '3168903111', '123456', '葛莲', 2, '北京大学', '2016', '2547643@qq.com', '计算机', 1601, '13200454507', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903112', '3168903112', '123456', '孙荔', 2, '北京大学', '2016', '307744267@qq.com', '计算机', 1601, '13704534046', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903113', '3168903113', '123456', '花武新', 2, '北京大学', '2016', '6208@qq.com', '计算机', 1601, '15101323376', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903114', '3168903114', '123456', '伏振壮', 2, '北京大学', '2016', '840352630@qq.com', '计算机', 1601, '15706043432', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903115', '3168903115', '123456', '茅岩中', 2, '北京大学', '2016', '602568244@qq.com', '计算机', 1601, '13002166031', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903116', '3168903116', '123456', '倪辰', 2, '北京大学', '2016', '3587273@qq.com', '计算机', 1601, '13603716371', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903117', '3168903117', '123456', '史元全', 2, '北京大学', '2016', '7240860@qq.com', '计算机', 1601, '13602112506', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903118', '3168903118', '123456', '宋磊民', 2, '北京大学', '2016', '46503570@qq.com', '计算机', 1601, '15102111171', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903119', '3168903119', '123456', '祁纯毓', 2, '北京大学', '2016', '06652047@qq.com', '计算机', 1601, '15101573157', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903120', '3168903120', '123456', '殷融', 2, '北京大学', '2016', '376766@qq.com', '计算机', 1601, '13405113627', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903121', '3168903121', '123456', '米健世', 2, '北京大学', '2016', '7874387@qq.com', '计算机', 1601, '13003773456', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903122', '3168903122', '123456', '明秀娟', 2, '北京大学', '2016', '404654@qq.com', '计算机', 1601, '13404210152', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903123', '3168903123', '123456', '窦娣叶', 2, '北京大学', '2016', '000425@qq.com', '计算机', 1601, '13100236570', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903124', '3168903124', '123456', '计冰爽', 2, '北京大学', '2016', '60604523@qq.com', '计算机', 1601, '15702601224', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903125', '3168903125', '123456', '谈舒', 2, '北京大学', '2016', '20862865@qq.com', '计算机', 1601, '15003111062', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903126', '3168903126', '123456', '顾眉', 2, '北京大学', '2016', '0748352@qq.com', '计算机', 1601, '15107212411', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903127', '3168903127', '123456', '褚新', 2, '北京大学', '2016', '8080408@qq.com', '计算机', 1601, '15605121061', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903128', '3168903128', '123456', '周春菊', 2, '北京大学', '2016', '6626578@qq.com', '计算机', 1601, '13005120217', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903129', '3168903129', '123456', '熊晓', 2, '北京大学', '2016', '2255760@qq.com', '计算机', 1601, '15301567262', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903130', '3168903130', '123456', '余岚苑', 2, '北京大学', '2016', '67743723@qq.com', '计算机', 1601, '15304301001', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903131', '3168903131', '123456', '汪咏卿', 2, '北京大学', '2016', '60374@qq.com', '计算机', 1601, '13001315171', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903132', '3168903132', '123456', '屈红', 2, '北京大学', '2016', '7655534@qq.com', '计算机', 1601, '13301531314', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903133', '3168903133', '123456', '邹生龙', 2, '北京大学', '2016', '0247336@qq.com', '计算机', 1601, '13605362553', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903134', '3168903134', '123456', '倪山仁', 2, '北京大学', '2016', '28336670@qq.com', '计算机', 1601, '15105316257', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903135', '3168903135', '123456', '喻坚和', 2, '北京大学', '2016', '54625485@qq.com', '计算机', 1601, '13601155055', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903136', '3168903136', '123456', '戚盛', 2, '北京大学', '2016', '3362203@qq.com', '计算机', 1601, '15606701614', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903137', '3168903137', '123456', '乐发', 2, '北京大学', '2016', '520252@qq.com', '计算机', 1601, '13002170510', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903138', '3168903138', '123456', '韦星', 2, '北京大学', '2016', '227747@qq.com', '计算机', 1601, '15201574165', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903139', '3168903139', '123456', '唐明永', 2, '北京大学', '2016', '5882878@qq.com', '计算机', 1601, '13507304125', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903140', '3168903140', '123456', '曹辉力', 2, '北京大学', '2016', '3728620@qq.com', '计算机', 1601, '15600431231', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903141', '3168903141', '123456', '杜楠榕', 2, '北京大学', '2016', '6276064@qq.com', '计算机', 1601, '13602362112', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903142', '3168903142', '123456', '苗彬', 2, '北京大学', '2016', '3262345@qq.com', '计算机', 1601, '13201425231', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903143', '3168903143', '123456', '任丹', 2, '北京大学', '2016', '46085077@qq.com', '计算机', 1601, '15101123441', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903144', '3168903144', '123456', '朱真环', 2, '北京大学', '2016', '33666503@qq.com', '计算机', 1601, '13701317411', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903145', '3168903145', '123456', '喻欣', 2, '北京大学', '2016', '764076576@qq.com', '计算机', 1601, '13104310311', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903146', '3168903146', '123456', '杜进', 2, '北京大学', '2016', '80742356@qq.com', '计算机', 1601, '15307761012', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903147', '3168903147', '123456', '费国胜', 2, '北京大学', '2016', '75333222@qq.com', '计算机', 1601, '13004227751', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903148', '3168903148', '123456', '计有', 2, '北京大学', '2016', '657377@qq.com', '计算机', 1601, '15300275062', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903149', '3168903149', '123456', '沈梁栋', 2, '北京大学', '2016', '3788007@qq.com', '计算机', 1601, '15203263114', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903150', '3168903150', '123456', '臧艺', 2, '北京大学', '2016', '072722366@qq.com', '计算机', 1601, '15700102116', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903151', '3168903151', '123456', '邹伟刚', 2, '北京大学', '2016', '66302636@qq.com', '计算机', 1601, '13200214112', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903152', '3168903152', '123456', '鲍刚', 2, '北京大学', '2016', '66460248@qq.com', '计算机', 1601, '13101224032', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903153', '3168903153', '123456', '萧俊峰', 2, '北京大学', '2016', '67656450@qq.com', '计算机', 1601, '13206005405', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903154', '3168903154', '123456', '臧梁栋', 2, '北京大学', '2016', '0525554@qq.com', '计算机', 1601, '15506107247', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903155', '3168903155', '123456', '祝子', 2, '北京大学', '2016', '6480540@qq.com', '计算机', 1601, '13304710554', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903156', '3168903156', '123456', '沈盛', 2, '北京大学', '2016', '55856647@qq.com', '计算机', 1601, '13706062577', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903157', '3168903157', '123456', '谢叶', 2, '北京大学', '2016', '504350004@qq.com', '计算机', 1601, '13204126541', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903158', '3168903158', '123456', '鲁咏卿', 2, '北京大学', '2016', '6528558@qq.com', '计算机', 1601, '13601542151', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903159', '3168903159', '123456', '曹倩', 2, '北京大学', '2016', '044425487@qq.com', '计算机', 1601, '13601100215', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168903160', '3168903160', '123456', '戴峰', 2, '北京大学', '2016', '206727@qq.com', '计算机', 1601, '15106011572', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904101', '3168904101', '123456', '赵浩亮', 2, '北京大学', '2016', '5543003@qq.com', '通信工程', 1601, '13505125127', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904102', '3168904102', '123456', '卞菲寒', 2, '北京大学', '2016', '0507423@qq.com', '通信工程', 1601, '15104104127', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904103', '3168904103', '123456', '葛家', 2, '北京大学', '2016', '586860@qq.com', '通信工程', 1601, '13604445141', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904104', '3168904104', '123456', '吕嘉', 2, '北京大学', '2016', '827286844@qq.com', '通信工程', 1601, '15205651114', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904105', '3168904105', '123456', '邬清', 2, '北京大学', '2016', '25546362@qq.com', '通信工程', 1601, '13007441071', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904106', '3168904106', '123456', '苏学祥', 2, '北京大学', '2016', '054344@qq.com', '通信工程', 1601, '15201054214', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904107', '3168904107', '123456', '马芝玉', 2, '北京大学', '2016', '0336462@qq.com', '通信工程', 1601, '15200115470', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904108', '3168904108', '123456', '云敬震', 2, '北京大学', '2016', '88044268@qq.com', '通信工程', 1601, '13001260731', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904109', '3168904109', '123456', '宋全', 2, '北京大学', '2016', '6668026@qq.com', '通信工程', 1601, '13007711613', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904110', '3168904110', '123456', '康苑', 2, '北京大学', '2016', '8824645@qq.com', '通信工程', 1601, '13604136676', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904111', '3168904111', '123456', '尹羽希', 2, '北京大学', '2016', '3566072@qq.com', '通信工程', 1601, '13307140205', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904112', '3168904112', '123456', '鲍义兴', 2, '北京大学', '2016', '602030447@qq.com', '通信工程', 1601, '15204166171', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904113', '3168904113', '123456', '云清', 2, '北京大学', '2016', '0047088@qq.com', '通信工程', 1601, '13603440102', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904114', '3168904114', '123456', '戴娟', 2, '北京大学', '2016', '46226548@qq.com', '通信工程', 1601, '13103517716', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904115', '3168904115', '123456', '汪福', 2, '北京大学', '2016', '8668662@qq.com', '通信工程', 1601, '15205717430', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904116', '3168904116', '123456', '屈泽', 2, '北京大学', '2016', '424625@qq.com', '通信工程', 1601, '13104365111', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904117', '3168904117', '123456', '李滢馥', 2, '北京大学', '2016', '58058@qq.com', '通信工程', 1601, '13607116617', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904118', '3168904118', '123456', '方超', 2, '北京大学', '2016', '085888464@qq.com', '通信工程', 1601, '13404356120', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904119', '3168904119', '123456', '陈昌成', 2, '北京大学', '2016', '4523650@qq.com', '通信工程', 1601, '15102104161', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904120', '3168904120', '123456', '纪炎德', 2, '北京大学', '2016', '0824778@qq.com', '通信工程', 1601, '15306760115', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904121', '3168904121', '123456', '吕龙', 2, '北京大学', '2016', '74607746@qq.com', '通信工程', 1601, '15000545035', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904122', '3168904122', '123456', '苗巧', 2, '北京大学', '2016', '34645763@qq.com', '通信工程', 1601, '15507556313', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904123', '3168904123', '123456', '杜澜', 2, '北京大学', '2016', '588336@qq.com', '通信工程', 1601, '13604614114', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904124', '3168904124', '123456', '熊世', 2, '北京大学', '2016', '2257766@qq.com', '通信工程', 1601, '13500174571', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904125', '3168904125', '123456', '安泰盛', 2, '北京大学', '2016', '44685775@qq.com', '通信工程', 1601, '15107175617', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904126', '3168904126', '123456', '鲍山仁', 2, '北京大学', '2016', '446402@qq.com', '通信工程', 1601, '13605760012', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904127', '3168904127', '123456', '任英华', 2, '北京大学', '2016', '0764842@qq.com', '通信工程', 1601, '15503136113', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904128', '3168904128', '123456', '成仪', 2, '北京大学', '2016', '265244@qq.com', '通信工程', 1601, '15302111655', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904129', '3168904129', '123456', '杜固之', 2, '北京大学', '2016', '45006024@qq.com', '通信工程', 1601, '15001304711', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904130', '3168904130', '123456', '茅成', 2, '北京大学', '2016', '7370545@qq.com', '通信工程', 1601, '13100152710', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904131', '3168904131', '123456', '于磊民', 2, '北京大学', '2016', '635777568@qq.com', '通信工程', 1601, '15607131125', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904132', '3168904132', '123456', '柳芳', 2, '北京大学', '2016', '83048405@qq.com', '通信工程', 1601, '13706150561', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904133', '3168904133', '123456', '余海', 2, '北京大学', '2016', '0545535@qq.com', '通信工程', 1601, '13704111330', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904134', '3168904134', '123456', '卞霞香', 2, '北京大学', '2016', '33425034@qq.com', '通信工程', 1601, '13100410633', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904135', '3168904135', '123456', '倪学祥', 2, '北京大学', '2016', '63207@qq.com', '通信工程', 1601, '15107555110', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904136', '3168904136', '123456', '严琦', 2, '北京大学', '2016', '522036@qq.com', '通信工程', 1601, '13106321112', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904137', '3168904137', '123456', '余时', 2, '北京大学', '2016', '23670430@qq.com', '通信工程', 1601, '13201510511', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904138', '3168904138', '123456', '凤亚', 2, '北京大学', '2016', '28274883@qq.com', '通信工程', 1601, '15301276714', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904139', '3168904139', '123456', '褚言', 2, '北京大学', '2016', '706304654@qq.com', '通信工程', 1601, '15701360641', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904140', '3168904140', '123456', '禹发', 2, '北京大学', '2016', '550503222@qq.com', '通信工程', 1601, '15101251141', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904141', '3168904141', '123456', '彭亚', 2, '北京大学', '2016', '76426868@qq.com', '通信工程', 1601, '13706551100', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904142', '3168904142', '123456', '赵若鸣', 2, '北京大学', '2016', '0043453@qq.com', '通信工程', 1601, '13500516474', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904143', '3168904143', '123456', '苏振壮', 2, '北京大学', '2016', '2860250@qq.com', '通信工程', 1601, '13007713265', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904144', '3168904144', '123456', '魏君琴', 2, '北京大学', '2016', '87533205@qq.com', '通信工程', 1601, '15603145611', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904145', '3168904145', '123456', '阮清', 2, '北京大学', '2016', '326254034@qq.com', '通信工程', 1601, '13101556712', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904146', '3168904146', '123456', '陶仪', 2, '北京大学', '2016', '4444546@qq.com', '通信工程', 1601, '15102571553', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904147', '3168904147', '123456', '孙江超', 2, '北京大学', '2016', '08272400@qq.com', '通信工程', 1601, '13300015346', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904148', '3168904148', '123456', '罗保', 2, '北京大学', '2016', '32362442@qq.com', '通信工程', 1601, '15307366157', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904149', '3168904149', '123456', '陈菁梦', 2, '北京大学', '2016', '6066357@qq.com', '通信工程', 1601, '15503606222', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904150', '3168904150', '123456', '陶之', 2, '北京大学', '2016', '73807004@qq.com', '通信工程', 1601, '15101411100', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904151', '3168904151', '123456', '贝菲寒', 2, '北京大学', '2016', '6732346@qq.com', '通信工程', 1601, '13301142610', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904152', '3168904152', '123456', '茅士以', 2, '北京大学', '2016', '268@qq.com', '通信工程', 1601, '13104657113', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904153', '3168904153', '123456', '湛先', 2, '北京大学', '2016', '05028534@qq.com', '通信工程', 1601, '13101004234', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904154', '3168904154', '123456', '纪思', 2, '北京大学', '2016', '507633347@qq.com', '通信工程', 1601, '13403136011', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904155', '3168904155', '123456', '杜广志', 2, '北京大学', '2016', '850684@qq.com', '通信工程', 1601, '15202426310', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904156', '3168904156', '123456', '王伯', 2, '北京大学', '2016', '03680246@qq.com', '通信工程', 1601, '13406052420', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904157', '3168904157', '123456', '奚翔旭', 2, '北京大学', '2016', '466068504@qq.com', '通信工程', 1601, '15601417114', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904158', '3168904158', '123456', '谈东文', 2, '北京大学', '2016', '04342337@qq.com', '通信工程', 1601, '13204147151', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904159', '3168904159', '123456', '萧亮', 2, '北京大学', '2016', '8078085@qq.com', '通信工程', 1601, '13500513100', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904160', '3168904160', '123456', '唐新', 2, '北京大学', '2016', '5562638@qq.com', '通信工程', 1601, '15005461001', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904201', '3168904201', '123456', '唐康星', 2, '北京大学', '2016', '7726447@qq.com', '通信工程', 1602, '13100714145', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904202', '3168904202', '123456', '薛毅', 2, '北京大学', '2016', '278825856@qq.com', '通信工程', 1602, '13002133174', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904203', '3168904203', '123456', '陈博', 2, '北京大学', '2016', '405253@qq.com', '通信工程', 1602, '13601750116', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904204', '3168904204', '123456', '许林有', 2, '北京大学', '2016', '8244074@qq.com', '通信工程', 1602, '13004111461', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904205', '3168904205', '123456', '戴富顺', 2, '北京大学', '2016', '673778@qq.com', '通信工程', 1602, '13103532316', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904206', '3168904206', '123456', '窦义兴', 2, '北京大学', '2016', '2454788@qq.com', '通信工程', 1602, '15101022144', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904207', '3168904207', '123456', '殷梅', 2, '北京大学', '2016', '38004633@qq.com', '通信工程', 1602, '15300113101', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904208', '3168904208', '123456', '黄固之', 2, '北京大学', '2016', '760363306@qq.com', '通信工程', 1602, '15607603244', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904209', '3168904209', '123456', '闵红', 2, '北京大学', '2016', '774578248@qq.com', '通信工程', 1602, '15106115153', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904210', '3168904210', '123456', '袁君琴', 2, '北京大学', '2016', '435554445@qq.com', '通信工程', 1602, '15607716076', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904211', '3168904211', '123456', '华翰', 2, '北京大学', '2016', '737784743@qq.com', '通信工程', 1602, '15101611233', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904212', '3168904212', '123456', '岑伊亚', 2, '北京大学', '2016', '85240438@qq.com', '通信工程', 1602, '15606441224', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904213', '3168904213', '123456', '曹维启', 2, '北京大学', '2016', '76600@qq.com', '通信工程', 1602, '13103145331', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904214', '3168904214', '123456', '蓝时', 2, '北京大学', '2016', '84087@qq.com', '通信工程', 1602, '13202367671', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904215', '3168904215', '123456', '朱影荔', 2, '北京大学', '2016', '630578@qq.com', '通信工程', 1602, '13100105004', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904216', '3168904216', '123456', '茅祥', 2, '北京大学', '2016', '36767242@qq.com', '通信工程', 1602, '13307565071', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904217', '3168904217', '123456', '尤群豪', 2, '北京大学', '2016', '5845387@qq.com', '通信工程', 1602, '13407666012', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904218', '3168904218', '123456', '曹利清', 2, '北京大学', '2016', '42053525@qq.com', '通信工程', 1602, '15207016014', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904219', '3168904219', '123456', '袁子', 2, '北京大学', '2016', '7802524@qq.com', '通信工程', 1602, '13107130151', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904220', '3168904220', '123456', '祁刚', 2, '北京大学', '2016', '453023620@qq.com', '通信工程', 1602, '15305143563', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904221', '3168904221', '123456', '戚武新', 2, '北京大学', '2016', '73223506@qq.com', '通信工程', 1602, '15303145132', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904222', '3168904222', '123456', '曹荷丹', 2, '北京大学', '2016', '550585254@qq.com', '通信工程', 1602, '13707115335', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904223', '3168904223', '123456', '严斌', 2, '北京大学', '2016', '780674@qq.com', '通信工程', 1602, '13100210142', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904224', '3168904224', '123456', '彭苑', 2, '北京大学', '2016', '206770@qq.com', '通信工程', 1602, '13206516167', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904225', '3168904225', '123456', '鲁晨辰', 2, '北京大学', '2016', '68464228@qq.com', '通信工程', 1602, '15502376511', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904226', '3168904226', '123456', '苏秀娟', 2, '北京大学', '2016', '0308234@qq.com', '通信工程', 1602, '15101111013', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904227', '3168904227', '123456', '柳美娜', 2, '北京大学', '2016', '0544372@qq.com', '通信工程', 1602, '15705426277', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904228', '3168904228', '123456', '齐致树', 2, '北京大学', '2016', '008@qq.com', '通信工程', 1602, '15603112122', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904229', '3168904229', '123456', '庞生龙', 2, '北京大学', '2016', '5072878@qq.com', '通信工程', 1602, '13706132275', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904230', '3168904230', '123456', '奚贵福', 2, '北京大学', '2016', '7082666@qq.com', '通信工程', 1602, '15305125752', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904231', '3168904231', '123456', '吴武新', 2, '北京大学', '2016', '20220332@qq.com', '通信工程', 1602, '13601671000', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904232', '3168904232', '123456', '祝辉力', 2, '北京大学', '2016', '47607876@qq.com', '通信工程', 1602, '13204133213', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904233', '3168904233', '123456', '陈成', 2, '北京大学', '2016', '480586@qq.com', '通信工程', 1602, '13001115135', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904234', '3168904234', '123456', '史壮', 2, '北京大学', '2016', '47568@qq.com', '通信工程', 1602, '15301550166', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904235', '3168904235', '123456', '孙行时', 2, '北京大学', '2016', '4574365@qq.com', '通信工程', 1602, '13400414101', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904236', '3168904236', '123456', '倪君琴', 2, '北京大学', '2016', '2056535@qq.com', '通信工程', 1602, '15103543311', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904237', '3168904237', '123456', '柳怡婵', 2, '北京大学', '2016', '30555467@qq.com', '通信工程', 1602, '13503267307', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904238', '3168904238', '123456', '元元全', 2, '北京大学', '2016', '48020@qq.com', '通信工程', 1602, '15701543114', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904239', '3168904239', '123456', '施谦', 2, '北京大学', '2016', '0866222@qq.com', '通信工程', 1602, '15601576505', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904240', '3168904240', '123456', '时凤', 2, '北京大学', '2016', '02557574@qq.com', '通信工程', 1602, '15105311550', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904241', '3168904241', '123456', '张固之', 2, '北京大学', '2016', '530470@qq.com', '通信工程', 1602, '15201713721', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904242', '3168904242', '123456', '范梁栋', 2, '北京大学', '2016', '77246@qq.com', '通信工程', 1602, '15202124411', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904243', '3168904243', '123456', '任舒', 2, '北京大学', '2016', '4430745@qq.com', '通信工程', 1602, '13502407271', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904244', '3168904244', '123456', '郑会思', 2, '北京大学', '2016', '657385833@qq.com', '通信工程', 1602, '15105611002', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904245', '3168904245', '123456', '严娜', 2, '北京大学', '2016', '305385326@qq.com', '通信工程', 1602, '15502555116', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904246', '3168904246', '123456', '沈子', 2, '北京大学', '2016', '5434277@qq.com', '通信工程', 1602, '15205126176', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904247', '3168904247', '123456', '齐辰', 2, '北京大学', '2016', '4805606@qq.com', '通信工程', 1602, '15005217151', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904248', '3168904248', '123456', '葛才发', 2, '北京大学', '2016', '325730@qq.com', '通信工程', 1602, '13107017122', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904249', '3168904249', '123456', '雷晨辰', 2, '北京大学', '2016', '672657273@qq.com', '通信工程', 1602, '13004411366', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168904250', '3168904250', '123456', '姚强军', 2, '北京大学', '2016', '582838@qq.com', '通信工程', 1602, '13407660717', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905101', '3168905101', '123456', '薛有', 2, '北京大学', '2016', '62644782@qq.com', '土木工程', 1601, '13101111612', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905102', '3168905102', '123456', '邵瑾颖', 2, '北京大学', '2016', '5602840@qq.com', '土木工程', 1601, '13607570611', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905103', '3168905103', '123456', '许梁栋', 2, '北京大学', '2016', '5857622@qq.com', '土木工程', 1601, '15100673026', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905104', '3168905104', '123456', '杜珍贞', 2, '北京大学', '2016', '5835574@qq.com', '土木工程', 1601, '13603046662', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905105', '3168905105', '123456', '计娜', 2, '北京大学', '2016', '654037@qq.com', '土木工程', 1601, '15201423116', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905106', '3168905106', '123456', '傅悦昭', 2, '北京大学', '2016', '55764664@qq.com', '土木工程', 1601, '13101101031', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905107', '3168905107', '123456', '陈亮', 2, '北京大学', '2016', '52586@qq.com', '土木工程', 1601, '13204516620', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905108', '3168905108', '123456', '和维启', 2, '北京大学', '2016', '8040782@qq.com', '土木工程', 1601, '15703470441', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905109', '3168905109', '123456', '谢朋斌', 2, '北京大学', '2016', '6777232@qq.com', '土木工程', 1601, '15307106665', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905110', '3168905110', '123456', '祁浩亮', 2, '北京大学', '2016', '75524223@qq.com', '土木工程', 1601, '15607122112', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905111', '3168905111', '123456', '褚飘育', 2, '北京大学', '2016', '8408340@qq.com', '土木工程', 1601, '13102471312', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905112', '3168905112', '123456', '酆保', 2, '北京大学', '2016', '7458645@qq.com', '土木工程', 1601, '15601171111', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905113', '3168905113', '123456', '殷艳', 2, '北京大学', '2016', '085632@qq.com', '土木工程', 1601, '15101611411', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905114', '3168905114', '123456', '蒋荣', 2, '北京大学', '2016', '73445056@qq.com', '土木工程', 1601, '15502114776', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905115', '3168905115', '123456', '赵斌', 2, '北京大学', '2016', '32558508@qq.com', '土木工程', 1601, '15102154172', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905116', '3168905116', '123456', '昌刚', 2, '北京大学', '2016', '8862376@qq.com', '土木工程', 1601, '13102011144', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905117', '3168905117', '123456', '酆韵融', 2, '北京大学', '2016', '46230505@qq.com', '土木工程', 1601, '15107331441', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905118', '3168905118', '123456', '卞亮', 2, '北京大学', '2016', '3528628@qq.com', '土木工程', 1601, '13403126440', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905119', '3168905119', '123456', '谢武新', 2, '北京大学', '2016', '702378@qq.com', '土木工程', 1601, '15201237571', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905120', '3168905120', '123456', '元竹霭', 2, '北京大学', '2016', '7853437@qq.com', '土木工程', 1601, '13100257311', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905121', '3168905121', '123456', '黄义兴', 2, '北京大学', '2016', '7368447@qq.com', '土木工程', 1601, '13102175120', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905122', '3168905122', '123456', '尹蓉眉', 2, '北京大学', '2016', '6382564@qq.com', '土木工程', 1601, '13406112710', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905123', '3168905123', '123456', '戴叶', 2, '北京大学', '2016', '4856232@qq.com', '土木工程', 1601, '13106166126', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905124', '3168905124', '123456', '皮坚和', 2, '北京大学', '2016', '572405833@qq.com', '土木工程', 1601, '15601627311', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905125', '3168905125', '123456', '马妍', 2, '北京大学', '2016', '55528464@qq.com', '土木工程', 1601, '13607167762', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905126', '3168905126', '123456', '倪永', 2, '北京大学', '2016', '55633850@qq.com', '土木工程', 1601, '13501137371', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905127', '3168905127', '123456', '狄爱妹', 2, '北京大学', '2016', '50377325@qq.com', '土木工程', 1601, '15100717017', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905128', '3168905128', '123456', '方先', 2, '北京大学', '2016', '42372003@qq.com', '土木工程', 1601, '15104113601', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905129', '3168905129', '123456', '褚世', 2, '北京大学', '2016', '3522325@qq.com', '土木工程', 1601, '13502713111', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168905130', '3168905130', '123456', '何伊亚', 2, '北京大学', '2016', '66725238@qq.com', '土木工程', 1601, '13601516601', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906101', '3168906101', '123456', '汤士以', 2, '北京大学', '2016', '663755@qq.com', '网络工程', 1601, '15601252513', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906102', '3168906102', '123456', '姜馨', 2, '北京大学', '2016', '283885074@qq.com', '网络工程', 1601, '15601755361', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906103', '3168906103', '123456', '毕平保', 2, '北京大学', '2016', '638852@qq.com', '网络工程', 1601, '15503161000', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906104', '3168906104', '123456', '蒋涛', 2, '北京大学', '2016', '520872406@qq.com', '网络工程', 1601, '15101716151', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906105', '3168906105', '123456', '苏康星', 2, '北京大学', '2016', '67853544@qq.com', '网络工程', 1601, '15106743111', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906106', '3168906106', '123456', '赵英华', 2, '北京大学', '2016', '3882323@qq.com', '网络工程', 1601, '13705411042', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906107', '3168906107', '123456', '皮钧冠', 2, '北京大学', '2016', '3340370@qq.com', '网络工程', 1601, '13606112142', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906108', '3168906108', '123456', '阮功', 2, '北京大学', '2016', '000607@qq.com', '网络工程', 1601, '13203153310', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906109', '3168906109', '123456', '薛新', 2, '北京大学', '2016', '580276@qq.com', '网络工程', 1601, '13202115410', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906110', '3168906110', '123456', '章俊峰', 2, '北京大学', '2016', '282730@qq.com', '网络工程', 1601, '13502417476', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906111', '3168906111', '123456', '张秀娟', 2, '北京大学', '2016', '750428@qq.com', '网络工程', 1601, '15203111511', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906112', '3168906112', '123456', '计建家', 2, '北京大学', '2016', '30374668@qq.com', '网络工程', 1601, '13304451272', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906113', '3168906113', '123456', '时瑞凡', 2, '北京大学', '2016', '4343565@qq.com', '网络工程', 1601, '15701462511', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906114', '3168906114', '123456', '郎栋', 2, '北京大学', '2016', '33502@qq.com', '网络工程', 1601, '15707213272', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906115', '3168906115', '123456', '任勇毅', 2, '北京大学', '2016', '32073@qq.com', '网络工程', 1601, '13504573344', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906116', '3168906116', '123456', '昌克伦', 2, '北京大学', '2016', '3257563@qq.com', '网络工程', 1601, '15501016412', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906117', '3168906117', '123456', '计超', 2, '北京大学', '2016', '66030642@qq.com', '网络工程', 1601, '13203201154', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906118', '3168906118', '123456', '蒋芬芳', 2, '北京大学', '2016', '08053720@qq.com', '网络工程', 1601, '15107766531', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906119', '3168906119', '123456', '熊枫芸', 2, '北京大学', '2016', '445872@qq.com', '网络工程', 1601, '13400100200', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906120', '3168906120', '123456', '范浩亮', 2, '北京大学', '2016', '8400@qq.com', '网络工程', 1601, '13107121631', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906121', '3168906121', '123456', '臧馨', 2, '北京大学', '2016', '7805337@qq.com', '网络工程', 1601, '13406022561', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906122', '3168906122', '123456', '戴利清', 2, '北京大学', '2016', '4045038@qq.com', '网络工程', 1601, '13200037105', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906123', '3168906123', '123456', '湛博', 2, '北京大学', '2016', '07284533@qq.com', '网络工程', 1601, '13007677305', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906124', '3168906124', '123456', '邹淑', 2, '北京大学', '2016', '68585883@qq.com', '网络工程', 1601, '15506476352', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906125', '3168906125', '123456', '禹嘉', 2, '北京大学', '2016', '074885@qq.com', '网络工程', 1601, '13101771171', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906126', '3168906126', '123456', '萧仁', 2, '北京大学', '2016', '66544866@qq.com', '网络工程', 1601, '15101601340', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906127', '3168906127', '123456', '吕坚和', 2, '北京大学', '2016', '325820@qq.com', '网络工程', 1601, '13105165531', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906128', '3168906128', '123456', '许倩', 2, '北京大学', '2016', '377036487@qq.com', '网络工程', 1601, '15102131330', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906129', '3168906129', '123456', '喻士以', 2, '北京大学', '2016', '228025@qq.com', '网络工程', 1601, '15105126327', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906130', '3168906130', '123456', '苏胜', 2, '北京大学', '2016', '7042308@qq.com', '网络工程', 1601, '15003417161', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906131', '3168906131', '123456', '岑平保', 2, '北京大学', '2016', '067364226@qq.com', '网络工程', 1601, '13106575021', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906132', '3168906132', '123456', '贝颖', 2, '北京大学', '2016', '55062504@qq.com', '网络工程', 1601, '15101101001', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906133', '3168906133', '123456', '赵晓', 2, '北京大学', '2016', '040862@qq.com', '网络工程', 1601, '13606533115', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906134', '3168906134', '123456', '姜康星', 2, '北京大学', '2016', '74575@qq.com', '网络工程', 1601, '13001101117', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906135', '3168906135', '123456', '俞天', 2, '北京大学', '2016', '2435430@qq.com', '网络工程', 1601, '15501357410', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906136', '3168906136', '123456', '鲁彩', 2, '北京大学', '2016', '6356022@qq.com', '网络工程', 1601, '13406551154', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906137', '3168906137', '123456', '朱福', 2, '北京大学', '2016', '02733852@qq.com', '网络工程', 1601, '15104713617', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906138', '3168906138', '123456', '赵才发', 2, '北京大学', '2016', '47023303@qq.com', '网络工程', 1601, '13002710411', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906139', '3168906139', '123456', '窦义兴', 2, '北京大学', '2016', '7827352@qq.com', '网络工程', 1601, '15200133313', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906140', '3168906140', '123456', '郑永', 2, '北京大学', '2016', '2705740@qq.com', '网络工程', 1601, '15001114115', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906141', '3168906141', '123456', '康梁栋', 2, '北京大学', '2016', '6558467@qq.com', '网络工程', 1601, '15102453115', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906142', '3168906142', '123456', '岑梅', 2, '北京大学', '2016', '57258382@qq.com', '网络工程', 1601, '15103160726', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906143', '3168906143', '123456', '杨海', 2, '北京大学', '2016', '2380733@qq.com', '网络工程', 1601, '13407631067', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906144', '3168906144', '123456', '时腾', 2, '北京大学', '2016', '0630@qq.com', '网络工程', 1601, '13701174471', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906145', '3168906145', '123456', '席平保', 2, '北京大学', '2016', '53068407@qq.com', '网络工程', 1601, '13406474613', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906146', '3168906146', '123456', '柳和', 2, '北京大学', '2016', '244658@qq.com', '网络工程', 1601, '13600213411', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906147', '3168906147', '123456', '蓝鸣', 2, '北京大学', '2016', '050586@qq.com', '网络工程', 1601, '13704113761', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906148', '3168906148', '123456', '余进', 2, '北京大学', '2016', '8880463@qq.com', '网络工程', 1601, '13106543020', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906149', '3168906149', '123456', '伍言', 2, '北京大学', '2016', '744047447@qq.com', '网络工程', 1601, '13601144276', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906150', '3168906150', '123456', '尤克伦', 2, '北京大学', '2016', '622746@qq.com', '网络工程', 1601, '15206614057', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906201', '3168906201', '123456', '韦晨辰', 2, '北京大学', '2016', '522220@qq.com', '网络工程', 1602, '13104222241', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906202', '3168906202', '123456', '乐辰', 2, '北京大学', '2016', '3283547@qq.com', '网络工程', 1602, '13007113601', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906203', '3168906203', '123456', '纪安', 2, '北京大学', '2016', '6803565@qq.com', '网络工程', 1602, '13107164113', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906204', '3168906204', '123456', '阮英华', 2, '北京大学', '2016', '264372@qq.com', '网络工程', 1602, '13100616112', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906205', '3168906205', '123456', '项荷丹', 2, '北京大学', '2016', '64066733@qq.com', '网络工程', 1602, '13203615022', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906206', '3168906206', '123456', '彭雅', 2, '北京大学', '2016', '55054085@qq.com', '网络工程', 1602, '13706412111', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906207', '3168906207', '123456', '卫富顺', 2, '北京大学', '2016', '354246608@qq.com', '网络工程', 1602, '13706706132', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906208', '3168906208', '123456', '戚荣', 2, '北京大学', '2016', '7720044@qq.com', '网络工程', 1602, '13103707107', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906209', '3168906209', '123456', '方利清', 2, '北京大学', '2016', '5367344@qq.com', '网络工程', 1602, '15101430306', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906210', '3168906210', '123456', '魏楠榕', 2, '北京大学', '2016', '26875244@qq.com', '网络工程', 1602, '13501114717', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906211', '3168906211', '123456', '云红', 2, '北京大学', '2016', '0800247@qq.com', '网络工程', 1602, '15504155545', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906212', '3168906212', '123456', '和承乐', 2, '北京大学', '2016', '277257778@qq.com', '网络工程', 1602, '13000551455', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906213', '3168906213', '123456', '茅清', 2, '北京大学', '2016', '55662386@qq.com', '网络工程', 1602, '15202607107', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906214', '3168906214', '123456', '臧振壮', 2, '北京大学', '2016', '68026043@qq.com', '网络工程', 1602, '15300510531', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906215', '3168906215', '123456', '戴之', 2, '北京大学', '2016', '302538@qq.com', '网络工程', 1602, '15007732051', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906216', '3168906216', '123456', '倪利清', 2, '北京大学', '2016', '5220470@qq.com', '网络工程', 1602, '13507747313', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906217', '3168906217', '123456', '宋伟刚', 2, '北京大学', '2016', '765642426@qq.com', '网络工程', 1602, '15304761011', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906218', '3168906218', '123456', '周力', 2, '北京大学', '2016', '8520303@qq.com', '网络工程', 1602, '13006223571', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906219', '3168906219', '123456', '薛顺', 2, '北京大学', '2016', '86764278@qq.com', '网络工程', 1602, '13005106631', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906220', '3168906220', '123456', '闵纨仪', 2, '北京大学', '2016', '73688068@qq.com', '网络工程', 1602, '15002431337', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906221', '3168906221', '123456', '唐强军', 2, '北京大学', '2016', '0734380@qq.com', '网络工程', 1602, '13302364512', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906222', '3168906222', '123456', '滕芸', 2, '北京大学', '2016', '4774733@qq.com', '网络工程', 1602, '13105315035', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906223', '3168906223', '123456', '皮玲', 2, '北京大学', '2016', '22502272@qq.com', '网络工程', 1602, '15102251150', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906224', '3168906224', '123456', '方凡', 2, '北京大学', '2016', '4355835@qq.com', '网络工程', 1602, '13004331116', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906225', '3168906225', '123456', '孔文', 2, '北京大学', '2016', '3870438@qq.com', '网络工程', 1602, '15501027234', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906226', '3168906226', '123456', '魏星', 2, '北京大学', '2016', '066262083@qq.com', '网络工程', 1602, '13700252211', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906227', '3168906227', '123456', '顾叶', 2, '北京大学', '2016', '677700807@qq.com', '网络工程', 1602, '15505513724', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906228', '3168906228', '123456', '张祥', 2, '北京大学', '2016', '63853@qq.com', '网络工程', 1602, '15104701111', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906229', '3168906229', '123456', '毛炎德', 2, '北京大学', '2016', '888245026@qq.com', '网络工程', 1602, '13701411157', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906230', '3168906230', '123456', '华滢馥', 2, '北京大学', '2016', '22740682@qq.com', '网络工程', 1602, '13201743640', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906231', '3168906231', '123456', '卜影荔', 2, '北京大学', '2016', '32880046@qq.com', '网络工程', 1602, '13506015231', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906232', '3168906232', '123456', '蒋诚先', 2, '北京大学', '2016', '46026373@qq.com', '网络工程', 1602, '15104052140', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906233', '3168906233', '123456', '云固之', 2, '北京大学', '2016', '2273766@qq.com', '网络工程', 1602, '15305515022', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906234', '3168906234', '123456', '范富顺', 2, '北京大学', '2016', '32364422@qq.com', '网络工程', 1602, '13704227367', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906235', '3168906235', '123456', '窦晨辰', 2, '北京大学', '2016', '8850453@qq.com', '网络工程', 1602, '15106121376', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906236', '3168906236', '123456', '王毅', 2, '北京大学', '2016', '3837453@qq.com', '网络工程', 1602, '13304704727', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906237', '3168906237', '123456', '许谦', 2, '北京大学', '2016', '83440065@qq.com', '网络工程', 1602, '15703641020', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906238', '3168906238', '123456', '戴钧冠', 2, '北京大学', '2016', '207424@qq.com', '网络工程', 1602, '13204116441', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906239', '3168906239', '123456', '鲍全', 2, '北京大学', '2016', '562366@qq.com', '网络工程', 1602, '15101361467', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906240', '3168906240', '123456', '奚中', 2, '北京大学', '2016', '0685835@qq.com', '网络工程', 1602, '15201117621', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906301', '3168906301', '123456', '钱飘育', 2, '北京大学', '2016', '45060462@qq.com', '网络工程', 1603, '13603013155', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906302', '3168906302', '123456', '禹利清', 2, '北京大学', '2016', '307236422@qq.com', '网络工程', 1603, '15201276773', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906303', '3168906303', '123456', '喻启', 2, '北京大学', '2016', '50048644@qq.com', '网络工程', 1603, '13101441321', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906304', '3168906304', '123456', '伍鹏泽', 2, '北京大学', '2016', '04078587@qq.com', '网络工程', 1603, '13101301135', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906305', '3168906305', '123456', '昌翰', 2, '北京大学', '2016', '328232@qq.com', '网络工程', 1603, '15303144427', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906306', '3168906306', '123456', '贝翠雅', 2, '北京大学', '2016', '45866826@qq.com', '网络工程', 1603, '13001533007', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906307', '3168906307', '123456', '任莲', 2, '北京大学', '2016', '570256036@qq.com', '网络工程', 1603, '15302300312', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906308', '3168906308', '123456', '周国胜', 2, '北京大学', '2016', '7356205@qq.com', '网络工程', 1603, '13106221114', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906309', '3168906309', '123456', '褚元全', 2, '北京大学', '2016', '7276673@qq.com', '网络工程', 1603, '13103131104', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906310', '3168906310', '123456', '庞青倩', 2, '北京大学', '2016', '8852550@qq.com', '网络工程', 1603, '13205265116', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906311', '3168906311', '123456', '吕馨', 2, '北京大学', '2016', '73286865@qq.com', '网络工程', 1603, '15101515111', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906312', '3168906312', '123456', '项玲', 2, '北京大学', '2016', '203635766@qq.com', '网络工程', 1603, '15307336154', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906313', '3168906313', '123456', '戴钧冠', 2, '北京大学', '2016', '0308457@qq.com', '网络工程', 1603, '15201571224', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906314', '3168906314', '123456', '吴贞', 2, '北京大学', '2016', '5522345@qq.com', '网络工程', 1603, '13101017311', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906315', '3168906315', '123456', '湛可', 2, '北京大学', '2016', '78880608@qq.com', '网络工程', 1603, '13201311701', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906316', '3168906316', '123456', '金影荔', 2, '北京大学', '2016', '20347085@qq.com', '网络工程', 1603, '15004322175', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906317', '3168906317', '123456', '卞会思', 2, '北京大学', '2016', '252023@qq.com', '网络工程', 1603, '15701242611', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906318', '3168906318', '123456', '常苑', 2, '北京大学', '2016', '04507@qq.com', '网络工程', 1603, '13506117016', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906319', '3168906319', '123456', '明壮', 2, '北京大学', '2016', '33032@qq.com', '网络工程', 1603, '13002214152', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906320', '3168906320', '123456', '沈伦', 2, '北京大学', '2016', '25368255@qq.com', '网络工程', 1603, '15605204117', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906321', '3168906321', '123456', '邬裕', 2, '北京大学', '2016', '40530532@qq.com', '网络工程', 1603, '13404606651', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906322', '3168906322', '123456', '戴岚苑', 2, '北京大学', '2016', '0558256@qq.com', '网络工程', 1603, '13506546514', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906323', '3168906323', '123456', '贺雄琛', 2, '北京大学', '2016', '38483@qq.com', '网络工程', 1603, '15306127071', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906324', '3168906324', '123456', '花梦', 2, '北京大学', '2016', '8026884@qq.com', '网络工程', 1603, '13106401317', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906325', '3168906325', '123456', '马茂进', 2, '北京大学', '2016', '424@qq.com', '网络工程', 1603, '13703001331', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906326', '3168906326', '123456', '赵德', 2, '北京大学', '2016', '07425225@qq.com', '网络工程', 1603, '13503512561', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906327', '3168906327', '123456', '俞苑', 2, '北京大学', '2016', '8784502@qq.com', '网络工程', 1603, '15103167526', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906328', '3168906328', '123456', '薛才发', 2, '北京大学', '2016', '8256@qq.com', '网络工程', 1603, '15106112116', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906329', '3168906329', '123456', '祁山仁', 2, '北京大学', '2016', '6346887@qq.com', '网络工程', 1603, '15101162144', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906330', '3168906330', '123456', '秦环', 2, '北京大学', '2016', '354052@qq.com', '网络工程', 1603, '13101707235', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906331', '3168906331', '123456', '韩松善', 2, '北京大学', '2016', '6254755@qq.com', '网络工程', 1603, '13700117774', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906332', '3168906332', '123456', '梁毅', 2, '北京大学', '2016', '7430766@qq.com', '网络工程', 1603, '15100222062', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906333', '3168906333', '123456', '戚彩', 2, '北京大学', '2016', '43358642@qq.com', '网络工程', 1603, '15107076121', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906334', '3168906334', '123456', '狄轮翰', 2, '北京大学', '2016', '7672@qq.com', '网络工程', 1603, '15102474750', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906335', '3168906335', '123456', '张文', 2, '北京大学', '2016', '2652862@qq.com', '网络工程', 1603, '15103011177', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906336', '3168906336', '123456', '阮辰', 2, '北京大学', '2016', '362745556@qq.com', '网络工程', 1603, '13000741341', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906337', '3168906337', '123456', '戴启', 2, '北京大学', '2016', '82706600@qq.com', '网络工程', 1603, '15004066163', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906338', '3168906338', '123456', '纪功', 2, '北京大学', '2016', '0575863@qq.com', '网络工程', 1603, '15304254571', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906339', '3168906339', '123456', '柏震', 2, '北京大学', '2016', '40643@qq.com', '网络工程', 1603, '13102224710', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168906340', '3168906340', '123456', '朱茂进', 2, '北京大学', '2016', '458828@qq.com', '网络工程', 1603, '13507131714', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907101', '3168907101', '123456', '宋岩中', 2, '北京大学', '2016', '83023356@qq.com', '工程造价', 1601, '15101116721', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907102', '3168907102', '123456', '舒雁蓓', 2, '北京大学', '2016', '660288343@qq.com', '工程造价', 1601, '13200611455', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907103', '3168907103', '123456', '赵承乐', 2, '北京大学', '2016', '3745563@qq.com', '工程造价', 1601, '13404124307', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907104', '3168907104', '123456', '卫军', 2, '北京大学', '2016', '684853@qq.com', '工程造价', 1601, '13705644116', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907105', '3168907105', '123456', '汤锦黛', 2, '北京大学', '2016', '6664670@qq.com', '工程造价', 1601, '13505571250', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907106', '3168907106', '123456', '倪裕', 2, '北京大学', '2016', '00552606@qq.com', '工程造价', 1601, '13201511571', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907107', '3168907107', '123456', '严霭', 2, '北京大学', '2016', '43800020@qq.com', '工程造价', 1601, '15005141731', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907108', '3168907108', '123456', '韩士以', 2, '北京大学', '2016', '28236808@qq.com', '工程造价', 1601, '15106051466', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907109', '3168907109', '123456', '姚之', 2, '北京大学', '2016', '8322278@qq.com', '工程造价', 1601, '13602011127', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907110', '3168907110', '123456', '方思', 2, '北京大学', '2016', '86375@qq.com', '工程造价', 1601, '13600614131', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907111', '3168907111', '123456', '纪洁梅', 2, '北京大学', '2016', '3832445@qq.com', '工程造价', 1601, '13301227112', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907112', '3168907112', '123456', '元勤', 2, '北京大学', '2016', '8668754@qq.com', '工程造价', 1601, '13104211110', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907113', '3168907113', '123456', '卞时', 2, '北京大学', '2016', '73520726@qq.com', '工程造价', 1601, '15100535217', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907114', '3168907114', '123456', '平心邦', 2, '北京大学', '2016', '837083@qq.com', '工程造价', 1601, '15702721144', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907115', '3168907115', '123456', '郝俊峰', 2, '北京大学', '2016', '6568722@qq.com', '工程造价', 1601, '13100035177', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907116', '3168907116', '123456', '皮淑', 2, '北京大学', '2016', '26237@qq.com', '工程造价', 1601, '15003011511', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907117', '3168907117', '123456', '褚哲', 2, '北京大学', '2016', '577585485@qq.com', '工程造价', 1601, '15003314474', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907118', '3168907118', '123456', '张健世', 2, '北京大学', '2016', '27826474@qq.com', '工程造价', 1601, '15103750451', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907119', '3168907119', '123456', '雷倩', 2, '北京大学', '2016', '08388503@qq.com', '工程造价', 1601, '13102112211', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907120', '3168907120', '123456', '沈坚和', 2, '北京大学', '2016', '42248@qq.com', '工程造价', 1601, '13101132013', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907121', '3168907121', '123456', '姚言', 2, '北京大学', '2016', '77537@qq.com', '工程造价', 1601, '15500116160', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907122', '3168907122', '123456', '云以', 2, '北京大学', '2016', '406507083@qq.com', '工程造价', 1601, '15105657610', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907123', '3168907123', '123456', '华强军', 2, '北京大学', '2016', '5226005@qq.com', '工程造价', 1601, '15206175421', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907124', '3168907124', '123456', '吕彬', 2, '北京大学', '2016', '22833564@qq.com', '工程造价', 1601, '13406662110', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907125', '3168907125', '123456', '贺晶妍', 2, '北京大学', '2016', '43026652@qq.com', '工程造价', 1601, '13000110040', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907126', '3168907126', '123456', '卞茂进', 2, '北京大学', '2016', '35533066@qq.com', '工程造价', 1601, '13604415121', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907127', '3168907127', '123456', '舒克伦', 2, '北京大学', '2016', '582038657@qq.com', '工程造价', 1601, '13707157127', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907128', '3168907128', '123456', '阮卿', 2, '北京大学', '2016', '6773747@qq.com', '工程造价', 1601, '15201670043', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907129', '3168907129', '123456', '阮辉力', 2, '北京大学', '2016', '37602667@qq.com', '工程造价', 1601, '15101637412', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907130', '3168907130', '123456', '苏裕', 2, '北京大学', '2016', '752778@qq.com', '工程造价', 1601, '13100170160', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907201', '3168907201', '123456', '殷茜秋', 2, '北京大学', '2016', '07506028@qq.com', '工程造价', 1602, '15505470052', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907202', '3168907202', '123456', '罗飘育', 2, '北京大学', '2016', '564567@qq.com', '工程造价', 1602, '13400012727', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907203', '3168907203', '123456', '沈梅', 2, '北京大学', '2016', '463340@qq.com', '工程造价', 1602, '13306322232', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907204', '3168907204', '123456', '廉友裕', 2, '北京大学', '2016', '50404046@qq.com', '工程造价', 1602, '13600362111', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907205', '3168907205', '123456', '葛亮', 2, '北京大学', '2016', '58802@qq.com', '工程造价', 1602, '13607311376', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907206', '3168907206', '123456', '尹有', 2, '北京大学', '2016', '0725276@qq.com', '工程造价', 1602, '15305212141', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907207', '3168907207', '123456', '俞凤', 2, '北京大学', '2016', '6377723@qq.com', '工程造价', 1602, '13401005604', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907208', '3168907208', '123456', '方栋', 2, '北京大学', '2016', '552@qq.com', '工程造价', 1602, '13202321164', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907209', '3168907209', '123456', '郝厚庆', 2, '北京大学', '2016', '25754474@qq.com', '工程造价', 1602, '13700452112', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907210', '3168907210', '123456', '严敬震', 2, '北京大学', '2016', '542825@qq.com', '工程造价', 1602, '15604727123', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907211', '3168907211', '123456', '陶健世', 2, '北京大学', '2016', '80684252@qq.com', '工程造价', 1602, '13003514437', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907212', '3168907212', '123456', '雷安', 2, '北京大学', '2016', '067284@qq.com', '工程造价', 1602, '13105217674', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907213', '3168907213', '123456', '曹克伦', 2, '北京大学', '2016', '545706453@qq.com', '工程造价', 1602, '13505411011', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907214', '3168907214', '123456', '史毅', 2, '北京大学', '2016', '02738@qq.com', '工程造价', 1602, '13004510172', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907215', '3168907215', '123456', '梁磊民', 2, '北京大学', '2016', '572475@qq.com', '工程造价', 1602, '13002041064', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907216', '3168907216', '123456', '明元全', 2, '北京大学', '2016', '4062005@qq.com', '工程造价', 1602, '15303152441', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907217', '3168907217', '123456', '孟茂进', 2, '北京大学', '2016', '8385450@qq.com', '工程造价', 1602, '13304210117', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907218', '3168907218', '123456', '湛婉娴', 2, '北京大学', '2016', '3254873@qq.com', '工程造价', 1602, '13100121011', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907219', '3168907219', '123456', '孔妹', 2, '北京大学', '2016', '0267320@qq.com', '工程造价', 1602, '15201575211', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907220', '3168907220', '123456', '皮涛', 2, '北京大学', '2016', '5507548@qq.com', '工程造价', 1602, '13404370613', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907221', '3168907221', '123456', '孟萍红', 2, '北京大学', '2016', '58577@qq.com', '工程造价', 1602, '13100576621', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907222', '3168907222', '123456', '戚亨奇', 2, '北京大学', '2016', '4623852@qq.com', '工程造价', 1602, '15301012121', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907223', '3168907223', '123456', '姚洁梅', 2, '北京大学', '2016', '70667668@qq.com', '工程造价', 1602, '13101175551', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907224', '3168907224', '123456', '鲍云莲', 2, '北京大学', '2016', '5755460@qq.com', '工程造价', 1602, '13107734135', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907225', '3168907225', '123456', '穆贵福', 2, '北京大学', '2016', '423383@qq.com', '工程造价', 1602, '15504414364', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907226', '3168907226', '123456', '俞炎德', 2, '北京大学', '2016', '8233466@qq.com', '工程造价', 1602, '15706221571', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907227', '3168907227', '123456', '严强军', 2, '北京大学', '2016', '80833784@qq.com', '工程造价', 1602, '13005341016', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907228', '3168907228', '123456', '喻厚庆', 2, '北京大学', '2016', '5288248@qq.com', '工程造价', 1602, '15005760370', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907229', '3168907229', '123456', '祁天', 2, '北京大学', '2016', '37878688@qq.com', '工程造价', 1602, '15100151173', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168907230', '3168907230', '123456', '薛胜', 2, '北京大学', '2016', '0356800@qq.com', '工程造价', 1602, '13103442201', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908101', '3168908101', '123456', '秦辰', 2, '北京大学', '2016', '58008563@qq.com', '会计学', 1601, '13401726111', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908102', '3168908102', '123456', '苏寒', 2, '北京大学', '2016', '63767730@qq.com', '会计学', 1601, '13006626404', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908103', '3168908103', '123456', '平红', 2, '北京大学', '2016', '446432@qq.com', '会计学', 1601, '15004750137', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908104', '3168908104', '123456', '平柔', 2, '北京大学', '2016', '85862545@qq.com', '会计学', 1601, '15004742214', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908105', '3168908105', '123456', '彭群豪', 2, '北京大学', '2016', '6448570@qq.com', '会计学', 1601, '13007173005', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908106', '3168908106', '123456', '赵思', 2, '北京大学', '2016', '6636308@qq.com', '会计学', 1601, '15500010156', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908107', '3168908107', '123456', '郑亚', 2, '北京大学', '2016', '32566645@qq.com', '会计学', 1601, '13105153651', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908108', '3168908108', '123456', '章强军', 2, '北京大学', '2016', '23856573@qq.com', '会计学', 1601, '15102171517', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908109', '3168908109', '123456', '苗梅', 2, '北京大学', '2016', '434080046@qq.com', '会计学', 1601, '13100052701', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908110', '3168908110', '123456', '卜若鸣', 2, '北京大学', '2016', '624528@qq.com', '会计学', 1601, '13504425523', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908111', '3168908111', '123456', '鲍融', 2, '北京大学', '2016', '65387526@qq.com', '会计学', 1601, '13506461411', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908112', '3168908112', '123456', '何兰凤', 2, '北京大学', '2016', '8308342@qq.com', '会计学', 1601, '15007115517', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908113', '3168908113', '123456', '成裕', 2, '北京大学', '2016', '755660@qq.com', '会计学', 1601, '15002471671', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908114', '3168908114', '123456', '于君琴', 2, '北京大学', '2016', '885@qq.com', '会计学', 1601, '13500071317', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908115', '3168908115', '123456', '宋翔旭', 2, '北京大学', '2016', '28352553@qq.com', '会计学', 1601, '13100314604', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908116', '3168908116', '123456', '姚娜', 2, '北京大学', '2016', '3026550@qq.com', '会计学', 1601, '15704244011', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908117', '3168908117', '123456', '祁晶妍', 2, '北京大学', '2016', '86283346@qq.com', '会计学', 1601, '15506711014', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908118', '3168908118', '123456', '吴娟', 2, '北京大学', '2016', '6854460@qq.com', '会计学', 1601, '13307725743', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908119', '3168908119', '123456', '任士以', 2, '北京大学', '2016', '824374634@qq.com', '会计学', 1601, '15000075200', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908120', '3168908120', '123456', '席真环', 2, '北京大学', '2016', '27822628@qq.com', '会计学', 1601, '15100467152', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908121', '3168908121', '123456', '湛瑶', 2, '北京大学', '2016', '6045563@qq.com', '会计学', 1601, '13201541411', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908122', '3168908122', '123456', '彭胜', 2, '北京大学', '2016', '08765006@qq.com', '会计学', 1601, '13107414315', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908123', '3168908123', '123456', '彭博', 2, '北京大学', '2016', '057370865@qq.com', '会计学', 1601, '15300114321', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908124', '3168908124', '123456', '滕心邦', 2, '北京大学', '2016', '5066580@qq.com', '会计学', 1601, '13204761141', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908125', '3168908125', '123456', '毛仪', 2, '北京大学', '2016', '658374@qq.com', '会计学', 1601, '15502465623', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908126', '3168908126', '123456', '喻生龙', 2, '北京大学', '2016', '05276@qq.com', '会计学', 1601, '15706111422', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908127', '3168908127', '123456', '汪健世', 2, '北京大学', '2016', '35366243@qq.com', '会计学', 1601, '15300211736', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908128', '3168908128', '123456', '酆康星', 2, '北京大学', '2016', '0868687@qq.com', '会计学', 1601, '13107413203', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908129', '3168908129', '123456', '范福', 2, '北京大学', '2016', '075658@qq.com', '会计学', 1601, '13006163711', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168908130', '3168908130', '123456', '毕娟', 2, '北京大学', '2016', '3708884@qq.com', '会计学', 1601, '13105415016', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909101', '3168909101', '123456', '郑云莲', 2, '北京大学', '2016', '58645864@qq.com', '环境工程', 1601, '13501131111', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909102', '3168909102', '123456', '和壮', 2, '北京大学', '2016', '06508@qq.com', '环境工程', 1601, '13201104001', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909103', '3168909103', '123456', '陈娜', 2, '北京大学', '2016', '678562@qq.com', '环境工程', 1601, '15003701063', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909104', '3168909104', '123456', '元德', 2, '北京大学', '2016', '78067@qq.com', '环境工程', 1601, '13502114121', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909105', '3168909105', '123456', '齐江超', 2, '北京大学', '2016', '46235@qq.com', '环境工程', 1601, '15301150413', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909106', '3168909106', '123456', '纪艳', 2, '北京大学', '2016', '2083788@qq.com', '环境工程', 1601, '15007214271', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909107', '3168909107', '123456', '毕楠榕', 2, '北京大学', '2016', '727708@qq.com', '环境工程', 1601, '15501767430', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909108', '3168909108', '123456', '毛蓉眉', 2, '北京大学', '2016', '705047780@qq.com', '环境工程', 1601, '15101611021', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909109', '3168909109', '123456', '郎时', 2, '北京大学', '2016', '82340@qq.com', '环境工程', 1601, '13007212151', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909110', '3168909110', '123456', '顾庆', 2, '北京大学', '2016', '206266355@qq.com', '环境工程', 1601, '15105140121', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909111', '3168909111', '123456', '毛奇', 2, '北京大学', '2016', '03020505@qq.com', '环境工程', 1601, '15703356141', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909112', '3168909112', '123456', '庞言', 2, '北京大学', '2016', '0223247@qq.com', '环境工程', 1601, '13306170002', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909113', '3168909113', '123456', '罗策腾', 2, '北京大学', '2016', '506347@qq.com', '环境工程', 1601, '13207170711', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909114', '3168909114', '123456', '秦榕', 2, '北京大学', '2016', '577757202@qq.com', '环境工程', 1601, '15706105132', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909115', '3168909115', '123456', '孟民', 2, '北京大学', '2016', '27732385@qq.com', '环境工程', 1601, '13104661621', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909116', '3168909116', '123456', '云建家', 2, '北京大学', '2016', '483865@qq.com', '环境工程', 1601, '13005174120', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909117', '3168909117', '123456', '姜军', 2, '北京大学', '2016', '600038@qq.com', '环境工程', 1601, '15704477611', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909118', '3168909118', '123456', '齐浩亮', 2, '北京大学', '2016', '385200542@qq.com', '环境工程', 1601, '13001221112', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909119', '3168909119', '123456', '董健世', 2, '北京大学', '2016', '437335456@qq.com', '环境工程', 1601, '15600716565', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909120', '3168909120', '123456', '云鹏泽', 2, '北京大学', '2016', '00766485@qq.com', '环境工程', 1601, '15701030314', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909121', '3168909121', '123456', '梁鸣', 2, '北京大学', '2016', '755608@qq.com', '环境工程', 1601, '13007401111', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909122', '3168909122', '123456', '伍固之', 2, '北京大学', '2016', '23560248@qq.com', '环境工程', 1601, '15004102706', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909123', '3168909123', '123456', '戴翰', 2, '北京大学', '2016', '740864253@qq.com', '环境工程', 1601, '15601550653', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909124', '3168909124', '123456', '孙松善', 2, '北京大学', '2016', '3880784@qq.com', '环境工程', 1601, '13306101141', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909125', '3168909125', '123456', '戚祥', 2, '北京大学', '2016', '6063730@qq.com', '环境工程', 1601, '15100350167', 1, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909126', '3168909126', '123456', '余顺', 2, '北京大学', '2016', '550285@qq.com', '环境工程', 1601, '15607124151', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909127', '3168909127', '123456', '华琰', 2, '北京大学', '2016', '48254423@qq.com', '环境工程', 1601, '15003226614', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909128', '3168909128', '123456', '钱若鸣', 2, '北京大学', '2016', '6706@qq.com', '环境工程', 1601, '15504366173', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909129', '3168909129', '123456', '常宁欣', 2, '北京大学', '2016', '382403@qq.com', '环境工程', 1601, '15101144173', 0, '2023-03-31 15:50:22');
INSERT INTO `student` VALUES ('3168909130', '3168909130', '123456', '成炎德', 2, '北京大学', '2016', '748840703@qq.com', '环境工程', 1601, '13206164611', 0, '2023-03-31 15:50:22');

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `point` decimal(4, 2) NOT NULL,
  `credits` decimal(4, 2) NOT NULL,
  `term` tinyint(4) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 475 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES (1, '3168901101', '2016011001', '数字电路基础', '75', 2.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (2, '3168901102', '2016011001', '数字电路基础', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (3, '3168901103', '2016011001', '数字电路基础', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (4, '3168901104', '2016011001', '数字电路基础', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (5, '3168901105', '2016011001', '数字电路基础', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (6, '3168901106', '2016011001', '数字电路基础', '98', 4.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (7, '3168901107', '2016011001', '数字电路基础', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (8, '3168901108', '2016011001', '数字电路基础', '55', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (9, '3168901109', '2016011001', '数字电路基础', '67', 1.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (10, '3168901110', '2016011001', '数字电路基础', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (11, '3168901111', '2016011001', '数字电路基础', '32', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (12, '3168901112', '2016011001', '数字电路基础', '43', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (13, '3168901113', '2016011001', '数字电路基础', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (14, '3168901114', '2016011001', '数字电路基础', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (15, '3168901115', '2016011001', '数字电路基础', '23', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (16, '3168901116', '2016011001', '数字电路基础', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (17, '3168901117', '2016011001', '数字电路基础', '64', 1.40, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (18, '3168901118', '2016011001', '数字电路基础', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (19, '3168901119', '2016011001', '数字电路基础', '34', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (20, '3168901120', '2016011001', '数字电路基础', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (21, '3168901121', '2016011001', '数字电路基础', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (22, '3168901122', '2016011001', '数字电路基础', '34', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (23, '3168901123', '2016011001', '数字电路基础', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (24, '3168901124', '2016011001', '数字电路基础', '34', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (25, '3168901125', '2016011001', '数字电路基础', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (26, '3168901126', '2016011001', '数字电路基础', '75', 2.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (27, '3168901127', '2016011001', '数字电路基础', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (28, '3168901128', '2016011001', '数字电路基础', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (29, '3168901129', '2016011001', '数字电路基础', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (30, '3168901130', '2016011001', '数字电路基础', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (31, '3168901131', '2016011001', '数字电路基础', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (32, '3168901132', '2016011001', '数字电路基础', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (33, '3168901133', '2016011001', '数字电路基础', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (34, '3168901134', '2016011001', '数字电路基础', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (35, '3168901135', '2016011001', '数字电路基础', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (36, '3168901136', '2016011001', '数字电路基础', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (37, '3168901137', '2016011001', '数字电路基础', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (38, '3168901138', '2016011001', '数字电路基础', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (39, '3168901139', '2016011001', '数字电路基础', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (40, '3168901140', '2016011001', '数字电路基础', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (41, '3168901141', '2016011001', '数字电路基础', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (42, '3168901142', '2016011001', '数字电路基础', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (43, '3168901143', '2016011001', '数字电路基础', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (44, '3168901144', '2016011001', '数字电路基础', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (45, '3168901145', '2016011001', '数字电路基础', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (46, '3168901146', '2016011001', '数字电路基础', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (47, '3168901147', '2016011001', '数字电路基础', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (48, '3168901148', '2016011001', '数字电路基础', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (49, '3168901149', '2016011001', '数字电路基础', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (50, '3168901150', '2016011001', '数字电路基础', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (51, '3168901101', '2016011002', '大学物理', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (52, '3168901102', '2016011002', '大学物理', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (53, '3168901103', '2016011002', '大学物理', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (54, '3168901104', '2016011002', '大学物理', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (55, '3168901105', '2016011002', '大学物理', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (56, '3168901106', '2016011002', '大学物理', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (57, '3168901107', '2016011002', '大学物理', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (58, '3168901108', '2016011002', '大学物理', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (59, '3168901109', '2016011002', '大学物理', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (60, '3168901110', '2016011002', '大学物理', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (61, '3168901111', '2016011002', '大学物理', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (62, '3168901112', '2016011002', '大学物理', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (63, '3168901113', '2016011002', '大学物理', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (64, '3168901114', '2016011002', '大学物理', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (65, '3168901115', '2016011002', '大学物理', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (66, '3168901116', '2016011002', '大学物理', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (67, '3168901117', '2016011002', '大学物理', '67', 1.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (68, '3168901118', '2016011002', '大学物理', '67', 1.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (69, '3168901119', '2016011002', '大学物理', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (70, '3168901120', '2016011002', '大学物理', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (71, '3168901121', '2016011002', '大学物理', '34', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (72, '3168901122', '2016011002', '大学物理', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (73, '3168901123', '2016011002', '大学物理', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (74, '3168901124', '2016011002', '大学物理', '68', 1.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (75, '3168901125', '2016011002', '大学物理', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (76, '3168901126', '2016011002', '大学物理', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (77, '3168901127', '2016011002', '大学物理', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (78, '3168901128', '2016011002', '大学物理', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (79, '3168901129', '2016011002', '大学物理', '97', 4.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (80, '3168901130', '2016011002', '大学物理', '67', 1.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (81, '3168901131', '2016011002', '大学物理', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (82, '3168901132', '2016011002', '大学物理', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (83, '3168901133', '2016011002', '大学物理', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (84, '3168901134', '2016011002', '大学物理', '77', 2.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (85, '3168901135', '2016011002', '大学物理', '98', 4.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (86, '3168901136', '2016011002', '大学物理', '32', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (87, '3168901137', '2016011002', '大学物理', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (88, '3168901138', '2016011002', '大学物理', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (89, '3168901139', '2016011002', '大学物理', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (90, '3168901140', '2016011002', '大学物理', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (91, '3168901141', '2016011002', '大学物理', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (92, '3168901142', '2016011002', '大学物理', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (93, '3168901143', '2016011002', '大学物理', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (94, '3168901144', '2016011002', '大学物理', '75', 2.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (95, '3168901145', '2016011002', '大学物理', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (96, '3168901146', '2016011002', '大学物理', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (97, '3168901147', '2016011002', '大学物理', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (98, '3168901148', '2016011002', '大学物理', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (99, '3168901149', '2016011002', '大学物理', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (100, '3168901150', '2016011002', '大学物理', '34', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (101, '3168901101', '2016011003', '线性代数', '23', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (102, '3168901102', '2016011003', '线性代数', '43', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (103, '3168901103', '2016011003', '线性代数', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (104, '3168901104', '2016011003', '线性代数', '100', 5.00, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (105, '3168901105', '2016011003', '线性代数', '100', 5.00, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (106, '3168901106', '2016011003', '线性代数', '75', 2.50, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (107, '3168901107', '2016011003', '线性代数', '100', 5.00, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (108, '3168901108', '2016011003', '线性代数', '76', 2.60, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (109, '3168901109', '2016011003', '线性代数', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (110, '3168901110', '2016011003', '线性代数', '65', 1.50, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (111, '3168901111', '2016011003', '线性代数', '67', 1.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (112, '3168901112', '2016011003', '线性代数', '100', 5.00, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (113, '3168901113', '2016011003', '线性代数', '65', 1.50, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (114, '3168901114', '2016011003', '线性代数', '76', 2.60, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (115, '3168901115', '2016011003', '线性代数', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (116, '3168901116', '2016011003', '线性代数', '78', 2.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (117, '3168901117', '2016011003', '线性代数', '55', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (118, '3168901118', '2016011003', '线性代数', '76', 2.60, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (119, '3168901119', '2016011003', '线性代数', '65', 1.50, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (120, '3168901120', '2016011003', '线性代数', '65', 1.50, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (121, '3168901121', '2016011003', '线性代数', '65', 1.50, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (122, '3168901122', '2016011003', '线性代数', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (123, '3168901123', '2016011003', '线性代数', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (124, '3168901124', '2016011003', '线性代数', '34', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (125, '3168901125', '2016011003', '线性代数', '65', 1.50, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (126, '3168901126', '2016011003', '线性代数', '100', 5.00, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (127, '3168901127', '2016011003', '线性代数', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (128, '3168901128', '2016011003', '线性代数', '65', 1.50, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (129, '3168901129', '2016011003', '线性代数', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (130, '3168901130', '2016011003', '线性代数', '67', 1.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (131, '3168901131', '2016011003', '线性代数', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (132, '3168901132', '2016011003', '线性代数', '78', 2.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (133, '3168901133', '2016011003', '线性代数', '100', 5.00, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (134, '3168901134', '2016011003', '线性代数', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (135, '3168901135', '2016011003', '线性代数', '98', 4.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (136, '3168901136', '2016011003', '线性代数', '65', 1.50, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (137, '3168901137', '2016011003', '线性代数', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (138, '3168901138', '2016011003', '线性代数', '98', 4.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (139, '3168901139', '2016011003', '线性代数', '67', 1.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (140, '3168901140', '2016011003', '线性代数', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (141, '3168901141', '2016011003', '线性代数', '78', 2.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (142, '3168901142', '2016011003', '线性代数', '67', 1.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (143, '3168901143', '2016011003', '线性代数', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (144, '3168901144', '2016011003', '线性代数', '98', 4.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (145, '3168901145', '2016011003', '线性代数', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (146, '3168901146', '2016011003', '线性代数', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (147, '3168901147', '2016011003', '线性代数', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (148, '3168901148', '2016011003', '线性代数', '88', 3.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (149, '3168901149', '2016011003', '线性代数', '66', 1.60, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (150, '3168901150', '2016011003', '线性代数', '77', 2.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (151, '3168901101', '2016011004', '复变函数', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (152, '3168901102', '2016011004', '复变函数', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (153, '3168901103', '2016011004', '复变函数', '76', 2.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (154, '3168901104', '2016011004', '复变函数', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (155, '3168901105', '2016011004', '复变函数', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (156, '3168901106', '2016011004', '复变函数', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (157, '3168901107', '2016011004', '复变函数', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (158, '3168901108', '2016011004', '复变函数', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (159, '3168901109', '2016011004', '复变函数', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (160, '3168901110', '2016011004', '复变函数', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (161, '3168901111', '2016011004', '复变函数', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (162, '3168901112', '2016011004', '复变函数', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (163, '3168901113', '2016011004', '复变函数', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (164, '3168901114', '2016011004', '复变函数', '98', 4.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (165, '3168901115', '2016011004', '复变函数', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (166, '3168901116', '2016011004', '复变函数', '76', 2.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (167, '3168901117', '2016011004', '复变函数', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (168, '3168901118', '2016011004', '复变函数', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (169, '3168901119', '2016011004', '复变函数', '76', 2.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (170, '3168901120', '2016011004', '复变函数', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (171, '3168901121', '2016011004', '复变函数', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (172, '3168901122', '2016011004', '复变函数', '78', 2.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (173, '3168901123', '2016011004', '复变函数', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (174, '3168901124', '2016011004', '复变函数', '76', 2.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (175, '3168901125', '2016011004', '复变函数', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (176, '3168901126', '2016011004', '复变函数', '67', 1.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (177, '3168901127', '2016011004', '复变函数', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (178, '3168901128', '2016011004', '复变函数', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (179, '3168901129', '2016011004', '复变函数', '76', 2.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (180, '3168901130', '2016011004', '复变函数', '77', 2.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (181, '3168901131', '2016011004', '复变函数', '78', 2.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (182, '3168901132', '2016011004', '复变函数', '78', 2.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (183, '3168901133', '2016011004', '复变函数', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (184, '3168901134', '2016011004', '复变函数', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (185, '3168901135', '2016011004', '复变函数', '76', 2.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (186, '3168901136', '2016011004', '复变函数', '76', 2.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (187, '3168901137', '2016011004', '复变函数', '33', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (188, '3168901138', '2016011004', '复变函数', '67', 1.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (189, '3168901139', '2016011004', '复变函数', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (190, '3168901140', '2016011004', '复变函数', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (191, '3168901141', '2016011004', '复变函数', '76', 2.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (192, '3168901142', '2016011004', '复变函数', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (193, '3168901143', '2016011004', '复变函数', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (194, '3168901144', '2016011004', '复变函数', '76', 2.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (195, '3168901145', '2016011004', '复变函数', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (196, '3168901146', '2016011004', '复变函数', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (197, '3168901147', '2016011004', '复变函数', '43', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (198, '3168901148', '2016011004', '复变函数', '73', 2.30, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (199, '3168901149', '2016011004', '复变函数', '32', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (200, '3168901150', '2016011004', '复变函数', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (201, '3168901101', '2016011005', '模拟电子线路', '67', 1.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (202, '3168901102', '2016011005', '模拟电子线路', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (203, '3168901103', '2016011005', '模拟电子线路', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (204, '3168901104', '2016011005', '模拟电子线路', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (205, '3168901105', '2016011005', '模拟电子线路', '64', 1.40, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (206, '3168901106', '2016011005', '模拟电子线路', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (207, '3168901107', '2016011005', '模拟电子线路', '77', 2.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (208, '3168901108', '2016011005', '模拟电子线路', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (209, '3168901109', '2016011005', '模拟电子线路', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (210, '3168901110', '2016011005', '模拟电子线路', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (211, '3168901111', '2016011005', '模拟电子线路', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (212, '3168901112', '2016011005', '模拟电子线路', '74', 2.40, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (213, '3168901113', '2016011005', '模拟电子线路', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (214, '3168901114', '2016011005', '模拟电子线路', '57', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (215, '3168901115', '2016011005', '模拟电子线路', '85', 3.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (216, '3168901116', '2016011005', '模拟电子线路', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (217, '3168901117', '2016011005', '模拟电子线路', '85', 3.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (218, '3168901118', '2016011005', '模拟电子线路', '43', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (219, '3168901119', '2016011005', '模拟电子线路', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (220, '3168901120', '2016011005', '模拟电子线路', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (221, '3168901121', '2016011005', '模拟电子线路', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (222, '3168901122', '2016011005', '模拟电子线路', '34', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (223, '3168901123', '2016011005', '模拟电子线路', '75', 2.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (224, '3168901124', '2016011005', '模拟电子线路', '43', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (225, '3168901125', '2016011005', '模拟电子线路', '74', 2.40, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (226, '3168901126', '2016011005', '模拟电子线路', '77', 2.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (227, '3168901127', '2016011005', '模拟电子线路', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (228, '3168901128', '2016011005', '模拟电子线路', '75', 2.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (229, '3168901129', '2016011005', '模拟电子线路', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (230, '3168901130', '2016011005', '模拟电子线路', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (231, '3168901131', '2016011005', '模拟电子线路', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (232, '3168901132', '2016011005', '模拟电子线路', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (233, '3168901133', '2016011005', '模拟电子线路', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (234, '3168901134', '2016011005', '模拟电子线路', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (235, '3168901135', '2016011005', '模拟电子线路', '97', 4.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (236, '3168901136', '2016011005', '模拟电子线路', '46', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (237, '3168901137', '2016011005', '模拟电子线路', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (238, '3168901138', '2016011005', '模拟电子线路', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (239, '3168901139', '2016011005', '模拟电子线路', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (240, '3168901140', '2016011005', '模拟电子线路', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (241, '3168901141', '2016011005', '模拟电子线路', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (242, '3168901142', '2016011005', '模拟电子线路', '67', 1.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (243, '3168901143', '2016011005', '模拟电子线路', '67', 1.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (244, '3168901144', '2016011005', '模拟电子线路', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (245, '3168901145', '2016011005', '模拟电子线路', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (246, '3168901146', '2016011005', '模拟电子线路', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (247, '3168901147', '2016011005', '模拟电子线路', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (248, '3168901148', '2016011005', '模拟电子线路', '76', 2.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (249, '3168901149', '2016011005', '模拟电子线路', '46', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (250, '3168901150', '2016011005', '模拟电子线路', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (251, '3168901101', '2016011006', '信号与系统', '35', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (252, '3168901102', '2016011006', '信号与系统', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (253, '3168901103', '2016011006', '信号与系统', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (254, '3168901104', '2016011006', '信号与系统', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (255, '3168901105', '2016011006', '信号与系统', '76', 2.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (256, '3168901106', '2016011006', '信号与系统', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (257, '3168901107', '2016011006', '信号与系统', '74', 2.40, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (258, '3168901108', '2016011006', '信号与系统', '86', 3.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (259, '3168901109', '2016011006', '信号与系统', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (260, '3168901110', '2016011006', '信号与系统', '85', 3.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (261, '3168901111', '2016011006', '信号与系统', '86', 3.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (262, '3168901112', '2016011006', '信号与系统', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (263, '3168901113', '2016011006', '信号与系统', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (264, '3168901114', '2016011006', '信号与系统', '43', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (265, '3168901115', '2016011006', '信号与系统', '83', 3.30, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (266, '3168901116', '2016011006', '信号与系统', '75', 2.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (267, '3168901117', '2016011006', '信号与系统', '23', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (268, '3168901118', '2016011006', '信号与系统', '86', 3.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (269, '3168901119', '2016011006', '信号与系统', '37', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (270, '3168901120', '2016011006', '信号与系统', '75', 2.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (271, '3168901121', '2016011006', '信号与系统', '76', 2.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (272, '3168901122', '2016011006', '信号与系统', '34', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (273, '3168901123', '2016011006', '信号与系统', '76', 2.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (274, '3168901124', '2016011006', '信号与系统', '43', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (275, '3168901125', '2016011006', '信号与系统', '86', 3.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (276, '3168901126', '2016011006', '信号与系统', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (277, '3168901127', '2016011006', '信号与系统', '43', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (278, '3168901128', '2016011006', '信号与系统', '86', 3.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (279, '3168901129', '2016011006', '信号与系统', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (280, '3168901130', '2016011006', '信号与系统', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (281, '3168901131', '2016011006', '信号与系统', '95', 4.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (282, '3168901132', '2016011006', '信号与系统', '67', 1.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (283, '3168901133', '2016011006', '信号与系统', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (284, '3168901134', '2016011006', '信号与系统', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (285, '3168901135', '2016011006', '信号与系统', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (286, '3168901136', '2016011006', '信号与系统', '34', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (287, '3168901137', '2016011006', '信号与系统', '77', 2.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (288, '3168901138', '2016011006', '信号与系统', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (289, '3168901139', '2016011006', '信号与系统', '86', 3.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (290, '3168901140', '2016011006', '信号与系统', '76', 2.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (291, '3168901141', '2016011006', '信号与系统', '23', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (292, '3168901142', '2016011006', '信号与系统', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (293, '3168901143', '2016011006', '信号与系统', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (294, '3168901144', '2016011006', '信号与系统', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (295, '3168901145', '2016011006', '信号与系统', '43', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (296, '3168901146', '2016011006', '信号与系统', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (297, '3168901147', '2016011006', '信号与系统', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (298, '3168901148', '2016011006', '信号与系统', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (299, '3168901149', '2016011006', '信号与系统', '43', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (300, '3168901150', '2016011006', '信号与系统', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (301, '3168904101', '2016041001', '高频电子线路', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (302, '3168904102', '2016041001', '高频电子线路', '55', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (303, '3168904103', '2016041001', '高频电子线路', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (304, '3168904104', '2016041001', '高频电子线路', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (305, '3168904105', '2016041001', '高频电子线路', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (306, '3168904106', '2016041001', '高频电子线路', '94', 4.40, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (307, '3168904107', '2016041001', '高频电子线路', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (308, '3168904108', '2016041001', '高频电子线路', '66', 1.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (309, '3168904109', '2016041001', '高频电子线路', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (310, '3168904110', '2016041001', '高频电子线路', '88', 3.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (311, '3168904111', '2016041001', '高频电子线路', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (312, '3168904112', '2016041001', '高频电子线路', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (313, '3168904113', '2016041001', '高频电子线路', '98', 4.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (314, '3168904114', '2016041001', '高频电子线路', '88', 3.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (315, '3168904115', '2016041001', '高频电子线路', '98', 4.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (316, '3168904116', '2016041001', '高频电子线路', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (317, '3168904117', '2016041001', '高频电子线路', '99', 4.90, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (318, '3168904118', '2016041001', '高频电子线路', '88', 3.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (319, '3168904119', '2016041001', '高频电子线路', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (320, '3168904120', '2016041001', '高频电子线路', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (321, '3168904121', '2016041001', '高频电子线路', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (322, '3168904122', '2016041001', '高频电子线路', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (323, '3168904123', '2016041001', '高频电子线路', '55', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (324, '3168904124', '2016041001', '高频电子线路', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (325, '3168904125', '2016041001', '高频电子线路', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (326, '3168904126', '2016041001', '高频电子线路', '12', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (327, '3168904127', '2016041001', '高频电子线路', '55', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (328, '3168904128', '2016041001', '高频电子线路', '66', 1.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (329, '3168904129', '2016041001', '高频电子线路', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (330, '3168904130', '2016041001', '高频电子线路', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (331, '3168904131', '2016041001', '高频电子线路', '56', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (332, '3168904132', '2016041001', '高频电子线路', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (333, '3168904133', '2016041001', '高频电子线路', '100', 5.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (334, '3168904134', '2016041001', '高频电子线路', '55', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (335, '3168904135', '2016041001', '高频电子线路', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (336, '3168904136', '2016041001', '高频电子线路', '89', 3.90, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (337, '3168904137', '2016041001', '高频电子线路', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (338, '3168904138', '2016041001', '高频电子线路', '98', 4.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (339, '3168904139', '2016041001', '高频电子线路', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (340, '3168904140', '2016041001', '高频电子线路', '89', 3.90, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (341, '3168904141', '2016041001', '高频电子线路', '89', 3.90, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (342, '3168904142', '2016041001', '高频电子线路', '89', 3.90, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (343, '3168904143', '2016041001', '高频电子线路', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (344, '3168904144', '2016041001', '高频电子线路', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (345, '3168904145', '2016041001', '高频电子线路', '66', 1.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (346, '3168904146', '2016041001', '高频电子线路', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (347, '3168904147', '2016041001', '高频电子线路', '79', 2.90, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (348, '3168904148', '2016041001', '高频电子线路', '88', 3.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (349, '3168904149', '2016041001', '高频电子线路', '65', 1.50, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (350, '3168904150', '2016041001', '高频电子线路', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (351, '3168904151', '2016041001', '高频电子线路', '66', 1.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (352, '3168904152', '2016041001', '高频电子线路', '87', 3.70, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (353, '3168904153', '2016041001', '高频电子线路', '99', 4.90, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (354, '3168904154', '2016041001', '高频电子线路', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (355, '3168904155', '2016041001', '高频电子线路', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (356, '3168904156', '2016041001', '高频电子线路', '66', 1.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (357, '3168904157', '2016041001', '高频电子线路', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (358, '3168904158', '2016041001', '高频电子线路', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (359, '3168904159', '2016041001', '高频电子线路', '66', 1.60, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (360, '3168904160', '2016041001', '高频电子线路', '78', 2.80, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (361, '3168902111', '2016021001', '物联网工程导论', '88', 3.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (362, '3168902112', '2016021001', '物联网工程导论', '78', 2.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (363, '3168902113', '2016021001', '物联网工程导论', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (364, '3168902114', '2016021001', '物联网工程导论', '66', 1.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (365, '3168902115', '2016021001', '物联网工程导论', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (366, '3168902116', '2016021001', '物联网工程导论', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (367, '3168902117', '2016021001', '物联网工程导论', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (368, '3168902118', '2016021001', '物联网工程导论', '66', 1.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (369, '3168902119', '2016021001', '物联网工程导论', '55', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (370, '3168902120', '2016021001', '物联网工程导论', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (371, '3168902121', '2016021001', '物联网工程导论', '88', 3.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (372, '3168902122', '2016021001', '物联网工程导论', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (373, '3168902123', '2016021001', '物联网工程导论', '98', 4.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (374, '3168902124', '2016021001', '物联网工程导论', '78', 2.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (375, '3168902125', '2016021001', '物联网工程导论', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (376, '3168902126', '2016021001', '物联网工程导论', '66', 1.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (377, '3168902127', '2016021001', '物联网工程导论', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (378, '3168902128', '2016021001', '物联网工程导论', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (379, '3168902129', '2016021001', '物联网工程导论', '88', 3.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (380, '3168902130', '2016021001', '物联网工程导论', '98', 4.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (381, '3168902131', '2016021001', '物联网工程导论', '78', 2.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (382, '3168902132', '2016021001', '物联网工程导论', '98', 4.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (383, '3168902133', '2016021001', '物联网工程导论', '88', 3.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (384, '3168902134', '2016021001', '物联网工程导论', '78', 2.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (385, '3168902135', '2016021001', '物联网工程导论', '98', 4.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (386, '3168902136', '2016021001', '物联网工程导论', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (387, '3168902137', '2016021001', '物联网工程导论', '100', 5.00, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (388, '3168902138', '2016021001', '物联网工程导论', '88', 3.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (389, '3168902139', '2016021001', '物联网工程导论', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (390, '3168902140', '2016021001', '物联网工程导论', '44', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (391, '3168902102', '2016021001', '物联网工程导论', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (392, '3168902103', '2016021001', '物联网工程导论', '89', 3.90, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (393, '3168902104', '2016021001', '物联网工程导论', '78', 2.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (394, '3168902105', '2016021001', '物联网工程导论', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (395, '3168902106', '2016021001', '物联网工程导论', '55', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (396, '3168902107', '2016021001', '物联网工程导论', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (397, '3168902108', '2016021001', '物联网工程导论', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (398, '3168902109', '2016021001', '物联网工程导论', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (399, '3168902110', '2016021001', '物联网工程导论', '66', 1.60, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (400, '3168902101', '2016021001', '物联网工程导论', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (401, '3168902141', '2016021001', '物联网工程导论', '87', 3.70, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (402, '3168902142', '2016021001', '物联网工程导论', '88', 3.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (403, '3168902143', '2016021001', '物联网工程导论', '98', 4.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (404, '3168902144', '2016021001', '物联网工程导论', '78', 2.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (405, '3168902145', '2016021001', '物联网工程导论', '54', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (406, '3168902146', '2016021001', '物联网工程导论', '55', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (407, '3168902147', '2016021001', '物联网工程导论', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (408, '3168902148', '2016021001', '物联网工程导论', '45', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (409, '3168902149', '2016021001', '物联网工程导论', '55', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (410, '3168902150', '2016021001', '物联网工程导论', '65', 1.50, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (411, '3168903101', '2016031001', '计算机网络技术', '88', 3.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (412, '3168903102', '2016031001', '计算机网络技术', '55', 0.00, 0.00, 1, 2016);
INSERT INTO `student_course` VALUES (413, '3168903103', '2016031001', '计算机网络技术', '76', 2.60, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (414, '3168903104', '2016031001', '计算机网络技术', '100', 5.00, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (415, '3168903105', '2016031001', '计算机网络技术', '100', 5.00, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (416, '3168903106', '2016031001', '计算机网络技术', '100', 5.00, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (417, '3168903107', '2016031001', '计算机网络技术', '76', 2.60, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (418, '3168903108', '2016031001', '计算机网络技术', '76', 2.60, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (419, '3168903109', '2016031001', '计算机网络技术', '88', 3.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (420, '3168903110', '2016031001', '计算机网络技术', '67', 1.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (421, '3168903111', '2016031001', '计算机网络技术', '76', 2.60, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (422, '3168903112', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (423, '3168903113', '2016031001', '计算机网络技术', '66', 1.60, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (424, '3168903114', '2016031001', '计算机网络技术', '77', 2.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (425, '3168903115', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (426, '3168903116', '2016031001', '计算机网络技术', '99', 4.90, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (427, '3168903117', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (428, '3168903118', '2016031001', '计算机网络技术', '78', 2.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (429, '3168903119', '2016031001', '计算机网络技术', '88', 3.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (430, '3168903120', '2016031001', '计算机网络技术', '98', 4.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (431, '3168903121', '2016031001', '计算机网络技术', '100', 5.00, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (432, '3168903122', '2016031001', '计算机网络技术', '89', 3.90, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (433, '3168903123', '2016031001', '计算机网络技术', '77', 2.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (434, '3168903124', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (435, '3168903125', '2016031001', '计算机网络技术', '88', 3.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (436, '3168903126', '2016031001', '计算机网络技术', '98', 4.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (437, '3168903127', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (438, '3168903128', '2016031001', '计算机网络技术', '66', 1.60, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (439, '3168903129', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (440, '3168903130', '2016031001', '计算机网络技术', '88', 3.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (441, '3168903131', '2016031001', '计算机网络技术', '88', 3.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (442, '3168903132', '2016031001', '计算机网络技术', '78', 2.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (443, '3168903133', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (444, '3168903134', '2016031001', '计算机网络技术', '77', 2.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (445, '3168903135', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (446, '3168903136', '2016031001', '计算机网络技术', '98', 4.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (447, '3168903137', '2016031001', '计算机网络技术', '78', 2.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (448, '3168903138', '2016031001', '计算机网络技术', '100', 5.00, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (449, '3168903139', '2016031001', '计算机网络技术', '78', 2.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (450, '3168903140', '2016031001', '计算机网络技术', '98', 4.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (451, '3168903141', '2016031001', '计算机网络技术', '78', 2.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (452, '3168903142', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (453, '3168903143', '2016031001', '计算机网络技术', '88', 3.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (454, '3168903144', '2016031001', '计算机网络技术', '78', 2.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (455, '3168903145', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (456, '3168903146', '2016031001', '计算机网络技术', '78', 2.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (457, '3168903147', '2016031001', '计算机网络技术', '99', 4.90, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (458, '3168903148', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (459, '3168903149', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (460, '3168903150', '2016031001', '计算机网络技术', '77', 2.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (461, '3168903151', '2016031001', '计算机网络技术', '89', 3.90, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (462, '3168903152', '2016031001', '计算机网络技术', '78', 2.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (463, '3168903153', '2016031001', '计算机网络技术', '78', 2.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (464, '3168903154', '2016031001', '计算机网络技术', '98', 4.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (465, '3168903155', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (466, '3168903156', '2016031001', '计算机网络技术', '88', 3.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (467, '3168903157', '2016031001', '计算机网络技术', '77', 2.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (468, '3168903158', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (469, '3168903159', '2016031001', '计算机网络技术', '87', 3.70, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (470, '3168903160', '2016031001', '计算机网络技术', '78', 2.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (471, '3168901101', '2016011008', '体育', '88', 3.80, 1.00, 1, 2016);
INSERT INTO `student_course` VALUES (472, '3168901101', '2016011010', '多媒体技术', '88', 3.80, 2.00, 1, 2016);
INSERT INTO `student_course` VALUES (473, '3168901101', '2016011007', '大学英语', '80', 3.00, 4.00, 1, 2016);
INSERT INTO `student_course` VALUES (474, '3168901101', '2016011009', '电子技术', '62', 1.20, 2.00, 1, 2016);

-- ----------------------------
-- Table structure for subhomework
-- ----------------------------
DROP TABLE IF EXISTS `subhomework`;
CREATE TABLE `subhomework`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homeworkid` int(11) NULL DEFAULT NULL,
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `attaurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `attaname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `addtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subhomework
-- ----------------------------
INSERT INTO `subhomework` VALUES (1, 3, '3168901101', '陈小明', 'http://localhost:9192/files/833cec36-3ca4-4e22-92e1-1b8b7caa6af2', '新建DOCX 文档 (2).docx', '2024-12-23 03:26:55');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `real_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `school` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sex` tinyint(4) NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3890291 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (3890290, '3890290', '123456', '张三', 1, '北京大学', '199999@qq.com', '15877777777', 0, '2023-03-31 15:50:22');

-- ----------------------------
-- Table structure for teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `profession` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `term` tinyint(4) NOT NULL,
  `course_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher_course
-- ----------------------------
INSERT INTO `teacher_course` VALUES (1, '3890290', '3890290', '数字电路基础', '电子信息工程', '1601', 1, '2016011001');
INSERT INTO `teacher_course` VALUES (2, '3890290', '3890290', '物联网工程导论', '物联网', '1601', 1, '2016021001');
INSERT INTO `teacher_course` VALUES (3, '3890290', '3890290', '计算机网络技术', '计算机', '1601', 1, '2016031001');
INSERT INTO `teacher_course` VALUES (4, '3890290', '3890290', '高频电子线路', '通信工程', '1601', 1, '2016041001');
INSERT INTO `teacher_course` VALUES (7, '3890281', '3890281', '大学物理', '电子信息工程', '1601', 1, '2016011002');
INSERT INTO `teacher_course` VALUES (9, '3890281', '3890281', '网络与通信', '计算机', '1601', 1, '2016031002');
INSERT INTO `teacher_course` VALUES (10, '3890281', '3890281', '光纤通讯', '通信工程', '1601', 1, '2016041002');
INSERT INTO `teacher_course` VALUES (11, '3890270', '3890270', '线性代数', '电子信息工程', '1601', 1, '2016011003');
INSERT INTO `teacher_course` VALUES (12, '3890270', '3890270', '现代通信技术', '物联网', '1601', 1, '2016021003');
INSERT INTO `teacher_course` VALUES (13, '3890270', '3890270', '计算机安全', '计算机', '1601', 1, '2016031003');
INSERT INTO `teacher_course` VALUES (14, '3890270', '3890270', '移动通讯', '通信工程', '1601', 1, '2016041003');
INSERT INTO `teacher_course` VALUES (15, '3890261', '3890261', '复变函数', '电子信息工程', '1601', 1, '2016011004');
INSERT INTO `teacher_course` VALUES (16, '3890261', '3890261', '现代传感器技术', '物联网', '1601', 1, '2016021005');
INSERT INTO `teacher_course` VALUES (17, '3890261', '3890261', '算法与数据结构', '计算机', '1601', 1, '2016031004');
INSERT INTO `teacher_course` VALUES (18, '3890261', '3890261', '电路分析', '通信工程', '1601', 1, '2016041004');
INSERT INTO `teacher_course` VALUES (19, '3890251', '3890251', '模拟电子线路', '电子信息工程', '1601', 1, '2016011005');
INSERT INTO `teacher_course` VALUES (20, '3890251', '3890251', '信号与系统概论', '物联网', '1601', 1, '2016021006');
INSERT INTO `teacher_course` VALUES (21, '3890251', '3890251', '多媒体信息处理', '计算机', '1601', 1, '2016031005');
INSERT INTO `teacher_course` VALUES (22, '3890251', '3890251', '程控交换技术', '通信工程', '1601', 1, '2016041005');
INSERT INTO `teacher_course` VALUES (23, '3890240', '3890240', '信号与系统', '电子信息工程', '1601', 1, '2016011006');
INSERT INTO `teacher_course` VALUES (24, '3890240', '3890240', '无线传感器网络', '物联网', '1601', 1, '2016021004');
INSERT INTO `teacher_course` VALUES (25, '3890240', '3890240', '计算机组成原理', '计算机', '1601', 1, '2016031006');
INSERT INTO `teacher_course` VALUES (26, '3890240', '3890240', '光纤通讯', '通信工程', '1601', 1, '2016041006');
INSERT INTO `teacher_course` VALUES (27, '3890221', '3890221', '物联网安全', '物联网', '1601', 1, '2016021002');
INSERT INTO `teacher_course` VALUES (28, '3890230', '3890230', '网络与通信', '计算机', '1601', 1, '2016031002');

-- ----------------------------
-- Table structure for timetable
-- ----------------------------
DROP TABLE IF EXISTS `timetable`;
CREATE TABLE `timetable`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `week_id` int(11) NOT NULL,
  `profession` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `year` int(11) NOT NULL,
  `term` tinyint(4) NOT NULL,
  `week_num` int(11) NULL DEFAULT NULL COMMENT '周数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of timetable
-- ----------------------------
INSERT INTO `timetable` VALUES (1, 1, '电子信息工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (2, 2, '电子信息工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (3, 3, '电子信息工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (4, 4, '电子信息工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (5, 5, '电子信息工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (6, 6, '电子信息工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (7, 7, '电子信息工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (8, 8, '电子信息工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (9, 9, '电子信息工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (10, 10, '电子信息工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (11, 11, '物联网', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (12, 12, '物联网', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (13, 13, '物联网', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (14, 14, '物联网', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (15, 15, '物联网', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (16, 16, '物联网', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (17, 17, '物联网', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (18, 18, '物联网', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (19, 19, '物联网', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (20, 20, '物联网', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (21, 21, '计算机', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (22, 22, '计算机', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (23, 23, '计算机', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (24, 24, '计算机', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (25, 25, '计算机', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (26, 26, '计算机', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (27, 27, '计算机', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (28, 28, '计算机', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (29, 29, '计算机', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (30, 30, '计算机', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (31, 31, '通信工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (32, 32, '通信工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (33, 33, '通信工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (34, 34, '通信工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (35, 35, '通信工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (36, 36, '通信工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (37, 37, '通信工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (38, 38, '通信工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (39, 39, '通信工程', '1601', 2016, 1, 1);
INSERT INTO `timetable` VALUES (40, 40, '通信工程', '1601', 2016, 1, 1);

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES (1, '1', 0, '/files/cbf2b508-f00a-48b9-b46e-9683b32e2d1c.png');
INSERT INTO `upload` VALUES (2, '3168901102', 2, '/files/98d6ec65-bb2c-4b41-8f7f-ac723085b59b.jpg');
INSERT INTO `upload` VALUES (3, '3890290', 1, '/files/3b7ae9fa-a1de-42dd-812e-9f1ef7c4af60.jpg');
INSERT INTO `upload` VALUES (4, '3168901101', 2, '/files/46f66eca-2631-4745-a1ee-8852b8e78054.jpg');

-- ----------------------------
-- Table structure for week
-- ----------------------------
DROP TABLE IF EXISTS `week`;
CREATE TABLE `week`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tuesday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wednesday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thursday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `friday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `saturday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sunday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of week
-- ----------------------------
INSERT INTO `week` VALUES (1, '大学物理', '一', '模拟电子线路', '一', '一', '一', '一');
INSERT INTO `week` VALUES (2, '大学物理', '一', '模拟电子线路', '一', '一', '一', '一');
INSERT INTO `week` VALUES (3, '一', '线性代数', '一', '复变函数', '信号与系统', '一', '一');
INSERT INTO `week` VALUES (4, '一', '线性代数', '一', '复变函数', '信号与系统', '一', '一');
INSERT INTO `week` VALUES (5, '信号与系统', '数字电路基础', '大学物理', '大学物理', '一', '一', '一');
INSERT INTO `week` VALUES (6, '信号与系统', '数字电路基础', '大学物理', '大学物理', '一', '一', '一');
INSERT INTO `week` VALUES (7, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (8, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (9, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (10, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (11, '一', '信号与系统概论', '一', '物联网安全', '现代通信技术', '一', '一');
INSERT INTO `week` VALUES (12, '一', '信号与系统概论', '一', '物联网安全', '现代通信技术', '一', '一');
INSERT INTO `week` VALUES (13, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (14, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (15, '物联网工程导论', '无线传感器网络', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (16, '物联网工程导论', '无线传感器网络', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (17, '现代通信技术', '一', '一', '物联网工程导论', '一', '一', '一');
INSERT INTO `week` VALUES (18, '现代通信技术', '一', '一', '物联网工程导论', '一', '一', '一');
INSERT INTO `week` VALUES (19, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (20, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (21, '一', '算法与数据结构', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (22, '一', '算法与数据结构', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (23, '网络与通信', '一', '计算机网络技术', '网络与通信', '一', '一', '一');
INSERT INTO `week` VALUES (24, '网络与通信', '一', '计算机网络技术', '网络与通信', '一', '一', '一');
INSERT INTO `week` VALUES (25, '一', '一', '计算机组成原理', '多媒体信息处理', '一', '一', '一');
INSERT INTO `week` VALUES (26, '一', '一', '计算机组成原理', '多媒体信息处理', '一', '一', '一');
INSERT INTO `week` VALUES (27, '一', '多媒体信息处理', '一', '一', '计算机组成原理', '一', '一');
INSERT INTO `week` VALUES (28, '一', '多媒体信息处理', '一', '一', '计算机组成原理', '一', '一');
INSERT INTO `week` VALUES (29, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (30, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (31, '一', '一', '一', '高频电子线路', '一', '一', '一');
INSERT INTO `week` VALUES (32, '一', '一', '一', '高频电子线路', '一', '一', '一');
INSERT INTO `week` VALUES (33, '一', '一', '一', '光纤通讯', '一', '一', '一');
INSERT INTO `week` VALUES (34, '一', '一', '一', '光纤通讯', '一', '一', '一');
INSERT INTO `week` VALUES (35, '通信原理', '光纤通讯', '一', '电路分析', '移动通讯', '一', '一');
INSERT INTO `week` VALUES (36, '通信原理', '光纤通讯', '一', '电路分析', '移动通讯', '一', '一');
INSERT INTO `week` VALUES (37, '高频电子线路', '一', '电路分析', '一', '一', '一', '一');
INSERT INTO `week` VALUES (38, '高频电子线路', '一', '电路分析', '一', '一', '一', '一');
INSERT INTO `week` VALUES (39, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (40, '一', '一', '一', '一', '一', '一', '一');

SET FOREIGN_KEY_CHECKS = 1;
