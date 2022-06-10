--
-- FLB目录表
-- 
DROP TABLE IF EXISTS yc_flb_dir;
CREATE TABLE yc_flb_dir (
  dir_code		VARCHAR(64)		NOT NULL COMMENT '目录编码 10001',
  parent_code	VARCHAR(64)		NOT NULL COMMENT '父级编号',
  parent_codes	VARCHAR(1000)	NOT NULL COMMENT '所有父级编号',
  tree_sort		DECIMAL(10,0)	NOT NULL COMMENT '本级排序号（升序）',
  tree_sorts	VARCHAR(1000)	NOT NULL COMMENT '所有级别排序号',
  tree_leaf		CHAR(1)			NOT NULL COMMENT '是否最末级',
  tree_level	DECIMAL(4,0)	NOT NULL COMMENT '层次级别',
  tree_names	VARCHAR(1000)	NOT NULL COMMENT '全节点名',
  dir_name		VARCHAR(100)	NOT NULL COMMENT '名称',
  flow_code		VARCHAR(64)		NOT NULL COMMENT '流程编号',
  status		CHAR(1)			NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  create_by		VARCHAR(64)		NOT NULL COMMENT '创建者',
  create_date	DATETIME		NOT NULL COMMENT '创建时间',
  update_by		VARCHAR(64)		NOT NULL COMMENT '更新者',
  update_date	DATETIME		NOT NULL COMMENT '更新时间',
  remarks		VARCHAR(500)	DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (dir_code),
  KEY idx_flb_dir_pc (parent_code),
  KEY idx_flb_dir_ts (tree_sort),
  KEY idx_flb_dir_status (status)
) COMMENT='FLB目录表';


--
-- FLB父流程定义表
-- 
DROP TABLE IF EXISTS yc_flb_fflow;
CREATE TABLE yc_flb_fflow (
	id				VARCHAR(64)		NOT NULL COMMENT 'ID F1000',
	flow_name		VARCHAR(100)	NOT NULL COMMENT '流程简称',
	flow_desc		VARCHAR(100)	NOT NULL COMMENT '流程说明',
	status			CHAR(1)			NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
	create_by		VARCHAR(64)		NOT NULL COMMENT '创建者',
	create_date		DATETIME		NOT NULL COMMENT '创建时间',
	update_by		VARCHAR(64)		NOT NULL COMMENT '更新者',
	update_date		DATETIME		NOT NULL COMMENT '更新时间',
	remarks			VARCHAR(500)	DEFAULT NULL COMMENT '备注信息',
	PRIMARY KEY (id)
) COMMENT='FLB父流程定义表';



--
-- FLB子流程定义表
-- 
DROP TABLE IF EXISTS yc_flb_flow;
CREATE TABLE yc_flb_flow (
	id				VARCHAR(64)		NOT NULL COMMENT 'ID,流程步骤编号 F10001000',
	flow_code		VARCHAR(64)		NOT NULL COMMENT '流程编号 F1000',
	flow_name		VARCHAR(100)	NOT NULL COMMENT '流程简称',
	flow_desc		VARCHAR(100)	NOT NULL COMMENT '流程说明',
	flow_type		CHAR(1)			NOT NULL COMMENT '流程类型(1-顺序，2-审核，3-通知)',
	location		CHAR(1)			NOT NULL COMMENT '流程位置(1-发起流程，2-中间流程，9-结束流程)',
	next_flow_id	VARCHAR(64)			NULL COMMENT '下一个流程步骤编号',
	prev_flow_id	VARCHAR(64)			NULL COMMENT '返回的流程步骤编号',
	is_upload		CHAR(1)			NOT NULL COMMENT '是否上传文档(0-No documents 1-Documents Uploading)',
	comments_type	CHAR(1)			NOT NULL COMMENT '备注类型(0-no 1-text 2-uedit)',
	role_code		VARCHAR(64)		NOT NULL COMMENT '角色编号',
	mail_role_code	VARCHAR(64)			NULL COMMENT '邮件角色编号',
	approve_type	CHAR(1)			NOT NULL COMMENT '核查类型(1-And 2-Or)',
	mail_suject		VARCHAR(500)		NULL COMMENT '邮件标题格式',
	mail_content	VARCHAR(500)		NULL COMMENT '邮件内容格式',
	status			CHAR(1)			NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
	create_by		VARCHAR(64)		NOT NULL COMMENT '创建者',
	create_date		DATETIME		NOT NULL COMMENT '创建时间',
	update_by		VARCHAR(64)		NOT NULL COMMENT '更新者',
	update_date		DATETIME		NOT NULL COMMENT '更新时间',
	remarks			VARCHAR(500)	DEFAULT NULL COMMENT '备注信息',
	PRIMARY KEY (id)
) COMMENT='FLB子流程定义表';


--
-- FLB业务流程表
-- 
DROP TABLE IF EXISTS yc_flb_bizflow;
CREATE TABLE yc_flb_bizflow
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID(FBZ100001)',
	site_id				VARCHAR(64)		NOT NULL	COMMENT 'SiteId',
	dir_code			VARCHAR(64)		NOT NULL	COMMENT '目录编号',
	flow_code			VARCHAR(64)		NOT NULL	COMMENT '流程编号(一旦建立就不能变更)',
	docu_names			VARCHAR(1024)		NULL	COMMENT '文档名称，逗号隔开',
	docu_sizes			VARCHAR(512)		NULL	COMMENT '文档大小，逗号隔开',
	upload_users		VARCHAR(512)		NULL	COMMENT '文档上传用户，逗号隔开',
	upload_dates		VARCHAR(512)		NULL	COMMENT '文档上传时间，逗号隔开',
	last_flow_id		VARCHAR(64)			NULL	COMMENT '最近一次流程编号',
	last_flow_result	VARCHAR(64)			NULL	COMMENT '最近一次流程操作结果(1已完成且已通过2已完成且未通过10未完成进行中)',
	restart				CHAR(1)				NULL	COMMENT '重启标志（0正常 1重启 2重启完成 3重启...）',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'Remarks',
	PRIMARY KEY (id)
) COMMENT = 'FLB业务流程表';

