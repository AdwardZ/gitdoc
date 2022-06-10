--
-- DDD目录表
-- 
DROP TABLE IF EXISTS yc_ddd_dir;
CREATE TABLE yc_ddd_dir (
  area_code		VARCHAR(64)		NOT NULL COMMENT '编码',
  parent_code	VARCHAR(64)		NOT NULL COMMENT '父级编号',
  parent_codes	VARCHAR(1000)	NOT NULL COMMENT '所有父级编号',
  tree_sort		DECIMAL(10,0)	NOT NULL COMMENT '本级排序号（升序）',
  tree_sorts	VARCHAR(1000)	NOT NULL COMMENT '所有级别排序号',
  tree_leaf		CHAR(1)			NOT NULL COMMENT '是否最末级',
  tree_level	DECIMAL(4,0)	NOT NULL COMMENT '层次级别',
  tree_names	VARCHAR(1000)	NOT NULL COMMENT '全节点名',
  area_name		VARCHAR(100)		NULL COMMENT '名称',
  area_type		CHAR(1)				NULL COMMENT '类型',
  status		CHAR(1)			NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  create_by		VARCHAR(64)		NOT NULL COMMENT '创建者',
  create_date	DATETIME		NOT NULL COMMENT '创建时间',
  update_by		VARCHAR(64)		NOT NULL COMMENT '更新者',
  update_date	DATETIME		NOT NULL COMMENT '更新时间',
  remarks		VARCHAR(500)	DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (area_code),
  KEY idx_ddd_dir_pc (parent_code),
  KEY idx_ddd_dir_ts (tree_sort),
  KEY idx_ddd_dir_status (status)
) COMMENT='DDD目录表';


--
-- DDD目录对应流程及权限表
-- 
DROP TABLE IF EXISTS yc_ddd_dir_auth;
CREATE TABLE yc_ddd_dir_auth (
	tree_code		VARCHAR(64)		NOT NULL COMMENT '节点编码',
	parent_code		VARCHAR(64)		NOT NULL COMMENT '父级编号',
	parent_codes	VARCHAR(1000)	NOT NULL COMMENT '所有父级编号',
	tree_sort		DECIMAL(10,0)	NOT NULL COMMENT '本级排序号（升序）',
	tree_sorts		VARCHAR(1000)	NOT NULL COMMENT '所有级别排序号',
	tree_leaf		CHAR(1)			NOT NULL COMMENT '是否最末级',
	tree_level		DECIMAL(4,0)	NOT NULL COMMENT '层次级别',
	tree_names		VARCHAR(1000)	NOT NULL COMMENT '全节点名',
	tree_name		VARCHAR(100)	NOT NULL COMMENT '节点名称',
	node_tree_code	VARCHAR(64)		NOT NULL COMMENT '授权唯一编码',
	is_notify		CHAR(1)				NULL COMMENT '是否通知(0-No Notification 1-Mail Notification)',
	is_upload		CHAR(1)				NULL COMMENT '是否上传文档(0-No documents 1-Documents Uploading)',
	is_approve		CHAR(1)				NULL COMMENT '是否核查(0-No approve 1-Approve/Reject)',
	approve_type	CHAR(1)				NULL COMMENT '核查类型(1-And 2-Or)',
	comments_type	CHAR(1)				NULL COMMENT '备注类型(0-no 1-text 2-uedit)',
	status			CHAR(1)			NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
	create_by		VARCHAR(64)		NOT NULL COMMENT '创建者',
	create_date		DATETIME		NOT NULL COMMENT '创建时间',
	update_by		VARCHAR(64)		NOT NULL COMMENT '更新者',
	update_date		DATETIME		NOT NULL COMMENT '更新时间',
	remarks			VARCHAR(500)	DEFAULT NULL COMMENT '备注信息',
	PRIMARY KEY (tree_code),
	KEY idx_dir_auth_pc (parent_code),
	KEY idx_dir_auth_ts (tree_sort),
	KEY idx_dir_auth_status (status)
 ) COMMENT='DDD目录对应流程及权限表';

