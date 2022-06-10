
#
# Structure for table "yc_allhistory"
#

DROP TABLE IF EXISTS `yc_allhistory`;
CREATE TABLE `yc_allhistory` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `history_desce` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'Operation',
  `user_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Operated By',
  `oper_date` datetime DEFAULT NULL COMMENT 'Time',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ALL History';

#
# Structure for table "yc_history"
#

DROP TABLE IF EXISTS `yc_history`;
CREATE TABLE `yc_history` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `msort` decimal(10,0) NOT NULL COMMENT 'SortID',
  `history_desce` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'Operation',
  `user_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Operated By',
  `oper_date` datetime DEFAULT NULL COMMENT 'Time',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='History';

#
# Structure for table "yc_milestone"
#

DROP TABLE IF EXISTS `yc_milestone`;
CREATE TABLE `yc_milestone` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'MilestoneID',
  `site_id` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'SiteID',
  `milestone_sort` decimal(10,0) NOT NULL COMMENT 'SortID',
  `milestone_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'Milestone Name',
  `milestone_progress` decimal(10,0) NOT NULL COMMENT 'Milestone Progress',
  `vendor` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'SPO Vendor',
  `pstatus` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Status',
  `weight` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Weight(%)',
  `baseline_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Baseline Date',
  `forecast_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Forecast Date',
  `actual_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Actual Date',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`),
  KEY `i_yc_milestone_1` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='里程碑数据';

#
# Structure for table "yc_milestone_task"
#

DROP TABLE IF EXISTS `yc_milestone_task`;
CREATE TABLE `yc_milestone_task` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'TaskID',
  `milestone_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'MilestoneID',
  `site_id` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'SiteID',
  `task_sort` decimal(10,0) NOT NULL COMMENT 'SortID',
  `task_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'Task Name',
  `pstatus` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Status',
  `weight` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Weight(%)',
  `modified` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Modified By',
  `performing` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Performing',
  `baseline_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Baseline Date',
  `forecast_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Forecast Date',
  `actual_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Actual Date',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`),
  KEY `i_yc_milestone_task_1` (`milestone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='里程碑数据子表';

#
# Structure for table "yc_prject"
#

DROP TABLE IF EXISTS `yc_prject`;
CREATE TABLE `yc_prject` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '唯一编号',
  `project_id` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'Reference ID',
  `country` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'Country',
  `projname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Project',
  `market` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Market',
  `customer` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Customer',
  `status` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用 3冻结）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='工程表';

#
# Structure for table "yc_reportw"
#

DROP TABLE IF EXISTS `yc_reportw`;
CREATE TABLE `yc_reportw` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `sta_day` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'DAY',
  `sarfissued` decimal(10,0) DEFAULT NULL COMMENT 'SARF Issued',
  `surveydone` decimal(11,0) DEFAULT NULL COMMENT 'Survey Done',
  `sarsubmitted` decimal(12,0) DEFAULT NULL COMMENT 'SAR Submitted',
  `sarapproved` decimal(13,0) DEFAULT NULL COMMENT 'SAR Approved',
  `mocsubmitted` decimal(14,0) DEFAULT NULL COMMENT 'MOC Submitted',
  `mocapproved` decimal(15,0) DEFAULT NULL COMMENT 'MOC Approved',
  `nrafsubmitted` decimal(16,0) DEFAULT NULL COMMENT 'NRAF Submitted',
  `nrafapproved` decimal(17,0) DEFAULT NULL COMMENT 'NRAF Approved',
  `brgyapplied` decimal(18,0) DEFAULT NULL COMMENT 'BRGY Applied',
  `brgysecured` decimal(19,0) DEFAULT NULL COMMENT 'BRGY Secured',
  `sbtsidone` decimal(20,0) DEFAULT NULL COMMENT 'SBT/SI Done',
  `tssrsubmitted` decimal(21,0) DEFAULT NULL COMMENT 'TSSR Submitted',
  `dddapproved` decimal(22,0) DEFAULT NULL COMMENT 'DDD Approved',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='日报表';

#
# Structure for table "yc_site"
#

DROP TABLE IF EXISTS `yc_site`;
CREATE TABLE `yc_site` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '唯一编号',
  `site_id` varchar(100) COLLATE utf8_bin NOT NULL,
  `province` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cluster` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `vendor` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ponumber` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `pobatch` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `status` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用 3冻结）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='基站表';

#
# Structure for table "yc_sitesaq"
#

DROP TABLE IF EXISTS `yc_sitesaq`;
CREATE TABLE `yc_sitesaq` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'ID',
  `site_id` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'SiteID',
  `province` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `milestone_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'Milestone Name',
  `milestone_progress` decimal(10,0) NOT NULL COMMENT 'Milestone Progress',
  `task_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'Task Name',
  `task_progress` decimal(10,0) NOT NULL COMMENT 'Task Progress',
  `baseline_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Baseline Date',
  `forecast_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Forecast Date',
  `actual_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Actual Date',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SiteSAQ';
