--
-- OSP所有字段（包括未使用的）
-- 
DROP TABLE IF EXISTS ycosp_site_column;
CREATE TABLE ycosp_site_column
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	column_name			VARCHAR(64)		NOT NULL	COMMENT 'Column Name',
	column_sort			DECIMAL(10,0)		NULL	COMMENT 'Sort',
	column_type			VARCHAR(100)		NULL	COMMENT 'Column Type(varchar(100))',
	attr_name			VARCHAR(100)	NOT NULL	COMMENT '类的属性名(代码内全局唯一标识)',
	attr_type			VARCHAR(100)	NOT NULL	COMMENT 'OSP列类型: 0-Text,1-Integer,2-Date,3-DateTime,4-DECIMAL(8,6)',
	show_name			VARCHAR(255)	NOT NULL	COMMENT 'Show Name',
	show_type			CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT '列选择方式: 0-System Definition,1-Select distinct From DB,2-Input',
	father_column		VARCHAR(100)		NULL	COMMENT '父字段',
	menu_id				CHAR(1)			NOT NULL	DEFAULT 'a'	COMMENT '归属菜单编号',
	os_dir				VARCHAR(64)		NOT NULL	COMMENT 'OS Directory',
	status				CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-正常, 1-删除, 2-停用;新增的时候从删除中选,界面操作只能启用和停用，无法删除)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'SiteColumn';


--
-- OSP行筛选过滤策略父表
-- 
DROP TABLE IF EXISTS ycosp_site_rowf;
CREATE TABLE ycosp_site_rowf
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
-- OSP行筛选过滤策略子表
-- 
DROP TABLE IF EXISTS ycosp_site_rowf_column;
CREATE TABLE ycosp_site_rowf_column
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
-- OSP列筛选过滤策略父表
-- 
DROP TABLE IF EXISTS ycosp_site_colf;
CREATE TABLE ycosp_site_colf
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	filter_name			VARCHAR(100)	NOT NULL	COMMENT 'FilterName',
	menu_id				CHAR(1)			NOT NULL	COMMENT '归属菜单编号',
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
-- OSP列筛选过滤策略子表
-- 
DROP TABLE IF EXISTS ycosp_site_colf_column;
CREATE TABLE ycosp_site_colf_column
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
DROP TABLE IF EXISTS ycosp_my_config;
CREATE TABLE ycosp_my_config
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
DROP TABLE IF EXISTS ycosp_role_field;
CREATE TABLE ycosp_role_field
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
DROP TABLE IF EXISTS ycosp_rpt_design;
CREATE TABLE ycosp_rpt_design
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
DROP TABLE IF EXISTS ycosp_rpt_design_colunm;
CREATE TABLE ycosp_rpt_design_colunm
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	rpt_id				VARCHAR(64)		NOT NULL	COMMENT '报表编号',
	column_id			VARCHAR(64)		NOT NULL	COMMENT 'ColumnID',
	PRIMARY KEY (id)
) COMMENT = 'Report design colunm';




--
-- Milestone操作记录表
-- 
DROP TABLE IF EXISTS ycosp_miles_opera;
CREATE TABLE ycosp_miles_opera
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



----------------
--
-- OSP父流程定义表
-- 
DROP TABLE IF EXISTS yc_osp_fflow;
CREATE TABLE yc_osp_fflow (
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
) COMMENT='OSP父流程定义表';



--
-- OSP子流程定义表
-- 
DROP TABLE IF EXISTS yc_osp_flow;
CREATE TABLE yc_osp_flow (
	id				VARCHAR(64)		NOT NULL COMMENT 'ID,流程步骤编号 F10001000',
	flow_code		VARCHAR(64)		NOT NULL COMMENT '流程编号 F1000',
	flow_name		VARCHAR(100)	NOT NULL COMMENT '流程简称',
	flow_desc		VARCHAR(100)	NOT NULL COMMENT '流程说明',
	flow_type		CHAR(1)			NOT NULL COMMENT '流程类型(1-顺序，2-审核，3-通知)',
	location		CHAR(1)			NOT NULL COMMENT '流程位置(1-发起流程，2-中间流程，3-结束流程)',
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
) COMMENT='OSP子流程定义表';



--
-- OSP流程操作记录表
-- 
DROP TABLE IF EXISTS yc_osp_flow_opera;
CREATE TABLE yc_osp_flow_opera
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	biz_key				VARCHAR(64)		NOT NULL	COMMENT '对应目录编号 siteId',
	bizflow_id			VARCHAR(64)		NOT NULL	COMMENT '业务流程编号 columnId',
	flow_id				VARCHAR(64)		NOT NULL	COMMENT '流程子步骤编号 yc_osp_flow.id',
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
) COMMENT = 'OSP流程操作记录表';

CREATE INDEX i_yc_osp_flow_opera_1 ON yc_osp_flow_opera (biz_key, bizflow_id);


