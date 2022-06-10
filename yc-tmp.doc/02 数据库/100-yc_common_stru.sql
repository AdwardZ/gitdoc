DROP TABLE IF EXISTS yc_project;
CREATE TABLE yc_project
(
	id			VARCHAR(64)		NOT NULL	COMMENT 'ID',
	project_id	VARCHAR(100)	NOT NULL	COMMENT 'Reference ID',
	country		VARCHAR(100)	NOT NULL	COMMENT 'Country',
	projname	VARCHAR(100)		NULL	COMMENT 'Project',
	market		VARCHAR(100)		NULL	COMMENT 'Market',
	customer	VARCHAR(100)		NULL	COMMENT 'Customer',
	status		CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-normal 1-delete 2suspend 3error)',
	create_by	VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date	DATETIME			NULL	COMMENT 'CreateDate',
	update_by	VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date	DATETIME			NULL	COMMENT 'UpdateDate',
	remarks		VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'Project';



DROP TABLE IF EXISTS yc_subcontr;
CREATE TABLE yc_subcontr
(
	id			VARCHAR(64)		NOT NULL	COMMENT 'ID',
	sub_name	VARCHAR(100)	NOT NULL	COMMENT 'Subcontr Name',
	leader		VARCHAR(100)		NULL	COMMENT 'Leader',
	phone		VARCHAR(100)		NULL	COMMENT 'Phone',
	address		VARCHAR(100)		NULL	COMMENT 'Address',
	zip_code	VARCHAR(100)		NULL	COMMENT 'Zip code',
	email		VARCHAR(100)		NULL	COMMENT 'Email',
	vendor_type	VARCHAR(100)	NOT NULL	COMMENT 'Vendor type(可以多个: 1,3  1-SAQ Vendor 2-TSS/DDD Vendor 3-CME Vendor)',
	status		CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-normal 1-delete 2-suspend 3-error)',
	create_by	VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date	DATETIME			NULL	COMMENT 'Create Date',
	update_by	VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date	DATETIME			NULL	COMMENT 'Update Date',
	remarks		VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'Subcontractor';


DROP TABLE IF EXISTS yc_owner;
CREATE TABLE yc_owner
(
	id			VARCHAR(64)		NOT NULL	COMMENT 'ID',
	owner_name	VARCHAR(100)	NOT NULL	COMMENT 'Owner Name',
	leader		VARCHAR(100)		NULL	COMMENT 'Leader',
	phone		VARCHAR(100)		NULL	COMMENT 'Phone',
	address		VARCHAR(100)		NULL	COMMENT 'Address',
	zip_code	VARCHAR(100)		NULL	COMMENT 'Zip code',
	email		VARCHAR(100)		NULL	COMMENT 'Email',
	status		CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-normal 1-delete 2suspend 3error)',
	create_by	VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date	DATETIME			NULL	COMMENT 'CreateDate',
	update_by	VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date	DATETIME			NULL	COMMENT 'UpdateDate',
	remarks		VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'owner';



--
-- 报表定义的日期：周、月
-- 
DROP TABLE IF EXISTS yc_rpt_day;
CREATE TABLE yc_rpt_day
(
	rpt_day				DATETIME		NOT NULL	COMMENT 'Date(天)',
	rpt_week_name		VARCHAR(100)	NOT NULL	COMMENT '周名称',
	rpt_month_name		VARCHAR(100)	NOT NULL	COMMENT '月名称',
	PRIMARY KEY (rpt_day)
) COMMENT = 'RPT Day';


--
-- 系统通知消息
-- 
DROP TABLE IF EXISTS yc_notify;
CREATE TABLE yc_notify
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	title				VARCHAR(200)	NOT NULL	COMMENT 'Title',
	content				VARCHAR(1000)	NOT NULL	COMMENT 'Content',
	notify_type			CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Notify Type(1-Infomation 2-Approval)',
	read_status			CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Read Status(0-Unread 2-Read)',
	notify_user_code	VARCHAR(64)		NOT NULL	COMMENT 'User',
	site_id				VARCHAR(64)		NOT NULL	COMMENT 'SiteID',
	column_id			VARCHAR(64)		NOT NULL	COMMENT 'ColumnID',
	column_name			VARCHAR(100)	NOT NULL	COMMENT 'ColumnName',
	module_type			CHAR(1)			NOT NULL	COMMENT '模块分类(1-Wireless 2-OSP 3-DC 4-Acceptance 5-New Acceptance)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'notify';




