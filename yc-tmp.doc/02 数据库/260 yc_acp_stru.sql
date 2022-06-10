--
-- ACPĿ¼��(��3��Ŀ¼)
-- 
DROP TABLE IF EXISTS yc_acp_dir;
CREATE TABLE yc_acp_dir (
	tree_code		VARCHAR(64)		NOT NULL COMMENT '�ڵ����',
	parent_code		VARCHAR(64)		NOT NULL COMMENT '�������',
	parent_codes	VARCHAR(1000)	NOT NULL COMMENT '���и������',
	tree_sort		DECIMAL(10,0)	NOT NULL COMMENT '���������(����)',
	tree_sorts		VARCHAR(1000)	NOT NULL COMMENT '���м��������',
	tree_leaf		CHAR(1)			NOT NULL COMMENT '�Ƿ���ĩ��',
	tree_level		DECIMAL(4,0)	NOT NULL COMMENT '��μ���',
	tree_names		VARCHAR(1000)	NOT NULL COMMENT 'ȫ�ڵ���',
	tree_name		VARCHAR(100)	NOT NULL COMMENT '�ڵ�����',
	tree_desc		VARCHAR(500)		NULL COMMENT 'Ŀ¼����(��Ե�3��Ŀ¼)',
	file_type		VARCHAR(64)			NULL COMMENT '�ļ�����(1-Photo 2-Document)',
	model_a				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT 'ģ��A',
	model_b				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT 'ģ��B',
	model_c				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT 'ģ��C',
	model_d				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT 'ģ��D',
	model_e				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT 'ģ��E',
	model_f				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT 'ģ��F',
	model_g				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT 'ģ��G',
	model_h				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT 'ģ��H',
	model_i				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT 'ģ��I',
	model_j				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT 'ģ��J',
	model_k				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT 'ģ��K',
	model_l				DECIMAL(10,0)	NOT NULL	DEFAULT '0' COMMENT 'ģ��L',
	note_a				TEXT	NULL	COMMENT '���ʾ��ͼƬ������˵��',
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
	status			CHAR(1)			NOT NULL DEFAULT '0' COMMENT '״̬(0���� 1ɾ�� 2ͣ��)',
	create_by		VARCHAR(64)		NOT NULL COMMENT '������',
	create_date		DATETIME		NOT NULL COMMENT '����ʱ��',
	update_by		VARCHAR(64)		NOT NULL COMMENT '������',
	update_date		DATETIME		NOT NULL COMMENT '����ʱ��',
	remarks			VARCHAR(500)	DEFAULT NULL COMMENT '��ע��Ϣ',
	PRIMARY KEY (tree_code),
	KEY idx_acp_dir_pc (parent_code),
	KEY idx_acp_dir_ts (tree_sort),
	KEY idx_acp_dir_status (status)
) COMMENT='Acp Dir';



--
-- ģ�嶨��(���ݻ�վ�������ֶ���)
-- 
DROP TABLE IF EXISTS yc_acp_model;
CREATE TABLE yc_acp_model
(
	id					VARCHAR(64)		NOT NULL	COMMENT 'ID',
	sort				DECIMAL(10,0)	NOT NULL	COMMENT '���(hide)',
	name				VARCHAR(100)	NOT NULL	COMMENT 'ģ������',
	model_id			VARCHAR(10)		NOT NULL	COMMENT 'ģ����(hide)',
	site_type_field		VARCHAR(100)		NULL	COMMENT '��վ�����ֶ�',
	site_type_value		TEXT				NULL	COMMENT '��վ����ֵ',
	site_type_name		VARCHAR(100)		NULL	COMMENT '��վ���ͱ���',
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
-- �û���Ŀ¼���Ȩ�ޱ�
-- 
DROP TABLE IF EXISTS yc_acp_auth_approve;
CREATE TABLE yc_acp_auth_approve
(
	id				VARCHAR(64)		NOT NULL	COMMENT 'ID',
	tree_code		VARCHAR(64)		NOT NULL	COMMENT 'Dir Code(��3��Ŀ¼)',
	area_code		VARCHAR(64)		NOT NULL	COMMENT 'Area Code(1-All Area 2-Davao 3-North 4-South)',
	user_code		VARCHAR(500)	NOT NULL	COMMENT 'User Code',
	appr_level		CHAR(1)			NOT NULL	COMMENT 'Approve Level(1-One Level 2-Two Level 3-Three Level)',
	PRIMARY KEY (id)
) COMMENT = 'Acp Auth Approve';


--
-- �û��Ի�վ��Ŀ¼���ϴ�Ȩ�ޱ�
-- 
DROP TABLE IF EXISTS yc_acp_auth_upload;
CREATE TABLE yc_acp_auth_upload (
	tree_code		VARCHAR(64)		NOT NULL COMMENT '��ڵ����',
	parent_code		VARCHAR(64)		NOT NULL COMMENT '�������',
	parent_codes	VARCHAR(1000)	NOT NULL COMMENT '���и������',
	tree_sort		DECIMAL(10,0)	NOT NULL COMMENT '���������(����)',
	tree_sorts		VARCHAR(1000)	NOT NULL COMMENT '���м��������',
	tree_leaf		CHAR(1)			NOT NULL COMMENT '�Ƿ���ĩ��',
	tree_level		DECIMAL(4,0)	NOT NULL COMMENT '��μ���',
	tree_names		VARCHAR(1000)	NOT NULL COMMENT 'ȫ�ڵ���',
	tree_name		VARCHAR(200)	NOT NULL COMMENT '�ڵ�����',
	node_tree_code	VARCHAR(64)		NOT NULL COMMENT '��ȨΨһ����',
	auth			CHAR(1)			NOT NULL DEFAULT '1' COMMENT '�ĵ�Ȩ��(1-Upload 2-View)',	
	status			CHAR(1)			NOT NULL DEFAULT '0' COMMENT '״̬(0���� 1ɾ�� 2ͣ��)',
	create_by		VARCHAR(64)		NOT NULL COMMENT '������',
	create_date		DATETIME		NOT NULL COMMENT '����ʱ��',
	update_by		VARCHAR(64)		NOT NULL COMMENT '������',
	update_date		DATETIME		NOT NULL COMMENT '����ʱ��',
	remarks			VARCHAR(500)	DEFAULT NULL COMMENT '��ע��Ϣ',
	PRIMARY KEY (tree_code)
) COMMENT='Acp Auth Upload';



--
-- �������̼�¼��
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
-- ����״̬��(ֻ�������һ��Ŀ¼״̬���ϼ�Ŀ¼����վĿ¼ͨ������õ�)
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
) COMMENT = '����״̬��';

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