------------------------------------------------------------------
-- 顺序流程		操作结果：1-Success
-- 审核流程		操作结果：3-Accepted 4-Rejected
-- 通知流程		操作结果：1-Success 2-Fail

-- js_sys_file_upload.biz_key        -> 对应字段编号 ycosp_site.id + ycosp_site_column.id 如： OSP100000_100000
-- js_sys_file_upload.biz_type       -> 对应 yc_osp_flow.id  如：F10001000
-- js_sys_file_upload.site_id        -> 对应基站唯一编号：OSP100000
-- 举例：biz_key + biz_type          -> 对应基站字段下某一流程下某一类文档，可能会有多个。如：OSP100000_100000 + F10001000
-- js_sys_file_upload.milestone_type -> 2        1-Wireless 2-OSP 3-DC
-- js_sys_file_upload.milestone_id   -> milestone_id
------------------------------------------------------------------


DELETE FROM yc_osp_fflow;
INSERT INTO yc_osp_fflow VALUES ('F1000','Milestone Process','Milestone Process','0','system',now(),'system',now(),'');

-- 编号,流程简称,流程说明,流程类型(1顺序/2审核/3通知),起始位置(1起流程/2中间流程/9结束流程),下一个流程编号,不通过流程编号,是否上传文档(0否/1是),备注类型(0no/1text/2uedit),角色编号,邮件角色编号,角色关系(1And/2Or)
DELETE FROM yc_osp_flow;
INSERT INTO yc_osp_flow VALUES ('F10001000','F1000','Upload documents','Upload documents','1','1','F10001010',null,'1','1','TestRoleA','TestRoleB','2',null,null,'0','system',now(),'system',now(),'');
INSERT INTO yc_osp_flow VALUES ('F10001010','F1000','Approved by HXPT','Approved by HXPT','2','9',null,null,'1','2','TestRoleA',null,'2',null,null,'0','system',now(),'system',now(),'');




--
-- OSP事件表
-- 
DROP TABLE IF EXISTS yc_osp_issue;
CREATE TABLE yc_osp_issue
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID ISU10001',
	item_type			VARCHAR(255)	NOT NULL	COMMENT 'Sector',
	element				VARCHAR(255)	NOT NULL	COMMENT 'area',
	istatus				CHAR(1)			NOT NULL	COMMENT '1-OPEN 2-CLOSED',
	substatus			CHAR(1)			NOT NULL	COMMENT '1-Pending 2-Replied 3-Solved 4-Cancelled',
	issue_type			CHAR(1)			NOT NULL	COMMENT '1-Issue during Survey 2-',
	severity			CHAR(1)			NOT NULL	COMMENT '1-Low 2-Medium 3-High',
	description			VARCHAR(1024)	NOT NULL	COMMENT '描述',
	cause_type			CHAR(1)			NOT NULL	COMMENT '1- 2-',
	comments			VARCHAR(1024)		NULL	COMMENT '备注',
	site_id				VARCHAR(64)			NULL	COMMENT '基站编号',
	status				CHAR(1)			NOT NULL	COMMENT '',
	create_by			VARCHAR(64)			NULL	COMMENT 'Created by',
	create_date			DATETIME			NULL	COMMENT 'Open date',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'Remarks',
	PRIMARY KEY (id)
) COMMENT = 'OSP事件表';

-- js_sys_file_upload.biz_key        -> yc_osp_issue.id
-- js_sys_file_upload.biz_type       -> ospissue_new
-- js_sys_file_upload.site_id        -> OSP100000 可为空
-- js_sys_file_upload.milestone_type -> 5
-- js_sys_file_upload.milestone_id   -> 空，保留



--
-- OSP事件ACT表
-- 
DROP TABLE IF EXISTS yc_osp_issue_act;
CREATE TABLE yc_osp_issue_act
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID ISA10001',
	issue_id			VARCHAR(64)		NOT NULL	COMMENT 'issues.id',
	action				CHAR(1)			NOT NULL	COMMENT '1- 2-',
	action_status		CHAR(1)				NULL	COMMENT '1-Open 2-Closed',
	action_substatus	CHAR(1)				NULL	COMMENT '1-Pending 2-Assigned 3-Replied 4-Not applicable',
	assigned_groups		VARCHAR(255)		NULL	COMMENT '',
	comments			VARCHAR(1024)		NULL	COMMENT '备注',
	create_by			VARCHAR(64)			NULL	COMMENT 'Created by',
	create_date			DATETIME			NULL	COMMENT 'Open date',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'Remarks',
	PRIMARY KEY (id)
) COMMENT = 'OSP事件ACT表';

-- js_sys_file_upload.biz_key        -> yc_osp_issue_act.id
-- js_sys_file_upload.biz_type       -> ospissue_act
-- js_sys_file_upload.site_id        -> OSP100000 可为空
-- js_sys_file_upload.milestone_type -> 5
-- js_sys_file_upload.milestone_id   -> yc_osp_issue.id














