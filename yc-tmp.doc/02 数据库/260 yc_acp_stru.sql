--
-- ACP目录表(共3级目录)
-- 
DROP TABLE IF EXISTS yc_acp_dir;
CREATE TABLE yc_acp_dir (
	tree_code		VARCHAR(64)		NOT NULL COMMENT '节点编码',
	parent_code		VARCHAR(64)		NOT NULL COMMENT '父级编号',
	parent_codes	VARCHAR(1000)	NOT NULL COMMENT '所有父级编号',
	tree_sort		DECIMAL(10,0)	NOT NULL COMMENT '本级排序号(升序)',
	tree_sorts		VARCHAR(1000)	NOT NULL COMMENT '所有级别排序号',
	tree_leaf		CHAR(1)			NOT NULL COMMENT '是否最末级',
	tree_level		DECIMAL(4,0)	NOT NULL COMMENT '层次级别',
	tree_names		VARCHAR(1000)	NOT NULL COMMENT '全节点名',
	tree_name		VARCHAR(100)	NOT NULL COMMENT '节点名称',
	tree_desc		VARCHAR(500)		NULL COMMENT '目录描述(针对第3级目录)',
	file_type		VARCHAR(64)			NULL COMMENT '文件类型(1-Photo 2-Document)',
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
	status			CHAR(1)			NOT NULL DEFAULT '0' COMMENT '状态(0正常 1删除 2停用)',
	create_by		VARCHAR(64)		NOT NULL COMMENT '创建者',
	create_date		DATETIME		NOT NULL COMMENT '创建时间',
	update_by		VARCHAR(64)		NOT NULL COMMENT '更新者',
	update_date		DATETIME		NOT NULL COMMENT '更新时间',
	remarks			VARCHAR(500)	DEFAULT NULL COMMENT '备注信息',
	PRIMARY KEY (tree_code),
	KEY idx_acp_dir_pc (parent_code),
	KEY idx_acp_dir_ts (tree_sort),
	KEY idx_acp_dir_status (status)
) COMMENT='Acp Dir';



--
-- 模板定义(根据基站类型区分定义)
-- 
DROP TABLE IF EXISTS yc_acp_model;
CREATE TABLE yc_acp_model
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
) COMMENT = 'Acp Model';

CREATE UNIQUE INDEX i_yc_acp_model_1 ON yc_acp_model (name);


--
-- 用户对目录审核权限表
-- 
DROP TABLE IF EXISTS yc_acp_auth_approve;
CREATE TABLE yc_acp_auth_approve
(
	id				VARCHAR(64)		NOT NULL	COMMENT 'ID',
	tree_code		VARCHAR(64)		NOT NULL	COMMENT 'Dir Code(第3级目录)',
	area_code		VARCHAR(64)		NOT NULL	COMMENT 'Area Code(1-All Area 2-Davao 3-North 4-South)',
	user_code		VARCHAR(500)	NOT NULL	COMMENT 'User Code',
	appr_level		CHAR(1)			NOT NULL	COMMENT 'Approve Level(1-One Level 2-Two Level 3-Three Level)',
	PRIMARY KEY (id)
) COMMENT = 'Acp Auth Approve';


--
-- 用户对基站和目录的上传权限表
-- 
DROP TABLE IF EXISTS yc_acp_auth_upload;
CREATE TABLE yc_acp_auth_upload (
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
	auth			CHAR(1)			NOT NULL DEFAULT '1' COMMENT '文档权限(1-Upload 2-View)',	
	status			CHAR(1)			NOT NULL DEFAULT '0' COMMENT '状态(0正常 1删除 2停用)',
	create_by		VARCHAR(64)		NOT NULL COMMENT '创建者',
	create_date		DATETIME		NOT NULL COMMENT '创建时间',
	update_by		VARCHAR(64)		NOT NULL COMMENT '更新者',
	update_date		DATETIME		NOT NULL COMMENT '更新时间',
	remarks			VARCHAR(500)	DEFAULT NULL COMMENT '备注信息',
	PRIMARY KEY (tree_code)
) COMMENT='Acp Auth Upload';



