

--
-- ACP目录表
-- 
DROP TABLE IF EXISTS yc_acp_dir;
CREATE TABLE yc_acp_dir (
  area_code		VARCHAR(64)		NOT NULL COMMENT '编码',
  parent_code	VARCHAR(64)		NOT NULL COMMENT '父级编号',
  parent_codes	VARCHAR(1000)	NOT NULL COMMENT '所有父级编号',
  tree_sort		DECIMAL(10,0)	NOT NULL COMMENT '本级排序号(升序)',
  tree_sorts	VARCHAR(1000)	NOT NULL COMMENT '所有级别排序号',
  tree_leaf		CHAR(1)			NOT NULL COMMENT '是否最末级',
  tree_level	DECIMAL(4,0)	NOT NULL COMMENT '层次级别',
  tree_names	VARCHAR(1000)	NOT NULL COMMENT '全节点名',
  area_name		VARCHAR(100)		NULL COMMENT '名称',
  area_type		CHAR(1)				NULL COMMENT '类型',
  status		CHAR(1)			NOT NULL DEFAULT '0' COMMENT '状态(0正常 1删除 2停用)',
  create_by		VARCHAR(64)		NOT NULL COMMENT '创建者',
  create_date	DATETIME		NOT NULL COMMENT '创建时间',
  update_by		VARCHAR(64)		NOT NULL COMMENT '更新者',
  update_date	DATETIME		NOT NULL COMMENT '更新时间',
  remarks		VARCHAR(500)	DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (area_code),
  KEY idx_acp_dir_pc (parent_code),
  KEY idx_acp_dir_ts (tree_sort),
  KEY idx_acp_dir_status (status)
) COMMENT='ACP目录表';




--
-- 基站二级目录表
-- 
DROP TABLE IF EXISTS yc_site_twodir;
CREATE TABLE yc_site_twodir
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	sort				DECIMAL(10,0)	NOT NULL	COMMENT 'Sort',
	two_dir				VARCHAR(100)	NOT NULL	COMMENT '二级目录',
	PRIMARY KEY (id)
) COMMENT = 'Site Dir';


--
-- 基站三级目录表
-- 
DROP TABLE IF EXISTS yc_site_dir;
CREATE TABLE yc_site_dir
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	sort				DECIMAL(10,0)	NOT NULL	COMMENT 'Sort',
	two_dir_id			VARCHAR(100)	NOT NULL	COMMENT '二级目录',
	three_dir			VARCHAR(100)	NOT NULL	COMMENT '三级目录',
	dir_name			VARCHAR(100)	NOT NULL	COMMENT '下载目录名称',
	model_a				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT '模板A',
	model_b				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT '模板B',
	model_c				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT '模板C',
	model_d				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT '模板D',
	model_e				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT '模板E',
	model_f				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT '模板F',
	model_g				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT '模板G',
	model_h				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT '模板H',
	model_i				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT '模板I',
	model_j				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT '模板J',
	model_k				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT '模板K',
	model_l				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT '模板L',
	note_a				TEXT	NULL	COMMENT '针对示例图片的描述说明',
	note_b				TEXT	NULL	COMMENT 'note',
	note_c				TEXT	NULL	COMMENT 'note',
	note_d				TEXT	NULL	COMMENT 'note',
	note_e				TEXT	NULL	COMMENT 'note',
	note_f				TEXT	NULL	COMMENT 'note',
	note_g				TEXT	NULL	COMMENT 'note',
	note_h				TEXT	NULL	COMMENT 'note',
	note_i				TEXT	NULL	COMMENT 'note',
	note_j				TEXT	NULL	COMMENT 'note',
	note_k				TEXT	NULL	COMMENT 'note',
	note_l				TEXT	NULL	COMMENT 'note',
	PRIMARY KEY (id)
) COMMENT = 'Site Dir';


--
-- 基站类型模板
-- 
DROP TABLE IF EXISTS yc_accep_model;
CREATE TABLE yc_accep_model
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	sort				DECIMAL(10,0)	NOT NULL	COMMENT '序号(hide)',
	name				VARCHAR(100)	NOT NULL	COMMENT '模板名称',
	model_id			VARCHAR(10)		NOT NULL	COMMENT '模板编号(hide)',
	site_type_field		VARCHAR(100)		NULL	COMMENT '基站类型字段',
	site_type_value		TEXT				NULL	COMMENT '基站类型值',
	site_type_name		VARCHAR(100)		NULL	COMMENT '基站类型别名',
	status		CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-normal 1-delete 2suspend 3error)',
	create_by	VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date	DATETIME			NULL	COMMENT 'CreateDate',
	update_by	VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date	DATETIME			NULL	COMMENT 'UpdateDate',
	remarks		VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = '基站类型模板';

