SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for invitation_code
-- ----------------------------
DROP TABLE IF EXISTS `invitation_code`;
CREATE TABLE `invitation_code`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '邀请码',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态  1已使用  0未使用',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '注册的账号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1019 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
