--
-- DC所有字段（包括未使用的）
-- 
DROP TABLE IF EXISTS ycdc_site_column;
CREATE TABLE ycdc_site_column
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	column_name			VARCHAR(64)		NOT NULL	COMMENT 'Column Name',
	column_sort			DECIMAL(10,0)		NULL	COMMENT 'Sort',
	column_type			VARCHAR(100)		NULL	COMMENT 'Column Type(varchar(100))',
	attr_name			VARCHAR(100)	NOT NULL	COMMENT '类的属性名(代码内全局唯一标识)',
	attr_type			VARCHAR(100)	NOT NULL	COMMENT 'DC列类型: 0-Text,1-Integer,2-Date,3-DateTime,4-DECIMAL(8,6)',
	show_name			VARCHAR(255)	NOT NULL	COMMENT 'Show Name',
	show_type			CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT '列选择方式: 0-System Definition,1-Select distinct From DB,2-Input',
	father_column		VARCHAR(100)		NULL	COMMENT '父字段',
	status				CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-正常, 1-删除, 2-停用;新增的时候从删除中选,界面操作只能启用和停用，无法删除)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'SiteColumn';


--
-- DC行筛选过滤策略父表
-- 
DROP TABLE IF EXISTS ycdc_site_rowf;
CREATE TABLE ycdc_site_rowf
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	filter_name			VARCHAR(100)	NOT NULL	COMMENT 'FilterName',
	test_status			CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-test success 1-test fail 2-To be test)',
	shared				CHAR(1)			NOT NULL	DEFAULT '1'	COMMENT 'Shared(1-private 2-public)',
	status				CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-normal 2-suspend)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'SiteRowFilter';


--
-- DC行筛选过滤策略子表
-- 
DROP TABLE IF EXISTS ycdc_site_rowf_column;
CREATE TABLE ycdc_site_rowf_column
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	filter_id			VARCHAR(64)		NOT NULL	COMMENT 'FilterID',
	column_id			VARCHAR(64)		NOT NULL	COMMENT 'ColumnID',
	left_key			TEXT			NOT NULL	COMMENT 'Leftkey(字段实际值)',
	left_lable			TEXT			NOT NULL	COMMENT 'LeftLable(字段显示值)',
	left_query			VARCHAR(100)	NOT NULL	COMMENT 'QueryType(IN,=,>,>=,<,<=)',
	left_vlue			TEXT			NOT NULL	COMMENT 'QueryVlue',
	right_key			TEXT				NULL	COMMENT 'Leftkey(字段实际值)',
	right_lable			TEXT				NULL	COMMENT 'LeftLable(字段显示值)',
	right_query			VARCHAR(100)		NULL	COMMENT 'QueryType(IN,=,>,>=,<,<=)',
	right_vlue			TEXT				NULL	COMMENT 'QueryVlue',
	not_null			CHAR(1)				NULL	COMMENT '1shownotnull',
	status				CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-normal 1-delete 2suspend 3error)',
	remarks				VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'SiteRowFilterColumn';


--
-- DC列筛选过滤策略父表
-- 
DROP TABLE IF EXISTS ycdc_site_colf;
CREATE TABLE ycdc_site_colf
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	filter_name			VARCHAR(100)	NOT NULL	COMMENT 'FilterName',
	shared				CHAR(1)			NOT NULL	DEFAULT '1'	COMMENT 'Shared(1-private 2-public)',
	status				CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-normal 1-delete 2suspend 3error)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'SiteColFilter';


--
-- DC列筛选过滤策略子表
-- 
DROP TABLE IF EXISTS ycdc_site_colf_column;
CREATE TABLE ycdc_site_colf_column
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	filter_id			VARCHAR(64)		NOT NULL	COMMENT 'FilterID',
	column_id			VARCHAR(64)		NOT NULL	COMMENT 'ColumnID',
	column_sort			DECIMAL(10,0)		NULL	COMMENT '页面显示列排序',
	PRIMARY KEY (id)
) COMMENT = 'SiteColFilterColumn';


--
-- 个人配置信息表
-- 
DROP TABLE IF EXISTS ycdc_my_config;
CREATE TABLE ycdc_my_config
(
	user_code			VARCHAR(100)	NOT NULL	COMMENT '用户编码',
	config_code			VARCHAR(100)	NOT NULL	COMMENT '配置编号',
	config_value		VARCHAR(200)	NOT NULL	COMMENT '配置信息',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (user_code, config_code)
) COMMENT = 'My Config';


--
-- 角色与MILESTONE字段权限配置信息表
-- 
DROP TABLE IF EXISTS ycdc_role_field;
CREATE TABLE ycdc_role_field
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	role_code			VARCHAR(64)		NOT NULL	COMMENT '角色编码',
	column_id			VARCHAR(64)		NOT NULL	COMMENT 'ColumnID',
	permission			CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT '日期权限(1-View date 2-Edit Today&History 3-Edit oday only 4-Edit all date)',
	docupermis			CHAR(1)			NOT NULL	DEFAULT '1'	COMMENT '文档权限(0-No documents 1-View documents 2-View&Approval documents  3-Upload documents)',	
	ext01				VARCHAR(100)		NULL	COMMENT '保留',
	ext02				VARCHAR(100)		NULL	COMMENT '保留',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'Role Field';


--
-- 报表定制表
-- 
DROP TABLE IF EXISTS ycdc_rpt_design;
CREATE TABLE ycdc_rpt_design
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	rpt_name			VARCHAR(100)	NOT NULL	COMMENT 'Design User',
	shared				CHAR(1)			NOT NULL	DEFAULT '1'	COMMENT 'Shared(1-private 2-public)',
	status				CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-normal 1-delete 2suspend 3error)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'Report design';


--
-- 报表定制字段
-- 
DROP TABLE IF EXISTS ycdc_rpt_design_colunm;
CREATE TABLE ycdc_rpt_design_colunm
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	rpt_id				VARCHAR(64)		NOT NULL	COMMENT '报表编号',
	column_id			VARCHAR(64)		NOT NULL	COMMENT 'ColumnID',
	PRIMARY KEY (id)
) COMMENT = 'Report design colunm';




--
-- Milestone操作记录表
-- 
DROP TABLE IF EXISTS ycdc_miles_opera;
CREATE TABLE ycdc_miles_opera
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	site_id				VARCHAR(64)		NOT NULL	COMMENT 'SiteID',
	column_id			VARCHAR(64)		NOT NULL	COMMENT 'ColumnID',
	column_name			VARCHAR(100)	NOT NULL	COMMENT 'ColumnName',
	operate				VARCHAR(1024)	NOT NULL	COMMENT 'Operate',
	flow_status			CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'flowStatus(1-Modified 2Approvaled 3NotPass)',
	isend				CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT '[废弃]isend(0-Flowing 1-Closed)',
	flow_sort			INTEGER				NULL	COMMENT 'FlowSort',
	next_user_code		VARCHAR(64)			NULL	COMMENT 'NextUserCode',
	next_user_name		VARCHAR(100)		NULL	COMMENT 'NextUserName',
	next_user_email		VARCHAR(100)		NULL	COMMENT 'NextUserEmail',
	email_result		VARCHAR(100)		NULL	COMMENT 'EmailResult',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'Milestone Operate';



