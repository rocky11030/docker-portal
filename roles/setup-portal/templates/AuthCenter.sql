/*
Navicat MySQL Data Transfer

Source Server         : 192.168.250.3
Source Server Version : 50633
Source Host           : 192.168.250.3:3306
Source Database       : AuthCenter

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2017-05-22 09:33:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cache_config
-- ----------------------------
DROP TABLE IF EXISTS `cache_config`;
CREATE TABLE `cache_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `cache_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `refresh_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ceph_quota
-- ----------------------------
DROP TABLE IF EXISTS `ceph_quota`;
CREATE TABLE `ceph_quota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime DEFAULT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `key_quota` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for group_role_mapping
-- ----------------------------
DROP TABLE IF EXISTS `group_role_mapping`;
CREATE TABLE `group_role_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for log_item
-- ----------------------------
DROP TABLE IF EXISTS `log_item`;
CREATE TABLE `log_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `level` int(11) NOT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `resource_id` varchar(255) DEFAULT NULL,
  `resource_name` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `tenant` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pool
-- ----------------------------
DROP TABLE IF EXISTS `pool`;
CREATE TABLE `pool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `credential` varchar(255) DEFAULT NULL,
  `end_point` varchar(255) DEFAULT NULL,
  `pool_admin` varchar(255) DEFAULT NULL,
  `pool_name` varchar(255) DEFAULT NULL,
  `pool_tenant` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for resourceb
-- ----------------------------
DROP TABLE IF EXISTS `resourceb`;
CREATE TABLE `resourceb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT '资源描述',
  `name` varchar(255) DEFAULT NULL COMMENT '资源名称',
  `priority` int(11) DEFAULT NULL COMMENT '优先级别',
  `res_string` varchar(255) DEFAULT NULL COMMENT '资源路径',
  `res_type` varchar(255) DEFAULT NULL COMMENT '资源类型',
  `parentid` int(11) DEFAULT NULL COMMENT 'parentid',
  `menu_string` varchar(255) DEFAULT NULL,
  `menu_type` varchar(255) DEFAULT NULL,
  `visible` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for role_resource_mapping
-- ----------------------------
DROP TABLE IF EXISTS `role_resource_mapping`;
CREATE TABLE `role_resource_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL COMMENT '资源ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for rolea
-- ----------------------------
DROP TABLE IF EXISTS `rolea`;
CREATE TABLE `rolea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `mid` int(11) DEFAULT NULL COMMENT '对应manager的role的id',
  `alias` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for service_catalog
-- ----------------------------
DROP TABLE IF EXISTS `service_catalog`;
CREATE TABLE `service_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `end_point` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for tenant
-- ----------------------------
DROP TABLE IF EXISTS `tenant`;
CREATE TABLE `tenant` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `insert_time` datetime NOT NULL,
      `last_update_time` datetime DEFAULT NULL,
      `apply_status` int(11) DEFAULT NULL,
      `description` varchar(255) DEFAULT NULL,
      `email` varchar(255) DEFAULT NULL,
      `bandwidth` int(11) DEFAULT NULL,
      `ceph_quota_id` int(11) DEFAULT NULL,
      `name` varchar(255) DEFAULT NULL,
      `open_region` varchar(255) DEFAULT NULL,
      `phone_number` varchar(255) DEFAULT NULL,
      `tenant_grade_id` varchar(255) DEFAULT NULL,
      `tenant_id` varchar(255) DEFAULT NULL,
      `tenant_status` int(11) DEFAULT NULL,
      `tenant_type` int(11) DEFAULT NULL,
      `creator_id` varchar(255) DEFAULT NULL,
      `creator_name` varchar(255) DEFAULT NULL,
      `show_public` tinyint(1) NOT NULL,
      `tenant_custom_type_id` int(11) DEFAULT NULL,
      `ops_del` tinyint(1) NOT NULL,
      `tenant_created_type` int(11) DEFAULT NULL,
      `type` int(11) DEFAULT NULL,
      `begin_date` datetime DEFAULT NULL,
      `end_date` datetime DEFAULT NULL,
      PRIMARY KEY (`id`),
      KEY `tenant_id` (`tenant_id`),
      KEY `ceph_quota_id` (`ceph_quota_id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tenant_custom_type
-- ----------------------------
DROP TABLE IF EXISTS `tenant_custom_type`;
CREATE TABLE `tenant_custom_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tenant_emails_pool
-- ----------------------------
DROP TABLE IF EXISTS `tenant_emails_pool`;
CREATE TABLE `tenant_emails_pool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pool_uuid` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `verify_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tenant_grade
-- ----------------------------
DROP TABLE IF EXISTS `tenant_grade`;
CREATE TABLE `tenant_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `cores` int(11) DEFAULT NULL,
  `floating_ips` int(11) DEFAULT NULL,
  `floatingip` int(11) DEFAULT NULL,
  `gigabytes` int(11) DEFAULT NULL,
  `grade_name` varchar(255) DEFAULT NULL,
  `injected_file_content_bytes` int(11) DEFAULT NULL,
  `injected_files` int(11) DEFAULT NULL,
  `instances` int(11) DEFAULT NULL,
  `key_pairs` int(11) DEFAULT NULL,
  `metadata_items` int(11) DEFAULT NULL,
  `network` int(11) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `router` int(11) DEFAULT NULL,
  `security_group` int(11) DEFAULT NULL,
  `security_group_rule` int(11) DEFAULT NULL,
  `security_group_rules` int(11) DEFAULT NULL,
  `security_groups` int(11) DEFAULT NULL,
  `snapshots` int(11) DEFAULT NULL,
  `subnet` int(11) DEFAULT NULL,
  `volumes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tenant_grade_mapping
-- ----------------------------
DROP TABLE IF EXISTS `tenant_grade_mapping`;
CREATE TABLE `tenant_grade_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT '用户组描述',
  `name` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `status` int(11) DEFAULT NULL COMMENT '状态 0申请、 1有效、2冻结、3暂停、4无效',
  `mid` int(11) DEFAULT NULL COMMENT '对应manager_user_group的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for user_group_mapping
-- ----------------------------
DROP TABLE IF EXISTS `user_group_mapping`;
CREATE TABLE `user_group_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `user_group_id` int(11) DEFAULT NULL COMMENT '用户组ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_role_mapping
-- ----------------------------
DROP TABLE IF EXISTS `user_role_mapping`;
CREATE TABLE `user_role_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_tenant_mapping
-- ----------------------------
DROP TABLE IF EXISTS `user_tenant_mapping`;
CREATE TABLE `user_tenant_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for userb
-- ----------------------------
DROP TABLE IF EXISTS `userb`;
CREATE TABLE `userb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_time` datetime NOT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ops_user_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '用户类型具体：0=PortalUser;1=ManagerUser;',
  `access_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `is_open_s3` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'S3开通标记：1开通，0未开通',
  `is_open_mistral` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Mistral开通标记：1开通，0未开通',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;




-- ----------------------------
-- Records of pool
-- ----------------------------
INSERT INTO `pool` VALUES ('1', '2015-08-31 00:00:00', null, '{{ openstack_auth.password }}', 'http://{{ kolla_internal_fqdn }}:5000/v2.0/', 'admin', 'FirstOpenStack', 'admin', 'openstack-nova', '1');

-- ----------------------------
-- Records of resourceb
-- ----------------------------
INSERT INTO `resourceb` VALUES ('1', '2016-01-25 09:41:06', null, '接口地址', '接口地址', '1', '/', 'URL', '0', null, null, '0');
INSERT INTO `resourceb` VALUES ('2', '2014-02-28 22:01:19', null, '受控资源列表', '所有资源列表', '42', '/**', 'URL', '0', '', '3', '0');
INSERT INTO `resourceb` VALUES ('3', '2014-02-28 11:31:37', null, '匿名用户可以访问的资源', '登录页面', '1', '/WEB-INF/views/public/login.jsp', 'URL', '0', '', '3', '0');
INSERT INTO `resourceb` VALUES ('4', '2016-01-25 09:41:06', '2016-01-15 17:21:41', '控制板', '控制板', '26', '/WEB-INF/views/public/dashboard.jsp', 'MENU', '0', null, null, '0');
INSERT INTO `resourceb` VALUES ('5', '2014-02-28 11:31:37', null, '登录用户可以访问的资源', '主页面', '4', '/WEB-INF/views/operation/decorators/operation-home.jsp', 'URL', '0', '', '3', '0');
INSERT INTO `resourceb` VALUES ('6', '2016-01-15 17:21:41', null, '控制板', '控制板', '6', '/**/dashboard.*\";\"/**/operation-ceph.jsp\";\"/ceph/cluster/get/all.do', 'MENU', '0', '/dashboard.html', '2', '0');
INSERT INTO `resourceb` VALUES ('7', '2016-01-18 15:39:15', null, '权限管理', '权限管理', '7', '', 'MENU', '0', '', '1', '1');
INSERT INTO `resourceb` VALUES ('8', '2016-01-15 17:31:32', null, '用户管理', '用户管理', '8', '/WEB-INF/views/operation/administrator/user.jsp', 'MENU', '7', '/user.html', '2', '1');
INSERT INTO `resourceb` VALUES ('9', '2016-01-18 16:19:21', null, '用户组管理', '用户组管理', '9', '/WEB-INF/views/operation/administrator/group.jsp', 'MENU', '7', '/group.html', '2', '1');
INSERT INTO `resourceb` VALUES ('10', '2016-01-18 16:20:28', null, '角色管理', '角色管理', '10', '/WEB-INF/views/operation/administrator/role.jsp', 'MENU', '7', '/role.html', '2', '1');
INSERT INTO `resourceb` VALUES ('11', '2016-01-18 16:21:39', null, '资源管理', '资源管理', '11', '/WEB-INF/views/operation/administrator/resource.jsp', 'MENU', '7', '/resource.html', '2', '0');
INSERT INTO `resourceb` VALUES ('12', '2016-01-18 16:28:23', null, '租户管理', '租户管理', '12', '', 'MENU', '0', '', '1', '1');
INSERT INTO `resourceb` VALUES ('13', '2016-01-18 16:30:11', null, '租户信息', '租户信息', '13', '/WEB-INF/views/operation/tenant/list.jsp', 'MENU', '12', '/tenant.html', '2', '1');
INSERT INTO `resourceb` VALUES ('14', '2016-01-18 16:50:48', null, '租户等级', '租户等级', '14', '/WEB-INF/views/operation/tenantgrade/list.jsp', 'MENU', '12', '/tenantgrade.html', '2', '0');
INSERT INTO `resourceb` VALUES ('15', '2016-01-18 16:51:45', null, '租户类别', '租户类别', '15', '/WEB-INF/views/operation/tenantgrade/tenantType.jsp', 'MENU', '12', '/tenantType.html', '2', '0');
INSERT INTO `resourceb` VALUES ('16', '2016-01-18 17:03:13', null, '合同信息', '合同信息', '16', '/WEB-INF/views/operation/contracts/list.jsp', 'MENU', '12', '/list.html', '2', '0');
INSERT INTO `resourceb` VALUES ('17', '2016-01-18 17:08:49', null, '用户合同提醒', '用户合同提醒', '17', '/WEB-INF/views/operation/contracts/noticeAdminEmail.jsp', 'MENU', '167', '/noticeAdminEmail.html', '2', '0');
INSERT INTO `resourceb` VALUES ('18', '2016-01-18 17:13:30', null, '资源管理', '资源管理', '18', '', 'MENU', '0', '', '1', '1');
INSERT INTO `resourceb` VALUES ('19', '2016-01-18 17:13:58', null, '服务器型号模板', '服务器型号模板', '19', '/WEB-INF/views/operation/resources/hosttype.jsp', 'MENU', '18', '/hosttype.html', '2', '1');
INSERT INTO `resourceb` VALUES ('20', '2016-01-18 17:15:23', null, '资源预留模板', '资源预留模板', '20', '/WEB-INF/views/operation/resources/reservationtype.jsp', 'MENU', '18', '/reservationtype.html', '2', '1');
INSERT INTO `resourceb` VALUES ('21', '2016-01-18 17:17:24', null, '计算节点列表', '计算节点列表', '21', '/WEB-INF/views/operation/resources/host.jsp', 'MENU', '18', '/host.html', '2', '1');
INSERT INTO `resourceb` VALUES ('22', '2016-01-18 17:18:41', null, 'AZ管理', 'AZ管理', '22', '/WEB-INF/views/operation/resources/az.jsp', 'MENU', '18', '/az.html', '2', '1');
INSERT INTO `resourceb` VALUES ('23', '2016-01-18 17:19:46', null, '虚机管理', '虚机管理', '23', '/WEB-INF/views/operation/resources/server.jsp', 'MENU', '18', '/server.html', '2', '1');
INSERT INTO `resourceb` VALUES ('24', '2016-01-18 17:21:32', null, '云硬盘管理', '云硬盘管理', '24', '/WEB-INF/views/operation/resources/volume.jsp', 'MENU', '18', '/volume.html', '2', '1');
INSERT INTO `resourceb` VALUES ('25', '2016-01-18 17:22:30', null, '浮动IP管理', '浮动IP管理', '25', '/WEB-INF/views/operation/resources/allFloatingip.jsp', 'MENU', '18', '/allFloatingip.html', '2', '1');
INSERT INTO `resourceb` VALUES ('26', '2016-01-18 17:23:41', null, '硬盘总容量管理', '硬盘总容量管理', '26', '/WEB-INF/views/operation/resources/rdbTotalCapacity.jsp', 'MENU', '18', '/rdbTotalCapacity.html', '2', '0');
INSERT INTO `resourceb` VALUES ('27', '2016-01-18 17:28:29', null, '云硬盘QOS', '云硬盘QOS', '27', '/WEB-INF/views/operation/resources/qosspec.jsp', 'MENU', '18', '/qosSpec.html', '2', '1');
INSERT INTO `resourceb` VALUES ('28', '2016-01-18 17:29:52', null, 'Region别名管理', 'Region别名管理', '28', '/WEB-INF/views/operation/resources/regionalias.jsp', 'MENU', '18', '/regionalias.html', '2', '1');
INSERT INTO `resourceb` VALUES ('29', '2016-01-18 17:32:16', null, '模板管理', '模板管理', '29', '', 'MENU', '0', '', '1', '1');
INSERT INTO `resourceb` VALUES ('30', '2016-01-18 17:32:38', null, 'VM模板', 'VM模板', '30', '/WEB-INF/views/operation/resources/flavor.jsp', 'MENU', '29', '/flavor.html', '2', '1');
INSERT INTO `resourceb` VALUES ('31', '2016-01-18 17:49:16', null, 'Vol模板', 'Vol模板', '31', '/WEB-INF/views/operation/resources/volumetype.jsp', 'MENU', '29', '/volumetype.html', '2', '1');
INSERT INTO `resourceb` VALUES ('32', '2016-01-18 17:50:16', null, '公网IP', '公网IP', '32', '/WEB-INF/views/operation/resources/floatingip.jsp', 'MENU', '29', '/floatingip.html', '2', '0');
INSERT INTO `resourceb` VALUES ('33', '2016-01-18 17:51:09', null, '快照', '快照', '33', '/WEB-INF/views/operation/resources/snapshot.jsp', 'MENU', '29', '/snapshot.html', '2', '0');
INSERT INTO `resourceb` VALUES ('34', '2016-01-18 17:51:51', null, 'OPS健康监控', 'OPS健康监控', '34', '', 'MENU', '0', '', '1', '0');
INSERT INTO `resourceb` VALUES ('35', '2016-01-18 17:52:27', null, 'OSTF地址管理', 'OSTF地址管理', '35', '/WEB-INF/views/operation/ostf/ostfEndpoint.jsp', 'MENU', '34', '/ostfEndpoint.html', '2', '0');
INSERT INTO `resourceb` VALUES ('36', '2016-01-19 09:59:12', null, 'OPS健康检查', 'OPS健康检查', '36', '/WEB-INF/views/operation/resources/healthcheck.jsp', 'MENU', '34', '/healthcheck.html', '2', '0');
INSERT INTO `resourceb` VALUES ('37', '2016-01-19 10:02:49', null, 'Ceph监控', 'Ceph监控', '37', '', 'MENU', '0', '', '1', '0');
INSERT INTO `resourceb` VALUES ('38', '2016-01-19 10:03:30', null, '监控概览', '监控概览', '38', '/WEB-INF/views/operation/ceph/cephhome.jsp', 'MENU', '37', '/cephhome.html', '2', '0');
INSERT INTO `resourceb` VALUES ('39', '2016-01-19 10:09:21', null, 'Osd监控', 'Osd监控', '39', '/WEB-INF/views/operation/ceph/cephosd.jsp', 'MENU', '37', '/cephosd.html', '2', '0');
INSERT INTO `resourceb` VALUES ('40', '2016-01-19 10:13:40', null, '操作日志', '操作日志', '40', '/WEB-INF/views/operation/log/log.jsp', 'MENU', '0', '/log.html', '2', '1');
INSERT INTO `resourceb` VALUES ('41', '2016-01-27 17:17:57', null, '角色管理创建按钮', '创建角色', '40', '/operation/admin/role/create.html', 'URL', '10', '/operation/admin/role/create.html', '3', '1');
INSERT INTO `resourceb` VALUES ('42', '2016-01-27 17:33:01', null, '角色管理更新角色', '更新角色', '40', '/operation/admin/role/update.html', 'URL', '10', '/operation/admin/role/update.html', '3', '1');
INSERT INTO `resourceb` VALUES ('43', '2016-01-27 17:34:05', null, '角色管理删除按钮', '删除角色', '40', '/operation/admin/role/delete.html', 'URL', '10', '/operation/admin/role/delete.html', '3', '1');
INSERT INTO `resourceb` VALUES ('44', '2016-01-28 09:45:37', null, '用户管理创建按钮', '创建用户', '40', '/operation/admin/user/create.html', 'URL', '8', '/operation/admin/user/create.html', '3', '1');
INSERT INTO `resourceb` VALUES ('45', '2016-01-28 09:48:08', null, '用户管理更新按钮', '更新用户', '40', '/operation/admin/user/update.html', 'URL', '8', '/operation/admin/user/update.html', '3', '1');
INSERT INTO `resourceb` VALUES ('46', '2016-01-28 09:50:15', null, '用户管理删除按钮', '删除用户', '40', '/operation/admin/user/delete.html', 'URL', '8', '/operation/admin/user/delete.html', '3', '1');
INSERT INTO `resourceb` VALUES ('47', '2016-01-28 09:52:05', null, '用户组管理创建按钮', '创建用户组', '40', '/operation/admin/group/create.html', 'URL', '9', '/operation/admin/group/create.html', '3', '1');
INSERT INTO `resourceb` VALUES ('48', '2016-01-28 09:52:58', null, '用户组管理更新按钮', '更新用户组', '40', '/operation/admin/group/update.html', 'URL', '9', '/operation/admin/group/update.html', '3', '1');
INSERT INTO `resourceb` VALUES ('49', '2016-01-28 09:54:01', null, '用户组管理删除按钮', '删除用户组', '40', '/operation/admin/group/delete.html', 'URL', '9', '/operation/admin/group/delete.html', '3', '1');
INSERT INTO `resourceb` VALUES ('50', '2016-01-28 09:58:36', null, '资源管理创建按钮', '创建资源', '40', '/operation/admin/resource/create.html', 'URL', '11', '/operation/admin/resource/create.html', '3', '0');
INSERT INTO `resourceb` VALUES ('51', '2016-01-28 09:59:22', null, '资源管理更新按钮', '更新资源', '40', '/operation/admin/resource/update.html', 'URL', '11', '/operation/admin/resource/update.html', '3', '0');
INSERT INTO `resourceb` VALUES ('52', '2016-01-28 10:00:03', null, '资源管理删除按钮', '删除资源', '40', '/operation/admin/resource/delete.html', 'URL', '11', '/operation/admin/resource/delete.html', '3', '0');
INSERT INTO `resourceb` VALUES ('53', '2016-01-28 10:05:13', null, '租户信息创建按钮', '创建租户', '40', '/operation/tenant/create.html', 'URL', '13', '/operation/tenant/create.html', '3', '1');
INSERT INTO `resourceb` VALUES ('54', '2016-01-28 10:07:24', null, '租户信息更新按钮', '更新租户', '40', '/operation/tenant/update.html', 'URL', '13', '/operation/tenant/update.html', '3', '1');
INSERT INTO `resourceb` VALUES ('55', '2016-01-28 10:08:42', null, '租户信息删除按钮', '删除租户', '40', '/operation/tenant/delete.html', 'URL', '13', '/operation/tenant/delete.html', '3', '1');
INSERT INTO `resourceb` VALUES ('56', '2016-01-28 10:10:51', null, '租户等级创建按钮', '创建租户等级', '40', '/operation/tenantgrade/create.html', 'URL', '14', '/operation/tenantgrade/create.html', '3', '0');
INSERT INTO `resourceb` VALUES ('57', '2016-01-28 10:11:56', null, '租户等级更新按钮', '更新租户等级', '40', '/operation/tenantgrade/update.html', 'URL', '14', '/operation/tenantgrade/update.html', '3', '0');
INSERT INTO `resourceb` VALUES ('58', '2016-01-28 10:14:28', null, '租户等级删除按钮', '删除租户等级', '40', '/operation/tenantgrade/delete.html', 'URL', '14', '/operation/tenantgrade/delete.html', '3', '0');
INSERT INTO `resourceb` VALUES ('59', '2016-01-28 10:15:39', null, '租户类别创建按钮', '租户类别创建', '40', '/operation/tenantType/create.html', 'URL', '15', '/operation/tenantType/create.html', '3', '0');
INSERT INTO `resourceb` VALUES ('60', '2016-01-28 10:16:44', null, '租户类别更新按钮', '租户类别更新', '40', '/operation/tenantType/update.html', 'URL', '15', '/operation/tenantType/update.html', '3', '0');
INSERT INTO `resourceb` VALUES ('61', '2016-01-28 10:17:21', null, '租户类别删除按钮', '租户类别删除', '40', '/operation/tenantType/delete.html', 'URL', '15', '/operation/tenantType/delete.html', '3', '0');
INSERT INTO `resourceb` VALUES ('62', '2016-01-28 10:22:30', null, '合同信息创建按钮', '合同信息创建', '40', '/operation/contract/create.html', 'URL', '16', '/operation/contract/create.html', '3', '0');
INSERT INTO `resourceb` VALUES ('63', '2016-01-28 10:23:24', null, '合同信息更新按钮', '合同信息更新', '40', '/operation/contract/update.html', 'URL', '16', '/operation/contract/update.html', '3', '0');
INSERT INTO `resourceb` VALUES ('64', '2016-01-28 10:24:09', null, '合同信息删除按钮', '合同信息删除', '40', '/operation/contract/delete.html', 'URL', '16', '/operation/contract/delete.html', '3', '0');
INSERT INTO `resourceb` VALUES ('65', '2016-01-28 10:26:01', null, '合同提醒创建按钮', '合同提醒创建', '40', '/operation/noticeAdminEmail/create.html', 'URL', '17', '/operation/noticeAdminEmail/create.html', '3', '0');
INSERT INTO `resourceb` VALUES ('66', '2016-01-28 10:27:25', null, '合同提醒更新按钮', '合同提醒更新', '40', '/operation/noticeAdminEmail/update.html', 'URL', '17', '/operation/noticeAdminEmail/update.html', '3', '0');
INSERT INTO `resourceb` VALUES ('67', '2016-01-28 10:28:03', null, '合同提醒删除按钮', '合同提醒删除', '40', '/operation/noticeAdminEmail/delete.html', 'URL', '17', '/operation/noticeAdminEmail/delete.html', '3', '0');
INSERT INTO `resourceb` VALUES ('68', '2016-01-28 10:35:03', null, '服务器型号模板创建按钮', '创建服务器类型', '40', '/operation/hostType/hosttypecreate.html', 'URL', '19', '/operation/hostType/hosttypecreate.html', '3', '1');
INSERT INTO `resourceb` VALUES ('69', '2016-01-28 10:36:14', null, '服务器型号模板更新按钮', '更新服务器类型', '40', '/operation/hostType/hosttypeupdate.html', 'URL', '19', '/operation/hostType/hosttypeupdate.html', '3', '1');
INSERT INTO `resourceb` VALUES ('70', '2016-01-28 10:37:09', null, '服务器型号模板删除按钮', '删除服务器类型', '40', '/operation/hostType/hosttypedelete.html', 'URL', '19', '/operation/hostType/hosttypedelete.html', '3', '1');
INSERT INTO `resourceb` VALUES ('71', '2016-01-28 10:38:36', null, '资源预留模板创建按钮', '创建预留类型', '40', '/operation/reservationType/create.html', 'URL', '20', '/operation/reservationType/create.html', '3', '1');
INSERT INTO `resourceb` VALUES ('72', '2016-01-28 10:39:26', null, '资源预留模板更新按钮', '更新预留类型', '40', '/operation/reservationType/update.html', 'URL', '20', '/operation/reservationType/update.html', '3', '1');
INSERT INTO `resourceb` VALUES ('73', '2016-01-28 10:44:48', null, '资源预留模板删除按钮', '删除预留类型', '40', '/operation/reservationType/delete.html', 'URL', '20', '/operation/reservationType/delete.html', '3', '1');
INSERT INTO `resourceb` VALUES ('74', '2016-01-28 10:52:11', null, '计算节点列表创建', '创建计算节点', '40', '/operation/host/create.html', 'URL', '21', '/operation/host/create.html', '3', '0');
INSERT INTO `resourceb` VALUES ('75', '2016-01-28 10:53:01', null, '计算节点列表更新', '更新计算节点', '40', '/operation/host/update.html', 'URL', '21', '/operation/host/update.html', '3', '1');
INSERT INTO `resourceb` VALUES ('76', '2016-01-28 10:59:18', null, 'az管理可用域创建', '创建可用域', '40', '/operation/azResource/create.html', 'URL', '22', '/operation/azResource/create.html', '3', '1');
INSERT INTO `resourceb` VALUES ('77', '2016-01-28 11:01:19', null, 'az管理可用域更新', '更新可用域', '40', '/operation/azResource/update.html', 'URL', '22', '/operation/azResource/update.html', '3', '1');
INSERT INTO `resourceb` VALUES ('78', '2016-01-28 11:02:01', null, 'az管理可用域删除', '删除可用域', '40', '/operation/azResource/delete.html', 'URL', '22', '/operation/azResource/delete.html', '3', '1');
INSERT INTO `resourceb` VALUES ('79', '2016-01-28 11:09:04', null, '硬盘总容量管理创建', '创建存储总容量', '40', '/operation/rdbCapacity/create.html', 'URL', '26', '/operation/rdbCapacity/create.html', '3', '0');
INSERT INTO `resourceb` VALUES ('80', '2016-01-28 11:15:51', null, '硬盘总容量管理更新', '更新存储总容量', '40', '/operation/rdbCapacity/update.html', 'URL', '26', '/operation/rdbCapacity/update.html', '3', '0');
INSERT INTO `resourceb` VALUES ('81', '2016-01-28 11:17:36', null, '硬盘总容量管理删除', '删除存储总容量', '40', '/operation/rdbCapacity/delete.html', 'URL', '26', '/operation/rdbCapacity/delete.html', '3', '0');
INSERT INTO `resourceb` VALUES ('82', '2016-01-28 11:22:01', null, '云硬盘QOS', '创建云硬盘QOS', '40', '/operation/qosspec/create.html', 'URL', '27', '/operation/qosspec/create.html', '3', '1');
INSERT INTO `resourceb` VALUES ('83', '2016-01-28 11:22:47', null, '云硬盘QOS', '删除云硬盘QOS', '40', '/operation/qosspec/delete.html', 'URL', '27', '/operation/qosspec/delete.html', '3', '1');
INSERT INTO `resourceb` VALUES ('84', '2016-01-28 11:30:18', null, 'Region别名管理', '更新Region别名', '40', '/operation/regionalias/update.html', 'URL', '28', '/operation/regionalias/update.html', '3', '1');
INSERT INTO `resourceb` VALUES ('85', '2016-02-01 14:29:26', null, 'VM模板创建', '创建模板', '40', '/operation/flavor/create.html', 'URL', '30', '/operation/flavor/create.html', '3', '1');
INSERT INTO `resourceb` VALUES ('86', '2016-02-01 14:31:03', null, 'VM模板更新', '更新模板', '40', '/operation/flavor/update.html', 'URL', '30', '/operation/flavor/update.html', '3', '1');
INSERT INTO `resourceb` VALUES ('87', '2016-02-01 14:31:32', null, 'VM模板删除', '删除模板', '40', '/operation/flavor/delete.html', 'URL', '30', '/operation/flavor/delete.html', '3', '1');
INSERT INTO `resourceb` VALUES ('88', '2016-02-01 14:34:27', null, 'Vol模板创建', '创建云硬盘类型', '40', '/operation/volumeType/create.html', 'URL', '31', '/operation/volumeType/create.html', '3', '1');
INSERT INTO `resourceb` VALUES ('89', '2016-02-01 14:35:21', null, 'Vol模板更新', '更新云硬盘类型', '40', '/operation/volumeType/update.html', 'URL', '31', '/operation/volumeType/update.html', '3', '1');
INSERT INTO `resourceb` VALUES ('90', '2016-02-01 14:35:52', null, 'Vol模板删除', '删除云硬盘类型', '40', '/operation/volumeType/delete.html', 'URL', '31', '/operation/volumeType/delete.html', '3', '1');
INSERT INTO `resourceb` VALUES ('91', '2016-02-01 14:44:07', null, '公网IP价格更新', '更新公网IP价格', '40', '/operation/floatingip/update.html', 'URL', '32', '/operation/floatingip/update.html', '3', '0');
INSERT INTO `resourceb` VALUES ('92', '2016-02-01 14:55:41', null, '快照价格更新', '更新快照价格', '40', '/operation/snapshot/update.html', 'URL', '33', '/operation/snapshot/update.html', '3', '0');
INSERT INTO `resourceb` VALUES ('93', '2016-02-01 14:58:00', null, 'OSTF地址管理创建', '创建ostf地址', '40', '/operation/ostf/create.do', 'URL', '35', '/operation/ostf/create.do', '3', '0');
INSERT INTO `resourceb` VALUES ('94', '2016-02-01 14:59:42', null, 'OSTF地址管理更新', '更新ostf地址', '40', '/operation/ostf/update.do', 'URL', '35', '/operation/ostf/update.do', '3', '0');
INSERT INTO `resourceb` VALUES ('95', '2016-02-01 15:02:02', null, 'OSTF地址管理删除', '删除ostf地址', '40', '/operation/ostf/delete.do', 'URL', '35', '/operation/ostf/delete.do', '3', '0');
INSERT INTO `resourceb` VALUES ('96', '2016-02-01 15:02:40', null, 'OPS健康检查', '获取最新测试结果', '40', '/operation/healthcheck/lastresult.html', 'URL', '36', '/operation/healthcheck/lastresult.html', '3', '0');
INSERT INTO `resourceb` VALUES ('98', '2016-02-02 14:27:36', null, '租户信息导出', '导出Excel', '40', '/operation/usage/tenantExcelExport.do', 'URL', '13', '/operation/usage/tenantExcelExport.do', '3', '0');
INSERT INTO `resourceb` VALUES ('99', '2016-02-02 14:42:58', null, '租户信息充值', '充值', '40', '/operation/tenant/recharge.html', 'URL', '13', '/operation/tenant/recharge.html', '3', '0');
INSERT INTO `resourceb` VALUES ('100', '2016-02-02 15:25:32', null, '租户信息详情', '用户信息', '40', '/operation/user/listdata.html', 'URL', '13', '/operation/user/listdata.html', '3', '1');
INSERT INTO `resourceb` VALUES ('101', '2016-02-02 15:27:21', null, '租户信息详情', '租户配额', '40', '/operation/tenant/ops_quota.html', 'URL', '13', '/operation/tenant/ops_quota.html', '3', '1');
INSERT INTO `resourceb` VALUES ('102', '2016-02-02 15:32:47', null, '租户信息详情', '配额使用情况', '40', '/operation/usage/quota.do', 'URL', '13', '/operation/usage/quota.do', '3', '1');
INSERT INTO `resourceb` VALUES ('103', '2016-02-02 15:35:26', null, '租户信息详情', 'AZ信息', '40', '/operation/azResource/detailByTenantId.html', 'URl', '13', '/operation/azResource/detailByTenantId.html', '3', '1');
INSERT INTO `resourceb` VALUES ('104', '2016-02-02 15:37:30', null, '租户信息详情', '虚机信息', '40', '/operation/tenant/tenant_vms.html', 'URL', '13', '/operation/tenant/tenant_vms.html', '3', '1');
INSERT INTO `resourceb` VALUES ('105', '2016-02-02 15:41:37', null, '租户信息详情', '安全组信息', '40', '/operation/tenant/securitygroups.html', 'URL', '13', '/operation/tenant/securitygroups.html', '3', '1');
INSERT INTO `resourceb` VALUES ('106', '2016-02-02 15:47:30', null, '租户信息详情', '云硬盘信息', '40', '/operation/tenant/tenant_volumes.html', 'URL', '13', '/operation/tenant/tenant_volumes.html', '3', '1');
INSERT INTO `resourceb` VALUES ('107', '2016-02-02 15:48:33', null, '租户信息详情', '网络信息', '40', '/operation/tenant/tenant_networks.html', 'URL', '13', '/operation/tenant/tenant_networks.html', '3', '1');
INSERT INTO `resourceb` VALUES ('108', '2016-02-02 15:49:26', null, '租户信息详情', '网络拓扑', '40', '/operation/web/resources/networktopology.html', 'URL', '13', '/operation/web/resources/networktopology.html', '3', '1');
INSERT INTO `resourceb` VALUES ('109', '2016-02-02 15:57:33', null, '租户信息详情', '账户信息', '40', '/operation/tenant/detail.html', 'URL', '13', '/operation/tenant/detail.html', '3', '0');
INSERT INTO `resourceb` VALUES ('110', '2016-02-02 16:03:58', null, '租户信息详情', '消费记录', '40', '/operation/tenant/record.html', 'URL', '13', '/operation/tenant/record.html', '3', '0');
INSERT INTO `resourceb` VALUES ('111', '2016-02-02 16:04:51', null, '租户信息详情', '操作记录', '40', '/operation/tenant/log.html', 'URL', '13', '/operation/tenant/log.html', '3', '0');
INSERT INTO `resourceb` VALUES ('112', '2016-02-02 16:06:00', null, '租户信息详情', 'S3密钥管理', '40', '/operation/ceph/getkey.do', 'URL', '13', '/operation/ceph/getkey.do', '3', '1');
INSERT INTO `resourceb` VALUES ('113', '2016-02-02 16:07:09', null, '租户信息详情', 'S3使用情况', '40', '/operation/ceph/getCephUsing.do', 'URL', '13', '/operation/ceph/getCephUsing.do', '3', '1');
INSERT INTO `resourceb` VALUES ('114', '2016-02-03 10:06:39', null, '租户信息_用户信息', '添加用户', '41', '/operation/user/create.html', 'URL', '100', '/operation/user/create.html', '4', '1');
INSERT INTO `resourceb` VALUES ('115', '2016-02-03 10:11:02', null, '租户信息_用户信息', '更新用户', '41', '/operation/user/update.html', 'URL', '100', '/operation/user/update.html', '4', '1');
INSERT INTO `resourceb` VALUES ('116', '2016-02-03 10:11:25', null, '租户信息_用户信息', '删除用户', '41', '/operation/user/del.html', 'URL', '100', '/operation/user/del.html', '4', '1');
INSERT INTO `resourceb` VALUES ('117', '2016-02-03 10:12:31', null, '租户信息_用户信息', '重置用户密码', '41', '/operation/user/resetPassword.html', 'URL', '100', '/operation/user/resetPassword.html', '4', '1');
INSERT INTO `resourceb` VALUES ('118', '2016-02-03 10:14:58', null, '租户信息_租户配额', '修改配额', '41', '/operation/contract/updateOpsQuota.html', 'URL', '101', '/operation/contract/updateOpsQuota.html', '4', '1');
INSERT INTO `resourceb` VALUES ('119', '2016-02-03 11:27:59', null, '租户信息_虚机信息_操作', '关机', '41', '/operation/host/vmshutdown.html', 'URL', '104', '/operation/host/vmshutdown.html', '4', '1');
INSERT INTO `resourceb` VALUES ('120', '2016-02-03 11:30:51', null, '租户信息_虚机信息_操作', '远程桌面', '41', '/operation/host/vmconsole.html', 'URL', '104', '/operation/host/vmconsole.html', '4', '1');
INSERT INTO `resourceb` VALUES ('121', '2016-02-03 11:33:10', null, '租户信息_虚机信息_操作', '软重启', '41', '/operation/server/vmreboot.html', 'URL', '104', '/operation/server/vmreboot.html', '4', '1');
INSERT INTO `resourceb` VALUES ('122', '2016-02-03 11:36:34', null, '租户信息_虚机信息_操作', '硬重启', '41', '/operation/server/vmreboot.html', 'URL', '104', '/operation/server/vmreboot.html', '4', '1');
INSERT INTO `resourceb` VALUES ('123', '2016-02-03 11:40:52', null, '租户信息_虚机信息_操作', '删除', '41', '/operation/host/vmdelete.html', 'URL', '104', '/operation/host/vmdelete.html', '4', '1');
INSERT INTO `resourceb` VALUES ('124', '2016-02-03 13:39:02', null, '合同信息_配额信息', '配额信息', '40', '/operation/contract/listQuota.html', 'URL', '16', '/operation/contract/listQuota.html', '3', '0');
INSERT INTO `resourceb` VALUES ('125', '2016-02-03 13:40:25', null, '合同信息_配额信息', '添加配额', '41', '/operation/contract/createQuota.html', 'URL', '124', '/operation/contract/createQuota.html', '4', '0');
INSERT INTO `resourceb` VALUES ('126', '2016-02-03 13:41:52', null, '合同信息_配额信息', '更新配额', '41', '/operation/contract/updateQuota.html', 'URL', '124', '/operation/contract/updateQuota.html', '4', '0');
INSERT INTO `resourceb` VALUES ('127', '2016-02-03 13:42:29', null, '合同信息_配额信息', '删除配额', '41', '/operation/contract/quotadel.html', 'URL', '124', '/operation/contract/quotadel.html', '4', '0');
INSERT INTO `resourceb` VALUES ('128', '2016-02-03 15:12:19', null, '计算节点列表_主机使用概览', '主机使用概览', '40', '/operation/host/hostOverview.html', 'URL', '21', '/operation/host/hostOverview.html', '3', '1');
INSERT INTO `resourceb` VALUES ('129', '2016-02-03 15:13:48', null, '计算节点列表_虚机信息', '虚机信息', '40', '/operation/host/vmDetail.html', 'URL', '21', '/operation/host/vmDetail.html', '3', '1');
INSERT INTO `resourceb` VALUES ('130', '2016-02-03 15:16:44', null, '计算节点列表_虚机信息_操作', '关机', '41', '/operation/host/vmshutdown.html', 'URL', '129', '/operation/host/vmshutdown.html', '4', '1');
INSERT INTO `resourceb` VALUES ('131', '2016-02-03 15:19:23', null, '计算节点列表_虚机信息_操作', '远程桌面', '41', '/operation/host/vmconsole.html', 'URL', '129', '/operation/host/vmconsole.html', '4', '1');
INSERT INTO `resourceb` VALUES ('132', '2016-02-03 15:29:38', null, '计算节点列表_虚机信息_操作', '软重启', '41', '/operation/server/vmreboot.html', 'URL', '129', '/operation/server/vmreboot.html', '4', '1');
INSERT INTO `resourceb` VALUES ('133', '2016-02-03 15:30:19', null, '计算节点列表_虚机信息_操作', '硬重启', '41', '/operation/server/vmreboot.html', 'URL', '129', '/operation/server/vmreboot.html', '4', '1');
INSERT INTO `resourceb` VALUES ('134', '2016-02-03 15:30:47', null, '计算节点列表_虚机信息_操作', '删除', '41', '/operation/host/vmdelete.html', 'URL', '129', '/operation/host/vmdelete.html', '4', '1');
INSERT INTO `resourceb` VALUES ('135', '2016-02-03 15:32:07', null, '计算节点列表_虚机信息_操作', '热迁移', '41', '/operation/server/vmmigrate.html', 'URL', '129', '/operation/server/vmmigrate.html', '4', '1');
INSERT INTO `resourceb` VALUES ('136', '2016-02-04 10:02:47', null, 'AZ管理_主机信息', '当前可用域主机信息', '40', '', 'URL', '22', '', '3', '1');
INSERT INTO `resourceb` VALUES ('137', '2016-02-04 16:50:46', null, 'AZ管理_主机信息_管理主机', '管理主机', '41', '/operation/host/listfreedata.html', 'URL', '136', '/operation/host/listfreedata.html', '4', '1');
INSERT INTO `resourceb` VALUES ('138', '2016-02-04 16:51:28', null, '虚机管理', '导出Excel', '40', '/operation/usage/vmDatasExcelExport.do', 'URL', '23', '/operation/usage/vmDatasExcelExport.do', '3', '0');
INSERT INTO `resourceb` VALUES ('139', '2016-02-04 16:57:28', null, '云硬盘管理', '导出Excel', '40', '/operation/usage/cinderDatasExcelExport.do', 'URL', '24', '/operation/usage/cinderDatasExcelExport.do', '3', '0');
INSERT INTO `resourceb` VALUES ('140', '2016-02-04 16:59:05', null, '云硬盘_更新状态', '更新状态', '40', '/operation/volume/volumeStatusReset.html', 'URL', '24', '/operation/volume/volumeStatusReset.html', '3', '1');
INSERT INTO `resourceb` VALUES ('141', '2016-02-04 17:02:21', null, '云硬盘_删除', '云硬盘删除', '40', '/operation/volume/delete.html', 'URL', '24', '/operation/volume/delete.html', '3', '1');
INSERT INTO `resourceb` VALUES ('142', '2016-02-04 17:05:38', null, '浮动IP管理_导出', '导出Excel', '40', '/operation/usage/floatingIpExcelExport.do', 'URL', '25', '/operation/usage/floatingIpExcelExport.do', '3', '1');
INSERT INTO `resourceb` VALUES ('143', '2016-02-04 17:07:56', null, '浮动IP管理_删除', '删除', '40', '/operation/neutron/delete.html', 'URL', '25', '/operation/neutron/delete.html', '3', '1');
INSERT INTO `resourceb` VALUES ('144', '2016-02-04 17:11:47', null, '云硬盘_QOS关联类型', 'QOS关联类型', '40', '/operation/qosspec/freetype.html', 'URL', '27', '/operation/qosspec/freetype.html', '3', '1');
INSERT INTO `resourceb` VALUES ('145', '2016-02-04 17:28:28', null, '云硬盘_QOS关联类型_管理QOS关联', '管理QOS关联', '41', '/operation/qosspec/updateAssociation.html', 'URL', '144', '/operation/qosspec/updateAssociation.html', '4', '1');
INSERT INTO `resourceb` VALUES ('146', '2016-02-04 17:32:48', null, 'VM模板_限制信息', '模板限制信息', '40', '/operation/flavor/listFlavorMeta.do', 'URL', '30', '/operation/flavor/listFlavorMeta.do', '3', '1');
INSERT INTO `resourceb` VALUES ('147', '2016-02-14 09:34:37', null, 'VM模板_限制信息_添加限制', '添加限制', '41', '/operation/flavor/updateFlavorMeta.do', 'URL', '146', '/operation/flavor/updateFlavorMeta.do', '4', '1');
INSERT INTO `resourceb` VALUES ('148', '2016-02-14 09:55:05', null, 'VM模板_限制信息_更新限制', '更新限制', '41', '/operation/flavor/updateFlavorMetadataEntry.do', 'URL', '146', '/operation/flavor/updateFlavorMetadataEntry.do', '4', '1');
INSERT INTO `resourceb` VALUES ('149', '2016-02-14 09:55:55', null, 'VM模板_限制信息_删除限制', '删除限制', '41', '/operation/flavor/deleteFlavorMetadata.do', 'URL', '146', '/operation/flavor/deleteFlavorMetadata.do', '4', '1');
INSERT INTO `resourceb` VALUES ('152', '2016-03-09 11:20:29', null, '计算节点列表_操作', '上电', '40', '/operation/host/hostStartUp.do', 'URL', '21', '/operation/host/hostStartUp.do', '3', '1');
INSERT INTO `resourceb` VALUES ('153', '2016-03-09 11:21:19', null, '计算节点列表_操作', '下电', '40', '/operation/host/hostShutDown.do', 'URL', '21', '/operation/host/hostShutDown.do', '3', '1');
INSERT INTO `resourceb` VALUES ('154', '2016-03-09 11:23:32', null, '计算节点列表_操作', '重启', '40', '/operation/host/hostReboot.do', 'URL', '21', '/operation/host/hostReboot.do', '3', '1');
INSERT INTO `resourceb` VALUES ('155', '2016-03-09 17:47:05', null, '计算节点列表_虚机信息_操作', '调整大小', '41', '/operation/host/vmresize.html', 'URL', '129', '/operation/host/vmresize.html', '4', '1');
INSERT INTO `resourceb` VALUES ('156', '2016-03-11 10:16:23', null, '租户信息_虚机信息_操作', '调整大小', '41', '/operation/server/vmresize.html', 'URL', '104', '/operation/server/vmresize.html', '4', '1');
INSERT INTO `resourceb` VALUES ('157', '2016-03-11 14:40:19', null, '云硬盘QOS', '更新云硬盘QOS', '40', '/operation/qosspec/update.html', 'URL', '27', '/operation/qosspec/update.html', '3', '1');
INSERT INTO `resourceb` VALUES ('158', '2016-03-22 15:05:47', null, '租户信息_虚机信息_操作', '热迁移', '41', '/operation/server/vmmigrate.html', 'URL', '104', '/operation/server/vmmigrate.html', '4', '1');
INSERT INTO `resourceb` VALUES ('160', '2016-04-21 11:47:36', null, '租户使用信息', '租户用量', '40', '/WEB-INF/views/operation/web/usagereports.html', 'MENU', '12', '/usagereports.html', '2', '1');
INSERT INTO `resourceb` VALUES ('161', '2016-04-21 14:58:17', null, '租户信息详情', '硬盘类型信息', '40', '/operation/volumeType/getdataById.html', 'URL', '13', '/operation/volumeType/getdataById.html', '3', '1');
INSERT INTO `resourceb` VALUES ('162', '2016-04-21 15:11:15', null, '租户信息_硬盘类型信息', '添加', '41', '/operation/volumeType/associate.html', 'URL', '161', '/operation/volumeType/associate.html', '4', '1');
INSERT INTO `resourceb` VALUES ('163', '2016-04-21 15:17:19', null, '租户信息_硬盘类型信息', '更新', '41', '/operation/volumeType/updateTenantVolumeType.html', 'URL', '161', '/operation/volumeType/updateTenantVolumeType.html', '4', '1');
INSERT INTO `resourceb` VALUES ('164', '2016-04-21 15:17:43', null, '租户信息_硬盘类型信息', '删除', '41', '/operation/volumeType/deleteTenantVolumeType.html', 'URL', '161', '/operation/volumeType/deleteTenantVolumeType.html', '4', '1');
INSERT INTO `resourceb` VALUES ('165', '2016-04-21 17:06:00', null, '合同信息生效按钮', '合同信息生效', '40', '/operation/contract/enforce.html', 'URL', '16', '/operation/contract/enforce.html', '3', '0');
INSERT INTO `resourceb` VALUES ('166', '2016-04-21 17:07:42', null, '合同信息续约按钮', '合同信息续约', '40', '/operation/contract/renew.html', 'URL', '16', '/operation/contract/renew.html', '3', '0');
INSERT INTO `resourceb` VALUES ('167', '2016-06-27 14:33:32', null, '合同提醒', '合同提醒', '39', null, 'MENU', '0', null, '1', '0');
INSERT INTO `resourceb` VALUES ('168', '2016-06-27 14:33:40', null, '租户合同提醒', '租户合同提醒', '40', 'INF/views/operation/contracts/noticeTenantEmail.jsp', 'MENU', '167', '/noticeTenantEmail.html', '2', '0');
INSERT INTO `resourceb` VALUES ('169', '2016-06-28 11:28:23', null, '合同提醒创建按钮', '合同提醒创建', '40', '/operation/noticeTenantEmail/create.html', 'URL', '168', '/operation/noticeTenantEmail/create.html', '3', '0');
INSERT INTO `resourceb` VALUES ('170', '2016-06-28 11:36:28', null, '合同提醒更新按钮', '合同提醒更新', '40', '/operation/noticeTenantEmail/update.html', 'URL', '168', '/operation/noticeAdminEmail/update.html', null, '0');
INSERT INTO `resourceb` VALUES ('171', '2016-06-28 11:36:57', null, '合同提醒删除按钮', '合同提醒删除', '40', '/operation/noticeTenantEmail/delete.html', 'URL', '168', '/operation/noticeTenantEmail/delete.html', null, '0');
INSERT INTO `resourceb` VALUES ('172', '2016-07-18 10:02:44', null, '工单管理', '工单管理', '39', '/WEB-INF/views/operation/ceph/workOrder.html', 'MENU', '0', '/workOrder.html', '2', '1');
INSERT INTO `resourceb` VALUES ('173', '2016-07-19 10:44:06', null, '租户信息详情', '云主机类型信息', '40', '/operation/flavorType/getdataById.html', 'URL', '13', '/operation/flavorType/getdataById.html', '3', '0');
INSERT INTO `resourceb` VALUES ('177', '2016-11-26 13:04:58', null, '路由管理', '路由管理', '39', '/operation/web/router.html', 'MENU', '18', '/operation/web/router.html', '3', '1');
INSERT INTO `resourceb` VALUES ('178', '2016-11-26 13:12:31', null, '服务信息目录', '服务信息目录', '39', '/operation/web/servicescatalog.html', 'MENU', '18', '/operation/web/servicescatalog.html', '3', '1');
INSERT INTO `resourceb` VALUES ('179', '2016-11-26 13:22:08', null, '更新路由', '更新路由', '40', '/operation/router/update.html', 'URL', '177', '/operation/router/update.html', '4', null);
INSERT INTO `resourceb` VALUES ('180', '2016-11-26 13:22:39', null, '删除路由', '删除路由', '40', '/operation/router/delete.html', 'URL', '177', '/operation/router/delete.html', '4', null);
INSERT INTO `resourceb` VALUES ('188', '2017-04-10 09:42:31', null, '应用管理', '应用管理', '39', '/WEB-INF/views/operation/resources/applicationmanager.jsp', 'MENU', '18', '/applicationmanager.html', '2', '1');