CREATE UNIQUE INDEX i_yc_accep_model_1 ON yc_accep_model (name);


--
-- Acceptance用户基站权限表
-- 
DROP TABLE IF EXISTS yc_accep_auth;
CREATE TABLE yc_accep_auth (
	tree_code		VARCHAR(64)		NOT NULL COMMENT '书节点编码',
	parent_code		VARCHAR(64)		NOT NULL COMMENT '父级编号',
	parent_codes	VARCHAR(1000)	NOT NULL COMMENT '所有父级编号',
	tree_sort		DECIMAL(10,0)	NOT NULL COMMENT '本级排序号(升序)',
	tree_sorts		VARCHAR(1000)	NOT NULL COMMENT '所有级别排序号',
	tree_leaf		CHAR(1)			NOT NULL COMMENT '是否最末级',
	tree_level		DECIMAL(4,0)	NOT NULL COMMENT '层次级别',
	tree_names		VARCHAR(1000)	NOT NULL COMMENT '全节点名',
	tree_name		VARCHAR(200)	NOT NULL COMMENT '节点名称',
	node_tree_code	VARCHAR(64)		NOT NULL COMMENT '授权唯一编码',
	auth			CHAR(1)			NOT NULL DEFAULT '1' COMMENT '文档权限(1-View 2-View&Approval  3-Upload)',	
	status			CHAR(1)			NOT NULL DEFAULT '0' COMMENT '状态(0正常 1删除 2停用)',
	create_by		VARCHAR(64)		NOT NULL COMMENT '创建者',
	create_date		DATETIME		NOT NULL COMMENT '创建时间',
	update_by		VARCHAR(64)		NOT NULL COMMENT '更新者',
	update_date		DATETIME		NOT NULL COMMENT '更新时间',
	remarks			VARCHAR(500)	DEFAULT NULL COMMENT '备注信息',
	PRIMARY KEY (tree_code)
) COMMENT='Acceptance用户基站权限表';



--
-- 基站验收流程记录表
-- 
DROP TABLE IF EXISTS yc_accep_flow;
CREATE TABLE yc_accep_flow
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	site_id				VARCHAR(64)		NOT NULL	COMMENT 'SiteID',
	two_dir_id			VARCHAR(64)			NULL	COMMENT 'TwoDirID',
	three_dir_id		VARCHAR(64)			NULL	COMMENT 'ThreeDirID',
	level				CHAR(1)			NOT NULL	COMMENT 'Level(1-site 2-two dir 3-three dir)',
	operate_type		CHAR(1)			NOT NULL	COMMENT 'Operate Type(1-Submit to approve 2-Commit approve)',
	operate_result		CHAR(1)				NULL	COMMENT 'Operate Result(3-Accepted 4-Rejected)',
	accep_status		CHAR(1)			NOT NULL	COMMENT 'Status(2-To be approved 3-Accepted 4-Rejected)',
	comments			TEXT				NULL	COMMENT 'Comments',
	mail_noti			VARCHAR(1024)		NULL	COMMENT 'Mail notification',
	status				CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-normal 1-delete 2-suspend 3-error)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'Remarks',
	PRIMARY KEY (id)
) COMMENT = '基站验收流程记录表';

CREATE INDEX i_yc_accep_flow_1 ON yc_accep_flow (site_id);
CREATE INDEX i_yc_accep_flow_2 ON yc_accep_flow (site_id,two_dir_id,three_dir_id);





--
-- 基站及目录验收状态表
-- 
DROP TABLE IF EXISTS yc_accep_status;
CREATE TABLE yc_accep_status
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	site_id				VARCHAR(64)		NOT NULL	COMMENT 'SiteID',
	two_dir_id			VARCHAR(64)			NULL	COMMENT 'TwoDirID',
	three_dir_id		VARCHAR(64)			NULL	COMMENT 'ThreeDirID',
	level				CHAR(1)			NOT NULL	COMMENT 'Level(1-site 2-two dir 3-three dir)',
	accep_status		CHAR(1)			NOT NULL	COMMENT 'Status(2-To be approved 3-Accepted 4-Rejected)',
	status				CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-normal 1-delete 2-suspend 3-error)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'Remarks',
	PRIMARY KEY (id)
) COMMENT = '基站验收流程记录表';


CREATE UNIQUE INDEX i_yc_accep_status_1 ON yc_accep_status (site_id, two_dir_id, three_dir_id, level);