--
-- 验收流程记录表
-- 
DROP TABLE IF EXISTS yc_acp_flow;
CREATE TABLE yc_acp_flow
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	site_id				VARCHAR(64)		NOT NULL	COMMENT 'SiteID',
	dir_id				VARCHAR(64)			NULL	COMMENT 'DirID',
	level				CHAR(1)			NOT NULL	COMMENT 'Level(0-site 1-one dir 2-two dir 3-three dir)',
	operate_type		CHAR(1)			NOT NULL	COMMENT 'Operate Type(1-Submit to approve 2-Commit approve 3-reset status)',
	operate_result		CHAR(1)				NULL	COMMENT 'Operate Result(3-Accepted 4-Rejected)',
	acp_status			CHAR(1)			NOT NULL	COMMENT 'Status(2-To be approved 3-Accepted 4-Rejected)',
	comments			TEXT				NULL	COMMENT 'Comments',
	mail_noti			VARCHAR(1024)		NULL	COMMENT 'Mail notification',
	status				CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-normal 1-delete 2-suspend 3-error)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'Remarks',
	PRIMARY KEY (id)
) COMMENT = 'Acp Flow';

CREATE INDEX i_yc_acp_flow_1 ON yc_acp_flow (site_id);
CREATE INDEX i_yc_acp_flow_2 ON yc_acp_flow (site_id,dir_id);


--
-- 验收状态表(只保留最后一级目录状态，上级目录及基站目录通过计算得到)
-- 
DROP TABLE IF EXISTS yc_acp_status;
CREATE TABLE yc_acp_status
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	site_id				VARCHAR(64)		NOT NULL	COMMENT 'SiteID',
	dir_id				VARCHAR(64)		NOT NULL	COMMENT 'Directory',
	acp_status			CHAR(1)			NOT NULL	COMMENT 'Status',
	uploaded_by			VARCHAR(64)			NULL	COMMENT 'Uploader',
	uploaded_date		DATETIME			NULL	COMMENT 'UploadDate',
	approved_by			VARCHAR(64)			NULL	COMMENT 'Approver',
	approved_date		DATETIME			NULL	COMMENT 'ApproveDate',
	total_level			int					NULL	COMMENT 'TotalLevel',
	status				CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-normal 1-delete 2-suspend 3-error)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'Remarks',
	PRIMARY KEY (id)
) COMMENT = '验收状态表';

CREATE UNIQUE INDEX i_yc_acp_status_1 ON yc_acp_status (site_id, dir_id);


CREATE OR REPLACE VIEW v_yc_acp_dir AS
SELECT 
	a.physicalplansiteid site_id,
	b.tree_code,
	b.tree_name,
	b.tree_names,
	b.tree_sorts,
	b.file_type
FROM yc_site a JOIN yc_acp_dir b
WHERE a.priorstatus='Active' and b.tree_level=2
ORDER BY a.physicalplansiteid, b.tree_sorts;


CREATE OR REPLACE VIEW v_yc_acp_sitedir AS
SELECT 
	a.site_id,
	a.tree_code,
	a.tree_name,
	a.tree_names,
	a.tree_sorts,
	a.file_type,
	b.acp_status,
	b.uploaded_by,
	c.user_name uploader,
	b.uploaded_date,
	b.approved_by,
	d.user_name approver,
	b.approved_date,
	b.total_level
FROM v_yc_acp_dir a
LEFT JOIN yc_acp_status b ON b.site_id=a.site_id AND b.dir_id=a.tree_code
LEFT JOIN js_sys_user c ON c.user_code=b.uploaded_by
LEFT JOIN js_sys_user d ON d.user_code=b.approved_by;