CREATE INDEX i_yc_flb_bizflow_1 ON yc_flb_bizflow (site_id);
CREATE INDEX i_yc_flb_bizflow_2 ON yc_flb_bizflow (dir_code);

--
-- FLB流程操作记录表
-- 
DROP TABLE IF EXISTS yc_flb_flow_opera;
CREATE TABLE yc_flb_flow_opera
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	biz_key				VARCHAR(64)		NOT NULL	COMMENT '对应目录编号 dir_code',
	bizflow_id			VARCHAR(64)		NOT NULL	COMMENT '业务流程编号 yc_flb_bizflow.id',
	flow_id				VARCHAR(64)		NOT NULL	COMMENT '流程子步骤编号 yc_flb_flow.id',
	flow_result			CHAR(1)				NULL	COMMENT '流程操作结果：(1-Success 2-Fail 3-Accepted 4-Rejected)',
	flow_desc			VARCHAR(1024)		NULL	COMMENT '流程描述(系统自动记录)',
	comments			TEXT				NULL	COMMENT 'Comments',
	notification_desc	VARCHAR(1024)		NULL	COMMENT '邮件描述(系统自动记录)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'Remarks',
	PRIMARY KEY (id)
) COMMENT = 'FLB流程操作记录表';

CREATE INDEX i_yc_flb_flow_opera_1 ON yc_flb_flow_opera (biz_key, bizflow_id);




------------------------------------------------------------------
-- 顺序流程		操作结果：1-Success
-- 审核流程		操作结果：3-Accepted 4-Rejected
-- 通知流程		操作结果：1-Success 2-Fail

-- js_sys_file_upload.biz_key        -> 对应目录唯一编号 dir_code，通过此字段可父节点查找
-- js_sys_file_upload.biz_type       -> 对应 yc_flb_bizflow.id + yc_flb_flow.id(yc_flb_flow_opera.flow_id),如： FBZ100001_F10001000
-- js_sys_file_upload.site_id        -> 对应基站唯一编号：PH0900001
-- 举例：biz_key + biz_type          -> 对应基站目录下某一流程下某一类文档，可能会有多个。如：10008 + FBZ100001_F10001000
-- js_sys_file_upload.milestone_type -> 保留 未使用
-- js_sys_file_upload.milestone_id   -> 保留 未使用
------------------------------------------------------------------


DELETE FROM yc_flb_fflow;
INSERT INTO yc_flb_fflow VALUES ('F1000','Site Verification Process','Site Verification Process','0','system',now(),'system',now(),'');

-- 编号,流程简称,流程说明,起始编号(1起流程/2中间流程/9结束流程),流程类型(1顺序/2审核/3通知),下一个流程编号,不通过流程编号,是否上传文档(0否/1是),备注类型(0no/1text/2uedit),角色编号,角色关系(1And/2Or)
DELETE FROM yc_flb_flow;
INSERT INTO yc_flb_flow VALUES ('F10001000','F1000','Upload SAR/MOC','Upload SAR/MOC','1','1','F10001010',null,'1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001010','F1000','Approved by DITO','Approved by DITO','2','2','F10001020','F10001000','1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001020','F1000','Video uploaded in Synology','take video from the main road going to the site and upload in Synology','1','2','F10001030',null,'1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001030','F1000','Can verify in video','Check the video from Synology and give comments to Region Head.Can verify in video?','2','2','F10001040','F10001050','1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001040','F1000','Without potential variation?','Without potential variation?','2','2','F10001060','F10001070','1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001050','F1000','Go to site for verification','Go to site for verification','1','2','F10001040',null,'1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001060','F1000','Property Doc&Brgy. Permit','Check and secure Property Documents, Brgy. Permit','1','2','F10001080',null,'1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001070','F1000','Variation 1 accepted by DITO','Variation 1 accepted by DITO','2','2','F10001060','F10001000','1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001080','F1000','SBT&SI, NTP;','SBT&SI, NTP;','1','2','F10001090',null,'1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001090','F1000','SBT&SI Report and review','SBT&SI, output,SBTR & SI Report, and review','2','2','F10001100','F10001000','1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001100','F1000','Inform DDD,SAQ,CME to do TSS','Inform DDD, SAQ and CME team to do TSS','1','2','F10001110',null,'1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001110','F1000','Go to site measure & TSSR creation','Go to site together with SAQ and CME to measure the actual variation and TSSR creation','1','2','F10001120',null,'1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001120','F1000','Create DDD','Create DDD based on VO information, LSP, SBTR & TSSR','1','2','F10001130',null,'1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001130','F1000','HXPT DDD review','HXPT DDD review','2','2','F10001140','F10001120','1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001140','F1000','DITO approve','DITO approve','2','2','F10001150','F10001120','1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001150','F1000','Without potential variation?','Without potential variation?','2','2','F10001160','F10001170','1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001160','F1000','Joint Review Meeting Minutes','Joint Review Meeting Minutes','1','2','F10001180',null,'1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001170','F1000','Variation 2 accepted by DITO','Variation 2 accepted by DITO','2','2','F10001180','F10001000','1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001180','F1000','Sign Joint Review Meeting Minutes','Sign Joint Review Meeting Minutes','1','2','F10001190',null,'1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_flb_flow VALUES ('F10001190','F1000','CME Confirm','CME Confirm','1','9',null,null,'0','1','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');