-- ----------------------------
-- Records of service_catalog
-- ----------------------------
INSERT INTO `service_catalog` VALUES ('1', '2015-09-01 00:00:00', null, 'http://{{groups['portal'][0]}}:8801/ncloud', 'base', 'base');

-- ----------------------------
-- Records of rolea
-- ----------------------------
INSERT INTO `rolea` VALUES ('1', '2014-02-28 00:37:33', '2016-07-19 02:53:15', '系统管理员', 'ROLE_ADMIN', '1', '系统管理员');
INSERT INTO `rolea` VALUES ('4', '2014-02-28 11:27:23', null, '匿名用户', 'Anonymous', '0', '匿名用户');
INSERT INTO `rolea` VALUES ('6', '2014-02-28 11:29:53', '2016-01-28 06:07:24', '历史Cookie用户', 'RememberMe', '0', '历史Cookie用户');
INSERT INTO `rolea` VALUES ('7', '2014-02-28 11:45:04', null, '所有访问', 'PermitAll', '0', '所有访问');
INSERT INTO `rolea` VALUES ('8', '2014-02-28 18:39:39', null, '超级用户', 'ROLE_SUPORUSER', '0', '超级用户');

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES ('1', '2014-02-28 17:43:12', '2017-02-28 08:17:27', '超级用户', '超级用户', '1', '1');