------------------------------------------------------------------
-- SAQ(目录)
-- 	  LSP(目录)
-- 		 Upload(操作权限)
-- 			DDD Manager(角色)
-- 			SAQ Manager(角色)
------------------------------------------------------------------



--
-- DDD文档流程操作记录表
-- 
DROP TABLE IF EXISTS yc_ddd_flow_opera;
CREATE TABLE yc_ddd_flow_opera
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	biz_key				VARCHAR(64)		NOT NULL	COMMENT '目录编号',
	bizflow_id			VARCHAR(64)		NOT NULL	COMMENT '业务编号ddd+yyMMddHHmmss,替换文件通过 biz_type+flow_code 区别',
	flow_code			VARCHAR(64)		NOT NULL	COMMENT '流程编码yc_ddd_dir_auth.tree_code',
	flow_result			CHAR(1)				NULL	COMMENT '流程操作结果：(1-Success 2-Fail 3-Accepted 4-Rejected)',
	flow_desc			VARCHAR(1024)		NULL	COMMENT '流程描述(系统自动记录)',
	comments			TEXT				NULL	COMMENT 'Comments',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'Remarks',
	PRIMARY KEY (id)
) COMMENT = 'DDD文档流程操作记录表';

CREATE INDEX i_yc_ddd_flow_opera_1 ON yc_ddd_flow_opera (biz_key, bizflow_id);


--
-- DDD业务流程表
-- 
DROP TABLE IF EXISTS yc_ddd_bizflow;
CREATE TABLE yc_ddd_bizflow
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	site_id				VARCHAR(64)		NOT NULL	COMMENT 'SiteId',
	area_code			VARCHAR(64)		NOT NULL	COMMENT '对应目录编号',
	biz_name			VARCHAR(100)	NOT NULL	COMMENT '业务流程名称',
	docu_names			VARCHAR(1024)	NOT NULL	COMMENT '文档名称，逗号隔开',
	docu_sizes			VARCHAR(512)	NOT NULL	COMMENT '文档大小，逗号隔开',
	upload_users		VARCHAR(512)	NOT NULL	COMMENT '文档上传用户，逗号隔开',
	upload_dates		VARCHAR(512)	NOT NULL	COMMENT '文档上传时间，逗号隔开',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'Remarks',
	PRIMARY KEY (id)
) COMMENT = 'DDD业务流程表';

CREATE INDEX i_yc_ddd_bizflow_1 ON yc_ddd_bizflow (site_id);
CREATE INDEX i_yc_ddd_bizflow_2 ON yc_ddd_bizflow (area_code);



------------------------------------------------------------------
-- 1 Uploading 操作结果：1-Success
-- 2 Reviewer  操作结果：3-Accepted 4-Rejected
-- 3 Creation  操作结果：1-Success
-- 4 Approver  操作结果：3-Accepted 4-Rejected
-- 5 Mail      操作结果：1-Success 2-Fail

-- js_sys_file_upload.id             -> 
-- js_sys_file_upload.biz_key        -> 对应目录唯一编号 area_code，通过此字段可父节点查找
-- js_sys_file_upload.biz_type       -> 对应 yc_ddd_bizflow.id(=yc_ddd_flow_opera.biz_type) + yc_ddd_dir_auth.tree_code(yc_ddd_flow_opera.flow_code),如：ddd_211002211624_10007002
-- js_sys_file_upload.site_id        -> 对应基站唯一编号：PH0900001

-- biz_key + biz_type                -> 对应基站目录下某一流程下某一类文档，可能会有多个。如：10008 + ddd_211002211624_10007002

-- js_sys_file_upload.milestone_type -> 保留 未使用
-- js_sys_file_upload.milestone_id   -> 保留 未使用
------------------------------------------------------------------