-- ----------------------------
-- Records of role_resource_mapping
-- ----------------------------
INSERT INTO `role_resource_mapping` VALUES ('1', '2011-01-28 00:36:39', null, '3', '4');
INSERT INTO `role_resource_mapping` VALUES ('2', '2016-01-28 06:07:24', null, '0', '6');
INSERT INTO `role_resource_mapping` VALUES ('3', '2016-01-28 06:07:24', null, '5', '6');
INSERT INTO `role_resource_mapping` VALUES ('4', '2016-01-28 06:07:24', null, '6', '6');
INSERT INTO `role_resource_mapping` VALUES ('5', '2016-07-19 02:53:15', null, '7', '1');
INSERT INTO `role_resource_mapping` VALUES ('6', '2016-07-19 02:53:15', null, '8', '1');
INSERT INTO `role_resource_mapping` VALUES ('7', '2016-07-19 02:53:15', null, '44', '1');
INSERT INTO `role_resource_mapping` VALUES ('8', '2016-07-19 02:53:15', null, '45', '1');
INSERT INTO `role_resource_mapping` VALUES ('9', '2016-07-19 02:53:15', null, '46', '1');
INSERT INTO `role_resource_mapping` VALUES ('10', '2016-07-19 02:53:15', null, '9', '1');
INSERT INTO `role_resource_mapping` VALUES ('11', '2016-07-19 02:53:15', null, '47', '1');
INSERT INTO `role_resource_mapping` VALUES ('12', '2016-07-19 02:53:15', null, '48', '1');
INSERT INTO `role_resource_mapping` VALUES ('13', '2016-07-19 02:53:15', null, '49', '1');
INSERT INTO `role_resource_mapping` VALUES ('14', '2016-07-19 02:53:15', null, '10', '1');
INSERT INTO `role_resource_mapping` VALUES ('15', '2016-07-19 02:53:15', null, '41', '1');
INSERT INTO `role_resource_mapping` VALUES ('16', '2016-07-19 02:53:15', null, '42', '1');
INSERT INTO `role_resource_mapping` VALUES ('17', '2016-07-19 02:53:15', null, '43', '1');
INSERT INTO `role_resource_mapping` VALUES ('18', '2016-07-19 02:53:15', null, '11', '1');
INSERT INTO `role_resource_mapping` VALUES ('19', '2016-07-19 02:53:15', null, '50', '1');
INSERT INTO `role_resource_mapping` VALUES ('20', '2016-07-19 02:53:15', null, '51', '1');
INSERT INTO `role_resource_mapping` VALUES ('21', '2016-07-19 02:53:15', null, '52', '1');
INSERT INTO `role_resource_mapping` VALUES ('22', '2016-07-19 02:53:15', null, '12', '1');
INSERT INTO `role_resource_mapping` VALUES ('23', '2016-07-19 02:53:15', null, '13', '1');
INSERT INTO `role_resource_mapping` VALUES ('24', '2016-07-19 02:53:15', null, '53', '1');
INSERT INTO `role_resource_mapping` VALUES ('25', '2016-07-19 02:53:15', null, '54', '1');
INSERT INTO `role_resource_mapping` VALUES ('26', '2016-07-19 02:53:15', null, '55', '1');
INSERT INTO `role_resource_mapping` VALUES ('27', '2016-07-19 02:53:15', null, '98', '1');
INSERT INTO `role_resource_mapping` VALUES ('28', '2016-07-19 02:53:15', null, '99', '1');
INSERT INTO `role_resource_mapping` VALUES ('29', '2016-07-19 02:53:15', null, '100', '1');
INSERT INTO `role_resource_mapping` VALUES ('30', '2016-07-19 02:53:15', null, '114', '1');
INSERT INTO `role_resource_mapping` VALUES ('31', '2016-07-19 02:53:15', null, '115', '1');
INSERT INTO `role_resource_mapping` VALUES ('32', '2016-07-19 02:53:15', null, '116', '1');
INSERT INTO `role_resource_mapping` VALUES ('33', '2016-07-19 02:53:15', null, '117', '1');
INSERT INTO `role_resource_mapping` VALUES ('34', '2016-07-19 02:53:15', null, '101', '1');
INSERT INTO `role_resource_mapping` VALUES ('35', '2016-07-19 02:53:15', null, '118', '1');
INSERT INTO `role_resource_mapping` VALUES ('36', '2016-07-19 02:53:15', null, '102', '1');
INSERT INTO `role_resource_mapping` VALUES ('37', '2016-07-19 02:53:15', null, '103', '1');
INSERT INTO `role_resource_mapping` VALUES ('38', '2016-07-19 02:53:15', null, '104', '1');
INSERT INTO `role_resource_mapping` VALUES ('39', '2016-07-19 02:53:15', null, '119', '1');
INSERT INTO `role_resource_mapping` VALUES ('40', '2016-07-19 02:53:15', null, '120', '1');
INSERT INTO `role_resource_mapping` VALUES ('41', '2016-07-19 02:53:15', null, '121', '1');
INSERT INTO `role_resource_mapping` VALUES ('42', '2016-07-19 02:53:15', null, '122', '1');
INSERT INTO `role_resource_mapping` VALUES ('43', '2016-07-19 02:53:15', null, '123', '1');
INSERT INTO `role_resource_mapping` VALUES ('44', '2016-07-19 02:53:15', null, '156', '1');
INSERT INTO `role_resource_mapping` VALUES ('45', '2016-07-19 02:53:15', null, '158', '1');
INSERT INTO `role_resource_mapping` VALUES ('46', '2016-07-19 02:53:15', null, '105', '1');
INSERT INTO `role_resource_mapping` VALUES ('47', '2016-07-19 02:53:15', null, '106', '1');
INSERT INTO `role_resource_mapping` VALUES ('48', '2016-07-19 02:53:15', null, '107', '1');
INSERT INTO `role_resource_mapping` VALUES ('49', '2016-07-19 02:53:15', null, '108', '1');
INSERT INTO `role_resource_mapping` VALUES ('50', '2016-07-19 02:53:15', null, '109', '1');
INSERT INTO `role_resource_mapping` VALUES ('51', '2016-07-19 02:53:15', null, '110', '1');
INSERT INTO `role_resource_mapping` VALUES ('52', '2016-07-19 02:53:15', null, '111', '1');
INSERT INTO `role_resource_mapping` VALUES ('53', '2016-07-19 02:53:15', null, '112', '1');
INSERT INTO `role_resource_mapping` VALUES ('54', '2016-07-19 02:53:15', null, '113', '1');
INSERT INTO `role_resource_mapping` VALUES ('55', '2016-07-19 02:53:15', null, '161', '1');
INSERT INTO `role_resource_mapping` VALUES ('56', '2016-07-19 02:53:15', null, '162', '1');
INSERT INTO `role_resource_mapping` VALUES ('57', '2016-07-19 02:53:15', null, '163', '1');
INSERT INTO `role_resource_mapping` VALUES ('58', '2016-07-19 02:53:15', null, '164', '1');
INSERT INTO `role_resource_mapping` VALUES ('59', '2016-07-19 02:53:15', null, '173', '1');
INSERT INTO `role_resource_mapping` VALUES ('60', '2016-07-19 02:53:15', null, '57', '1');
INSERT INTO `role_resource_mapping` VALUES ('61', '2016-07-19 02:53:15', null, '58', '1');
INSERT INTO `role_resource_mapping` VALUES ('62', '2016-07-19 02:53:15', null, '15', '1');
INSERT INTO `role_resource_mapping` VALUES ('63', '2016-07-19 02:53:15', null, '59', '1');
INSERT INTO `role_resource_mapping` VALUES ('64', '2016-07-19 02:53:15', null, '60', '1');
INSERT INTO `role_resource_mapping` VALUES ('65', '2016-07-19 02:53:15', null, '61', '1');
INSERT INTO `role_resource_mapping` VALUES ('66', '2016-07-19 02:53:15', null, '16', '1');
INSERT INTO `role_resource_mapping` VALUES ('67', '2016-07-19 02:53:15', null, '62', '1');
INSERT INTO `role_resource_mapping` VALUES ('68', '2016-07-19 02:53:15', null, '63', '1');
INSERT INTO `role_resource_mapping` VALUES ('69', '2016-07-19 02:53:15', null, '64', '1');
INSERT INTO `role_resource_mapping` VALUES ('70', '2016-07-19 02:53:15', null, '124', '1');
INSERT INTO `role_resource_mapping` VALUES ('71', '2016-07-19 02:53:15', null, '125', '1');
INSERT INTO `role_resource_mapping` VALUES ('72', '2016-07-19 02:53:15', null, '126', '1');
INSERT INTO `role_resource_mapping` VALUES ('73', '2016-07-19 02:53:15', null, '127', '1');
INSERT INTO `role_resource_mapping` VALUES ('74', '2016-07-19 02:53:15', null, '165', '1');
INSERT INTO `role_resource_mapping` VALUES ('75', '2016-07-19 02:53:15', null, '166', '1');
INSERT INTO `role_resource_mapping` VALUES ('76', '2016-07-19 02:53:15', null, '160', '1');
INSERT INTO `role_resource_mapping` VALUES ('77', '2016-07-19 02:53:15', null, '18', '1');
INSERT INTO `role_resource_mapping` VALUES ('78', '2016-07-19 02:53:15', null, '19', '1');
INSERT INTO `role_resource_mapping` VALUES ('79', '2016-07-19 02:53:15', null, '68', '1');
INSERT INTO `role_resource_mapping` VALUES ('80', '2016-07-19 02:53:15', null, '69', '1');
INSERT INTO `role_resource_mapping` VALUES ('81', '2016-07-19 02:53:15', null, '70', '1');
INSERT INTO `role_resource_mapping` VALUES ('82', '2016-07-19 02:53:15', null, '20', '1');
INSERT INTO `role_resource_mapping` VALUES ('83', '2016-07-19 02:53:15', null, '71', '1');
INSERT INTO `role_resource_mapping` VALUES ('84', '2016-07-19 02:53:15', null, '72', '1');
INSERT INTO `role_resource_mapping` VALUES ('85', '2016-07-19 02:53:15', null, '73', '1');
INSERT INTO `role_resource_mapping` VALUES ('86', '2016-07-19 02:53:15', null, '21', '1');
INSERT INTO `role_resource_mapping` VALUES ('87', '2016-07-19 02:53:15', null, '74', '1');
INSERT INTO `role_resource_mapping` VALUES ('88', '2016-07-19 02:53:15', null, '75', '1');
INSERT INTO `role_resource_mapping` VALUES ('89', '2016-07-19 02:53:15', null, '128', '1');
INSERT INTO `role_resource_mapping` VALUES ('90', '2016-07-19 02:53:15', null, '129', '1');
INSERT INTO `role_resource_mapping` VALUES ('91', '2016-07-19 02:53:15', null, '130', '1');
INSERT INTO `role_resource_mapping` VALUES ('92', '2016-07-19 02:53:15', null, '131', '1');
INSERT INTO `role_resource_mapping` VALUES ('93', '2016-07-19 02:53:15', null, '132', '1');
INSERT INTO `role_resource_mapping` VALUES ('94', '2016-07-19 02:53:15', null, '133', '1');
INSERT INTO `role_resource_mapping` VALUES ('95', '2016-07-19 02:53:15', null, '134', '1');
INSERT INTO `role_resource_mapping` VALUES ('96', '2016-07-19 02:53:15', null, '135', '1');
INSERT INTO `role_resource_mapping` VALUES ('97', '2016-07-19 02:53:15', null, '155', '1');
INSERT INTO `role_resource_mapping` VALUES ('98', '2016-07-19 02:53:15', null, '152', '1');
INSERT INTO `role_resource_mapping` VALUES ('99', '2016-07-19 02:53:15', null, '153', '1');
INSERT INTO `role_resource_mapping` VALUES ('100', '2016-07-19 02:53:15', null, '154', '1');
INSERT INTO `role_resource_mapping` VALUES ('101', '2016-07-19 02:53:15', null, '22', '1');
INSERT INTO `role_resource_mapping` VALUES ('102', '2016-07-19 02:53:15', null, '76', '1');
INSERT INTO `role_resource_mapping` VALUES ('103', '2016-07-19 02:53:15', null, '77', '1');
INSERT INTO `role_resource_mapping` VALUES ('104', '2016-07-19 02:53:15', null, '78', '1');
INSERT INTO `role_resource_mapping` VALUES ('105', '2016-07-19 02:53:15', null, '136', '1');
INSERT INTO `role_resource_mapping` VALUES ('106', '2016-07-19 02:53:15', null, '137', '1');
INSERT INTO `role_resource_mapping` VALUES ('107', '2016-07-19 02:53:15', null, '23', '1');
INSERT INTO `role_resource_mapping` VALUES ('108', '2016-07-19 02:53:15', null, '138', '1');
INSERT INTO `role_resource_mapping` VALUES ('109', '2016-07-19 02:53:15', null, '24', '1');
INSERT INTO `role_resource_mapping` VALUES ('110', '2016-07-19 02:53:15', null, '139', '1');
INSERT INTO `role_resource_mapping` VALUES ('111', '2016-07-19 02:53:15', null, '140', '1');
INSERT INTO `role_resource_mapping` VALUES ('112', '2016-07-19 02:53:15', null, '141', '1');
INSERT INTO `role_resource_mapping` VALUES ('113', '2016-07-19 02:53:15', null, '25', '1');
INSERT INTO `role_resource_mapping` VALUES ('114', '2016-07-19 02:53:15', null, '142', '1');
INSERT INTO `role_resource_mapping` VALUES ('115', '2016-07-19 02:53:15', null, '143', '1');
INSERT INTO `role_resource_mapping` VALUES ('116', '2016-07-19 02:53:15', null, '26', '1');
INSERT INTO `role_resource_mapping` VALUES ('117', '2016-07-19 02:53:15', null, '79', '1');
INSERT INTO `role_resource_mapping` VALUES ('118', '2016-07-19 02:53:15', null, '80', '1');
INSERT INTO `role_resource_mapping` VALUES ('119', '2016-07-19 02:53:15', null, '81', '1');
INSERT INTO `role_resource_mapping` VALUES ('120', '2016-07-19 02:53:15', null, '27', '1');
INSERT INTO `role_resource_mapping` VALUES ('121', '2016-07-19 02:53:15', null, '82', '1');
INSERT INTO `role_resource_mapping` VALUES ('122', '2016-07-19 02:53:15', null, '83', '1');
INSERT INTO `role_resource_mapping` VALUES ('123', '2016-07-19 02:53:15', null, '144', '1');
INSERT INTO `role_resource_mapping` VALUES ('124', '2016-07-19 02:53:15', null, '145', '1');
INSERT INTO `role_resource_mapping` VALUES ('125', '2016-07-19 02:53:15', null, '157', '1');
INSERT INTO `role_resource_mapping` VALUES ('126', '2016-07-19 02:53:15', null, '28', '1');
INSERT INTO `role_resource_mapping` VALUES ('127', '2016-07-19 02:53:15', null, '84', '1');
INSERT INTO `role_resource_mapping` VALUES ('128', '2016-07-19 02:53:15', null, '29', '1');
INSERT INTO `role_resource_mapping` VALUES ('129', '2016-07-19 02:53:15', null, '30', '1');
INSERT INTO `role_resource_mapping` VALUES ('130', '2016-07-19 02:53:15', null, '85', '1');
INSERT INTO `role_resource_mapping` VALUES ('131', '2016-07-19 02:53:15', null, '86', '1');
INSERT INTO `role_resource_mapping` VALUES ('132', '2016-07-19 02:53:15', null, '87', '1');
INSERT INTO `role_resource_mapping` VALUES ('133', '2016-07-19 02:53:15', null, '146', '1');
INSERT INTO `role_resource_mapping` VALUES ('134', '2016-07-19 02:53:15', null, '147', '1');
INSERT INTO `role_resource_mapping` VALUES ('135', '2016-07-19 02:53:15', null, '148', '1');
INSERT INTO `role_resource_mapping` VALUES ('136', '2016-07-19 02:53:15', null, '149', '1');
INSERT INTO `role_resource_mapping` VALUES ('137', '2016-07-19 02:53:15', null, '31', '1');
INSERT INTO `role_resource_mapping` VALUES ('138', '2016-07-19 02:53:15', null, '88', '1');
INSERT INTO `role_resource_mapping` VALUES ('139', '2016-07-19 02:53:15', null, '89', '1');
INSERT INTO `role_resource_mapping` VALUES ('140', '2016-07-19 02:53:15', null, '90', '1');
INSERT INTO `role_resource_mapping` VALUES ('141', '2016-07-19 02:53:15', null, '32', '1');
INSERT INTO `role_resource_mapping` VALUES ('142', '2016-07-19 02:53:15', null, '91', '1');
INSERT INTO `role_resource_mapping` VALUES ('143', '2016-07-19 02:53:15', null, '33', '1');
INSERT INTO `role_resource_mapping` VALUES ('144', '2016-07-19 02:53:15', null, '92', '1');
INSERT INTO `role_resource_mapping` VALUES ('145', '2016-07-19 02:53:15', null, '34', '1');
INSERT INTO `role_resource_mapping` VALUES ('146', '2016-07-19 02:53:15', null, '35', '1');
INSERT INTO `role_resource_mapping` VALUES ('147', '2016-07-19 02:53:15', null, '93', '1');
INSERT INTO `role_resource_mapping` VALUES ('148', '2016-07-19 02:53:15', null, '94', '1');
INSERT INTO `role_resource_mapping` VALUES ('149', '2016-07-19 02:53:15', null, '95', '1');
INSERT INTO `role_resource_mapping` VALUES ('150', '2016-07-19 02:53:15', null, '36', '1');
INSERT INTO `role_resource_mapping` VALUES ('151', '2016-07-19 02:53:15', null, '96', '1');
INSERT INTO `role_resource_mapping` VALUES ('152', '2016-07-19 02:53:15', null, '37', '1');
INSERT INTO `role_resource_mapping` VALUES ('153', '2016-07-19 02:53:15', null, '38', '1');
INSERT INTO `role_resource_mapping` VALUES ('154', '2016-07-19 02:53:15', null, '39', '1');
INSERT INTO `role_resource_mapping` VALUES ('155', '2016-07-19 02:53:15', null, '40', '1');
INSERT INTO `role_resource_mapping` VALUES ('156', '2016-07-19 02:53:15', null, '167', '1');
INSERT INTO `role_resource_mapping` VALUES ('157', '2016-07-19 02:53:15', null, '17', '1');
INSERT INTO `role_resource_mapping` VALUES ('158', '2016-07-19 02:53:15', null, '65', '1');
INSERT INTO `role_resource_mapping` VALUES ('159', '2016-07-19 02:53:15', null, '66', '1');
INSERT INTO `role_resource_mapping` VALUES ('160', '2016-07-19 02:53:15', null, '67', '1');
INSERT INTO `role_resource_mapping` VALUES ('161', '2016-07-19 02:53:15', null, '168', '1');
INSERT INTO `role_resource_mapping` VALUES ('162', '2016-07-19 02:53:15', null, '169', '1');
INSERT INTO `role_resource_mapping` VALUES ('163', '2016-07-19 02:53:15', null, '170', '1');
INSERT INTO `role_resource_mapping` VALUES ('164', '2016-07-19 02:53:15', null, '171', '1');
INSERT INTO `role_resource_mapping` VALUES ('165', '2016-07-19 02:53:15', null, '172', '1');
INSERT INTO `role_resource_mapping` VALUES ('166', '2016-08-10 15:40:09', null, '8', '1');
INSERT INTO `role_resource_mapping` VALUES ('167', '2016-08-10 15:40:19', null, '9', '1');
INSERT INTO `role_resource_mapping` VALUES ('168', '2016-08-10 15:40:25', null, '10', '1');
INSERT INTO `role_resource_mapping` VALUES ('169', '2016-07-19 02:53:15', null, '177', '1');
INSERT INTO `role_resource_mapping` VALUES ('170', '2016-07-19 02:53:15', null, '178', '1');
INSERT INTO `role_resource_mapping` VALUES ('171', '2017-04-10 03:47:22', null, '188', '1');


-- ----------------------------
-- Records of group_role_mapping
-- ----------------------------
INSERT INTO `group_role_mapping` VALUES ('1', '2017-02-28 08:17:27', null, '1', '1');

-- ----------------------------
-- Records of user_group_mapping
-- ----------------------------
INSERT INTO `user_group_mapping` VALUES ('1', '2016-08-30 06:54:17', null, '1', '21');

-- ----------------------------
-- Records of userb
-- ----------------------------
INSERT INTO `userb` VALUES ('21', '2014-12-29 00:00:00', '2016-08-30 06:54:17', null, null, 'cloud1.neunn.com', null, md5('{{ openstack_auth.password }}'), null, '1', '1', 'admin', '666666', '1', null, null, '0', '0');
