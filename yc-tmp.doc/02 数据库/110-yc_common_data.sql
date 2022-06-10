--
-- sys_office_type(1-Project, 2-Vendor, 3-Owner)
--
DELETE FROM yc_project;
INSERT INTO yc_project VALUES ('10000', 'PR-0000138', 'Philippines', 'DITO Project Management Program', 'Greater China', 'Globe Telecom', '0', 'system', now(), 'system', now(), NULL);

DELETE FROM yc_owner;
INSERT INTO yc_owner VALUES ('10000', 'DITO', null, null, null, null, null, '0', 'system', now(), 'system', now(), NULL);

-- 表yc_subcontr的数据需要备份最新的  DELETE FROM yc_subcontr;

DELETE FROM js_sys_dict_type WHERE dict_type='sys_site_status';
INSERT INTO js_sys_dict_type VALUES ('10000', '基站状态', 'sys_site_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='sys_site_status';
INSERT INTO js_sys_dict_data VALUES ('10000100', '0', '0,', 20, '0000000020,', '1', 0, '正常', '正常', '0', 'sys_site_status', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('10000200', '0', '0,', 30, '0000000030,', '1', 0, '删除', '删除', '1', 'sys_site_status', '1', '', 'color:#f00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('10000300', '0', '0,', 40, '0000000040,', '1', 0, '停用', '停用', '2', 'sys_site_status', '1', '', 'color:#f00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('10000400', '0', '0,', 50, '0000000050,', '1', 0, '错误', '错误', '3', 'sys_site_status', '1', '', 'color:#fa0;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='column_not_empty';
INSERT INTO js_sys_dict_type VALUES ('11000', '列值不为空', 'column_not_empty', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='column_not_empty';
INSERT INTO js_sys_dict_data VALUES ('11000100', '0', '0,', 20, '0000000020,', '1', 0, 'N/A', 'N/A', '1', 'column_not_empty', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='sys_column_status';
INSERT INTO js_sys_dict_type VALUES ('12000', '基站列状态', 'sys_column_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='sys_column_status';
INSERT INTO js_sys_dict_data VALUES ('12000100', '0', '0,', 10, '0000000020,', '1', 0, '正常', '正常', '0', 'sys_column_status', '1', '', 'color:#0f0;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('12000300', '0', '0,', 30, '0000000030,', '1', 0, '停用', '停用', '2', 'sys_column_status', '1', '', 'color:#f00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='attribute_type';
INSERT INTO js_sys_dict_type VALUES ('13000', '基站列类型', 'attribute_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='attribute_type';
INSERT INTO js_sys_dict_data VALUES ('13000100', '0', '0,', 10, '0000000010,', '1', 0, 'Text', 'Text', '0', 'attribute_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('13000200', '0', '0,', 20, '0000000020,', '1', 0, 'Integer', 'Integer', '1', 'attribute_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('13000300', '0', '0,', 30, '0000000030,', '1', 0, 'Date', 'Date', '2', 'attribute_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
--INSERT INTO js_sys_dict_data VALUES ('13000400', '0', '0,', 40, '0000000040,', '1', 0, 'DateTime', 'DateTime', '3', 'attribute_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('13000220', '0', '0,', 22, '0000000022,', '1', 0, 'Decimal', 'Decimal', '4', 'attribute_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='filter_show_type';
INSERT INTO js_sys_dict_type VALUES ('14000', '列选择方式', 'filter_show_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='filter_show_type';
INSERT INTO js_sys_dict_data VALUES ('14000100', '0', '0,', 10, '0000000010,', '1', 0, 'System Definition', 'System Definition', '0', 'filter_show_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('14000200', '0', '0,', 20, '0000000020,', '1', 0, 'Select distinct From DB)', 'Select distinct From DB', '1', 'filter_show_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('14000300', '0', '0,', 30, '0000000030,', '1', 0, 'Input(=,>,<...)', 'Input(=,>,<...)', '2', 'filter_show_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='site_filter_status';
INSERT INTO js_sys_dict_type VALUES ('15000', '过滤策略状态', 'site_filter_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='site_filter_status';
INSERT INTO js_sys_dict_data VALUES ('15000100', '0', '0,', 10, '0000000010,', '1', 0, '正常', '正常', '0', 'site_filter_status', '1', '', 'color:#0f0;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('15000300', '0', '0,', 30, '0000000030,', '1', 0, '停用', '停用', '2', 'site_filter_status', '1', '', 'color:#f00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='site_filter_test_status';
INSERT INTO js_sys_dict_type VALUES ('16000', '过滤策略测试结果状态', 'site_filter_test_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='site_filter_test_status';
INSERT INTO js_sys_dict_data VALUES ('16000100', '0', '0,', 10, '0000000010,', '1', 0, '测试通过', '测试通过', '0', 'site_filter_test_status', '1', '', 'color:#0f0;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('16000200', '0', '0,', 20, '0000000020,', '1', 0, '测试失败', '测试失败', '1', 'site_filter_test_status', '1', '', 'color:#f00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('16000300', '0', '0,', 30, '0000000030,', '1', 0, '待测试', '待测试', '2', 'site_filter_test_status', '1', '', 'color:#00f;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='vendor_type';
INSERT INTO js_sys_dict_type VALUES ('18000', '分包商类型', 'vendor_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='vendor_type';
INSERT INTO js_sys_dict_data VALUES ('18000100', '0', '0,', 10, '0000000010,', '1', 0, 'SAQ', 'SAQ', '1', 'vendor_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('18000200', '0', '0,', 20, '0000000020,', '1', 0, 'TSS', 'TSS', '2', 'vendor_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('18000250', '0', '0,', 25, '0000000025,', '1', 0, 'DDD', 'DDD', '7', 'vendor_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('18000300', '0', '0,', 30, '0000000030,', '1', 0, 'CME', 'CME', '3', 'vendor_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('18000400', '0', '0,', 40, '0000000040,', '1', 0, 'TI', 'TI', '4', 'vendor_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('18000500', '0', '0,', 50, '0000000050,', '1', 0, 'S&D(OSP)', 'S&D(OSP)', '5', 'vendor_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('18000600', '0', '0,', 60, '0000000060,', '1', 0, 'Implementatio(OSP)', 'Implementatio(OSP)', '6', 'vendor_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('18000420', '0', '0,', 42, '0000000042,', '1', 0, 'PWR', 'PWR', '8', 'vendor_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('18000440', '0', '0,', 44, '0000000044,', '1', 0, 'TX', 'TX', '9', 'vendor_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='sys_role_type';
INSERT INTO js_sys_dict_type VALUES ('19000', '角色类型', 'sys_role_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='sys_role_type';
INSERT INTO js_sys_dict_data VALUES ('19000010', '0', '0,', 10, '0000000010,', '1', 0, 'Admin', 'Admin', '1', 'sys_role_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('19000110', '0', '0,', 20, '0000000020,', '1', 0, 'Project team', 'Project team', '11', 'sys_role_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('19000210', '0', '0,', 30, '0000000030,', '1', 0, 'Owner', 'Owner', '21', 'sys_role_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('19000310', '0', '0,', 40, '0000000040,', '1', 0, 'SAQ Vendor', 'SAQ Vendor', '31', 'sys_role_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('19000320', '0', '0,', 60, '0000000060,', '1', 0, 'DDD Vendor', 'DDD Vendor', '32', 'sys_role_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('19000330', '0', '0,', 70, '0000000070,', '1', 0, 'CME Vendor', 'CME Vendor', '33', 'sys_role_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('19000340', '0', '0,', 80, '0000000080,', '1', 0, 'TI Vendor', 'TI Vendor', '34', 'sys_role_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('19000410', '0', '0,',110, '0000000110,', '1', 0, 'S&D(OSP) Vendor', 'S&D(OSP) Vendor', '41', 'sys_role_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('19000420', '0', '0,',120, '0000000120,', '1', 0, 'Implementatio(OSP) Vendor', 'Implementatio(OSP) Vendor', '42', 'sys_role_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('19001050', '0', '0,', 50, '0000000050,', '1', 0, 'TSS Vendor', 'TSS Vendor', '51', 'sys_role_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('19001090', '0', '0,', 90, '0000000090,', '1', 0, 'PWR Vendor', 'PWR Vendor', '52', 'sys_role_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('19001100', '0', '0,',100, '0000000100,', '1', 0, 'TX Vendor', 'TX Vendor', '53', 'sys_role_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='private_public_status';
INSERT INTO js_sys_dict_type VALUES ('20000', '是否共享', 'private_public_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='private_public_status';
INSERT INTO js_sys_dict_data VALUES ('20000100', '0', '0,', 10, '0000000010,', '1', 0, 'private', 'private', '1', 'private_public_status', '1', '', 'color:#28004D;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('20000200', '0', '0,', 20, '0000000020,', '1', 0, 'public', 'public', '2', 'private_public_status', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='yc_upload_status';
INSERT INTO js_sys_dict_type VALUES ('21000', '文件上传状态', 'yc_upload_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='yc_upload_status';
INSERT INTO js_sys_dict_data VALUES ('21000100', '0', '0,', 10, '0000000020,', '1', 0, '未上传', '未上传', '0', 'yc_upload_status', '1', '', 'color:#808080;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('21000200', '0', '0,', 20, '0000000030,', '1', 0, '已上传', '已上传', '1', 'yc_upload_status', '1', '', 'color:#00ff00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('21000300', '0', '0,', 30, '0000000030,', '1', 0, '上传失败', '上传失败', '2', 'yc_upload_status', '1', '', 'color:#ff0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='yc_judge_status';
INSERT INTO js_sys_dict_type VALUES ('22000', '文件识别状态', 'yc_judge_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='yc_judge_status';
INSERT INTO js_sys_dict_data VALUES ('22000100', '0', '0,', 10, '0000000020,', '1', 0, '未识别', '未识别', '0', 'yc_judge_status', '1', '', 'color:#808080;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('22000200', '0', '0,', 20, '0000000030,', '1', 0, '识别成功', '识别成功', '1', 'yc_judge_status', '1', '', 'color:#00ff00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('22000300', '0', '0,', 30, '0000000030,', '1', 0, '识别失败', '识别失败', '2', 'yc_judge_status', '1', '', 'color:#ff0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='yc_file_type';
INSERT INTO js_sys_dict_type VALUES ('23000', '文件类型', 'yc_file_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='yc_file_type';
INSERT INTO js_sys_dict_data VALUES ('23000100', '0', '0,', 10, '0000000010,', '1', 0, '未知', '未知', '0', 'yc_file_type', '1', '', 'color:#808080;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('23000200', '0', '0,', 20, '0000000020,', '1', 0, '文档', '文档', '1', 'yc_file_type', '1', '', 'color:#00ff00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('23000300', '0', '0,', 30, '0000000030,', '1', 0, '图片', '图片', '2', 'yc_file_type', '1', '', 'color:#ff0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- INSERT INTO js_sys_dict_data VALUES ('17000200', '0', '0,', 20, '0000000020,', '1', 0, 'Edit Today&History', 'Edit Today&History', '2', 'role_field_permission', '1', '', 'color:#00BB00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO js_sys_dict_data VALUES ('24000400', '0', '0,', 40, '0000000040,', '1', 0, 'Upload documents', 'Upload documents', '3', 'role_field_docupermis', '1', '', 'color:#9F0050;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='role_field_permission';
INSERT INTO js_sys_dict_type VALUES ('17000', '角色对日期的权限', 'role_field_permission', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='role_field_permission';
INSERT INTO js_sys_dict_data VALUES ('17000100', '0', '0,', 10, '0000000010,', '1', 0, 'View', 'View', '1', 'role_field_permission', '1', '', 'color:#00BB00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('17000300', '0', '0,', 30, '0000000030,', '1', 0, 'Edit today', 'Edit today', '3', 'role_field_permission', '1', '', 'color:#4B0091;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('17000400', '0', '0,', 40, '0000000040,', '1', 0, 'Edit all date', 'Edit all date', '4', 'role_field_permission', '1', '', 'color:#9F0050;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='role_field_docupermis';
INSERT INTO js_sys_dict_type VALUES ('24000', '角色对文档权限', 'role_field_docupermis', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='role_field_docupermis';
INSERT INTO js_sys_dict_data VALUES ('24000100', '0', '0,', 10, '0000000010,', '1', 0, 'Invisible', 'Invisible', '0', 'role_field_docupermis', '1', '', 'color:#808080;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('24000200', '0', '0,', 20, '0000000020,', '1', 0, 'Downloadable', 'Downloadable', '1', 'role_field_docupermis', '1', '', 'color:#00BB00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('24000300', '0', '0,', 30, '0000000030,', '1', 0, 'Manageable', 'Manageable', '2', 'role_field_docupermis', '1', '', 'color:#4B0091;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='miles_flow_status';
INSERT INTO js_sys_dict_type VALUES ('25000', '流程状态', 'miles_flow_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='miles_flow_status';
INSERT INTO js_sys_dict_data VALUES ('25000000', '0', '0,', 0, '0000000000,', '1', 0, 'DateChanged', 'DateChanged', '0', 'miles_flow_status', '1', '', 'color:#00BB00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('25000100', '0', '0,', 10, '0000000010,', '1', 0, 'Modified', 'Modified', '1', 'miles_flow_status', '1', '', 'color:#9F0050;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('25000200', '0', '0,', 20, '0000000020,', '1', 0, 'Approvaled', 'Approvaled', '2', 'miles_flow_status', '1', '', 'color:#00ff00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('25000300', '0', '0,', 30, '0000000030,', '1', 0, 'Rejected', 'Rejected', '3', 'miles_flow_status', '1', '', 'color:#ff0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- [废弃]
DELETE FROM js_sys_dict_type WHERE dict_type='miles_flow_isend';
INSERT INTO js_sys_dict_type VALUES ('26000', '流程是否结束', 'miles_flow_isend', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='miles_flow_isend';
INSERT INTO js_sys_dict_data VALUES ('26000100', '0', '0,', 10, '0000000010,', '1', 0, 'No', 'No', '0', 'miles_flow_isend', '1', '', 'color:#ff0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('26000200', '0', '0,', 20, '0000000020,', '1', 0, 'Yes', 'Yes', '1', 'miles_flow_isend', '1', '', 'color:#00ff00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='docu_upload_option';
INSERT INTO js_sys_dict_type VALUES ('27000', '上传文档操作分类', 'docu_upload_option', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='docu_upload_option';
INSERT INTO js_sys_dict_data VALUES ('27000100', '0', '0,', 10, '0000000010,', '1', 0, 'Save', 'Save', '1', 'docu_upload_option', '1', '', 'color:#00BB00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('27000200', '0', '0,', 20, '0000000020,', '1', 0, 'Submit for Approval', 'Submit for Approval', '2', 'docu_upload_option', '1', '', 'color:#9F0050;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='docu_approval_option';
INSERT INTO js_sys_dict_type VALUES ('28000', '审核文档操作分类', 'docu_approval_option', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='docu_approval_option';
INSERT INTO js_sys_dict_data VALUES ('28000100', '0', '0,', 10, '0000000010,', '1', 0, 'Approvaled', 'Approvaled', '1', 'docu_approval_option', '1', '', 'color:#00BB00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('28000200', '0', '0,', 20, '0000000020,', '1', 0, 'Approvaled & Submit to next Approval', 'Approvaled & Submit to next Approval', '2', 'docu_approval_option', '1', '', 'color:#9F0050;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('28000300', '0', '0,', 30, '0000000030,', '1', 0, 'Rejected', 'Rejected', '3', 'docu_approval_option', '1', '', 'color:#4B0091;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='notify_user_list';
INSERT INTO js_sys_dict_type VALUES ('29000', '通知用户列表', 'notify_user_list', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='notify_user_list';
INSERT INTO js_sys_dict_data VALUES ('29000100', '0', '0,', 10, '0000000010,', '1', 0, 'Shi_Zhihong', 'Shi_Zhihong', 'Shi_Zhihong_hn5m', 'notify_user_list', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('29000200', '0', '0,', 20, '0000000020,', '1', 0, 'Zhao_Zhigang', 'Zhao_Zhigang', 'Zhao_Zhigang_vhch', 'notify_user_list', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('29000300', '0', '0,', 30, '0000000030,', '1', 0, 'Miao_Wenyi', 'Miao_Wenyi', 'Miao_Wenyi_lc8t', 'notify_user_list', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='yc_notify_type';
INSERT INTO js_sys_dict_type VALUES ('30000', '站内通知类型', 'yc_notify_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='yc_notify_type';
INSERT INTO js_sys_dict_data VALUES ('30000001', '0', '0,',  1, '0000000030,', '1', 0, 'Infomation', 'Infomation', '1', 'yc_notify_type', '1', '', 'color:#006000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('30000002', '0', '0,',  2, '0000000040,', '1', 0, 'Approval', 'Approval', '2', 'yc_notify_type', '1', '', 'color:#F75000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='yc_read_status';
INSERT INTO js_sys_dict_type VALUES ('31000', '站内通知阅读状态', 'yc_read_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='yc_read_status';
INSERT INTO js_sys_dict_data VALUES ('31000000', '0', '0,',  0, '0000000030,', '1', 0, 'Unread', 'Unread', '0', 'yc_read_status', '1', '', 'color:#00ff00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('31000001', '0', '0,',  1, '0000000040,', '1', 0, 'Read', 'Read', '1', 'yc_read_status', '1', '', 'color:#ff0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='yc_module_type';
INSERT INTO js_sys_dict_type VALUES ('32000', '平台模块分类', 'yc_module_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='yc_module_type';
INSERT INTO js_sys_dict_data VALUES ('32000100', '0', '0,', 10, '0000000010,', '1', 0, 'Wireless', 'Wireless', '1', 'yc_module_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('32000200', '0', '0,', 20, '0000000020,', '1', 0, 'OSP', 'OSP', '2', 'yc_module_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('32000300', '0', '0,', 30, '0000000030,', '1', 0, 'DC', 'DC', '3', 'yc_module_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('32000400', '0', '0,', 40, '0000000040,', '1', 0, 'Acceptance', 'Acceptance', '4', 'yc_module_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('32000500', '0', '0,', 50, '0000000050,', '1', 0, 'New Acceptance', 'New Acceptance', '5', 'yc_module_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='notify_dc_user_list';
INSERT INTO js_sys_dict_type VALUES ('34000', 'DC通知用户列表', 'notify_dc_user_list', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='notify_dc_user_list';
INSERT INTO js_sys_dict_data VALUES ('34000100', '0', '0,', 10, '0000000010,', '1', 0, 'ZENG Fanli', 'ZENG Fanli', 'zengfanli', 'notify_dc_user_list', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='isna_option';
INSERT INTO js_sys_dict_type VALUES ('35000', '是否NA', 'isna_option', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='isna_option';
INSERT INTO js_sys_dict_data VALUES ('35000100', '0', '0,', 10, '0000000010,', '1', 0, 'N/A', 'N/A', '1', 'isna_option', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='yc_site_type_field';
INSERT INTO js_sys_dict_type VALUES ('36000', '平台模块分类', 'yc_site_type_field', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='yc_site_type_field';
INSERT INTO js_sys_dict_data VALUES ('36000100', '0', '0,', 10, '0000000010,', '1', 0, 'Tower Type & Height', 'Tower Type & Height', 'sttowertype', 'yc_site_type_field', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO js_sys_dict_data VALUES ('36000200', '0', '0,', 20, '0000000020,', '1', 0, 'Site Type', 'Site Type', 'sitetype', 'yc_site_type_field', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='accep_docupermis';
INSERT INTO js_sys_dict_type VALUES ('37000', '验收用户对文档权限', 'accep_docupermis', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='accep_docupermis';
INSERT INTO js_sys_dict_data VALUES ('37000100', '0', '0,', 10, '0000000010,', '1', 0, 'View', 'View', '1', 'accep_docupermis', '1', '', 'color:#4B0091;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('37000200', '0', '0,', 20, '0000000020,', '1', 0, 'View&Approval', 'View&Approval', '2', 'accep_docupermis', '1', '', 'color:#00BB00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('37000300', '0', '0,', 30, '0000000030,', '1', 0, 'Upload', 'Upload', '3', 'accep_docupermis', '1', '', 'color:#FF9D6F;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='accep_approval_result';
INSERT INTO js_sys_dict_type VALUES ('38000', '验收审核选项', 'accep_approval_result', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='accep_approval_result';
INSERT INTO js_sys_dict_data VALUES ('38000300', '0', '0,', 30, '0000000030,', '1', 0, 'Accepted', 'Accepted', '3', 'accep_approval_result', '1', '', 'color:#006400;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('38000400', '0', '0,', 40, '0000000040,', '1', 0, 'Rejected', 'Rejected', '4', 'accep_approval_result', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='accep_status';
INSERT INTO js_sys_dict_type VALUES ('39000', '验收流程选项', 'accep_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='accep_status';
INSERT INTO js_sys_dict_data VALUES ('39000100', '0', '0,', 10, '0000000010,', '1', 0, 'To be uploaded', 'To be uploaded', '1', 'accep_status', '1', '', 'color:#FF8C00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('39000200', '0', '0,', 20, '0000000020,', '1', 0, 'To be approved', 'To be approved', '2', 'accep_status', '1', '', 'color:#0000FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('39000300', '0', '0,', 30, '0000000030,', '1', 0, 'Accepted', 'Accepted', '3', 'accep_status', '1', '', 'color:#006400;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('39000400', '0', '0,', 40, '0000000040,', '1', 0, 'Rejected', 'Rejected', '4', 'accep_status', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='accep_operate_type';
INSERT INTO js_sys_dict_type VALUES ('40000', '验收操作分类', 'accep_operate_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='accep_operate_type';
INSERT INTO js_sys_dict_data VALUES ('40000100', '0', '0,', 10, '0000000010,', '1', 0, 'Submit to approve', 'Submit to approve', '1', 'accep_operate_type', '1', '', 'color:#0000FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('40000200', '0', '0,', 20, '0000000020,', '1', 0, 'Approve', 'Approve', '2', 'accep_operate_type', '1', '', 'color:#FF00FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('40000300', '0', '0,', 30, '0000000030,', '1', 0, 'Reset Status', 'Reset Status', '3', 'accep_operate_type', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='accep_operate_result';
INSERT INTO js_sys_dict_type VALUES ('41000', '验收操作结果', 'accep_operate_result', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='accep_operate_result';
INSERT INTO js_sys_dict_data VALUES ('41000300', '0', '0,', 30, '0000000030,', '1', 0, 'Accepted', 'Accepted', '3', 'accep_operate_result', '1', '', 'color:#006400;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('41000400', '0', '0,', 40, '0000000040,', '1', 0, 'Rejected', 'Rejected', '4', 'accep_operate_result', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='accep_save_type';
INSERT INTO js_sys_dict_type VALUES ('42000', '验收保存分类', 'accep_save_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='accep_save_type';
INSERT INTO js_sys_dict_data VALUES ('42000100', '0', '0,', 10, '0000000010,', '1', 0, 'Save', 'Save', '1', 'accep_save_type', '1', '', 'color:#0000FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('42000200', '0', '0,', 20, '0000000020,', '1', 0, 'Save&Submit to approve', 'Save&Submit to approve', '2', 'accep_save_type', '1', '', 'color:#FF00FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='accep_approv_permis';
INSERT INTO js_sys_dict_type VALUES ('43000', '验收用户验收上传权限', 'accep_approv_permis', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='accep_approv_permis';
INSERT INTO js_sys_dict_data VALUES ('43000200', '0', '0,', 20, '0000000020,', '1', 0, 'View&Approval', 'View&Approval', '2', 'accep_approv_permis', '1', '', 'color:#00BB00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('43000300', '0', '0,', 30, '0000000030,', '1', 0, 'Upload', 'Upload', '3', 'accep_approv_permis', '1', '', 'color:#FF9D6F;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

======================================================================================================================================================
DELETE FROM js_sys_dict_type WHERE dict_type='ddd_flow_result';
INSERT INTO js_sys_dict_type VALUES ('51000', 'DDD流程操作结果', 'ddd_flow_result', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='ddd_flow_result';
INSERT INTO js_sys_dict_data VALUES ('51000100', '0', '0,', 10, '0000000010,', '1', 0, 'Success', 'Success', '1', 'ddd_flow_result', '1', '', 'color:#006400;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('51000200', '0', '0,', 20, '0000000020,', '1', 0, 'Fail', 'Fail', '2', 'ddd_flow_result', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('51000300', '0', '0,', 30, '0000000030,', '1', 0, 'Accepted', 'Accepted', '3', 'ddd_flow_result', '1', '', 'color:#006400;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('51000400', '0', '0,', 40, '0000000040,', '1', 0, 'Rejected', 'Rejected', '4', 'ddd_flow_result', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='ddd_is_notify';
INSERT INTO js_sys_dict_type VALUES ('53000', 'DDD流程是否通知', 'ddd_is_notify', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='ddd_is_notify';
INSERT INTO js_sys_dict_data VALUES ('53000100', '0', '0,', 10, '0000000010,', '1', 0, 'Not mail notification', 'Not mail notification', '0', 'ddd_is_notify', '1', '', 'color:#ff0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('53000200', '0', '0,', 20, '0000000020,', '1', 0, 'Mail notification', 'Mail notification', '1', 'ddd_is_notify', '1', '', 'color:#00ff00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='ddd_is_upload';
INSERT INTO js_sys_dict_type VALUES ('54000', 'DDD流程是否上传文档', 'ddd_is_upload', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='ddd_is_upload';
INSERT INTO js_sys_dict_data VALUES ('54000100', '0', '0,', 10, '0000000010,', '1', 0, 'No documents', 'No documents', '0', 'ddd_is_upload', '1', '', 'color:#ff0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('54000200', '0', '0,', 20, '0000000020,', '1', 0, 'Documents uploading', 'Documents uploading', '1', 'ddd_is_upload', '1', '', 'color:#00ff00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='ddd_is_approve';
INSERT INTO js_sys_dict_type VALUES ('55000', 'DDD流程是否核查', 'ddd_is_approve', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='ddd_is_approve';
INSERT INTO js_sys_dict_data VALUES ('5500100', '0', '0,', 10, '0000000010,', '1', 0, 'No', 'No', '0', 'ddd_is_approve', '1', '', 'color:#ff0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('5500200', '0', '0,', 20, '0000000020,', '1', 0, 'Yes', 'Yes', '1', 'ddd_is_approve', '1', '', 'color:#00ff00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='ddd_approve_type';
INSERT INTO js_sys_dict_type VALUES ('56000', 'DDD流程核查类型', 'ddd_approve_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='ddd_approve_type';
INSERT INTO js_sys_dict_data VALUES ('56000100', '0', '0,', 10, '0000000010,', '1', 0, 'And', 'And', '1', 'ddd_approve_type', '1', '', 'color:#ff0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('56000200', '0', '0,', 20, '0000000020,', '1', 0, 'Or', 'Or', '2', 'ddd_approve_type', '1', '', 'color:#00ff00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='ddd_comments_type';
INSERT INTO js_sys_dict_type VALUES ('57000', 'DDD流程备注类型', 'ddd_comments_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='ddd_comments_type';
INSERT INTO js_sys_dict_data VALUES ('57000100', '0', '0,', 10, '0000000010,', '1', 0, 'No comments', 'No comments', '0', 'ddd_comments_type', '1', '', 'color:#ff0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('57000200', '0', '0,', 20, '0000000020,', '1', 0, 'Text comments', 'Text comments', '1', 'ddd_comments_type', '1', '', 'color:#00ff00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('57000300', '0', '0,', 30, '0000000030,', '1', 0, 'Text&Picture comments', 'Text&Picture comments', '2', 'ddd_comments_type', '1', '', 'color:#00ff00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='flb_flow_type';
INSERT INTO js_sys_dict_type VALUES ('58000', '流程类型', 'flb_flow_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='flb_flow_type';
INSERT INTO js_sys_dict_data VALUES ('58000100', '0', '0,', 10, '0000000010,', '1', 0, 'Sequence', 'Sequence', '1', 'flb_flow_type', '1', '', 'color:#FF6EC7;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('58000200', '0', '0,', 20, '0000000020,', '1', 0, 'Approval', 'Approval', '2', 'flb_flow_type', '1', '', 'color:#8000FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


DELETE FROM js_sys_dict_type WHERE dict_type='flb_location';
INSERT INTO js_sys_dict_type VALUES ('59000', '流程类型', 'flb_location', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='flb_location';
INSERT INTO js_sys_dict_data VALUES ('59000100', '0', '0,', 10, '0000000010,', '1', 0, 'Start flow', 'Start flow', '1', 'flb_location', '1', '', 'color:#0000FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('59000200', '0', '0,', 20, '0000000020,', '1', 0, 'Middle flow', 'Middle flow', '2', 'flb_location', '1', '', 'color:#FF9D6F', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('59000300', '0', '0,', 30, '0000000030,', '1', 0, 'End flow', 'End flow', '9', 'flb_location', '1', '', 'color:#0000FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='flb_restart';
INSERT INTO js_sys_dict_type VALUES ('59100', '流程重新开始执行', 'flb_restart', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='flb_restart';
INSERT INTO js_sys_dict_data VALUES ('59100100', '0', '0,', 10, '0000000010,', '1', 0, 'normal', 'normal', '0', 'flb_restart', '1', '', 'color:#008000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('59100200', '0', '0,', 20, '0000000020,', '1', 0, 'restart', 'restart', '1', 'flb_restart', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

======================================================================================================================================================
DELETE FROM js_sys_dict_type WHERE dict_type='notify_osp_user_list';
INSERT INTO js_sys_dict_type VALUES ('33000', 'OSP通知用户列表', 'notify_osp_user_list', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='notify_osp_user_list';
INSERT INTO js_sys_dict_data VALUES ('33000100', '0', '0,', 10, '0000000010,', '1', 0, 'LinSonglin', 'LinSonglin', 'Lin_songlin_yjha', 'notify_osp_user_list', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='osp_menu_id';
INSERT INTO js_sys_dict_type VALUES ('60000', '流程类型', 'osp_menu_id', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='osp_menu_id';
INSERT INTO js_sys_dict_data VALUES ('60000100', '0', '0,', 10, '0000000010,', '1', 0, 'Menu A', 'Menu A', 'a', 'osp_menu_id', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('60000200', '0', '0,', 20, '0000000020,', '1', 0, 'Menu B', 'Menu B', 'b', 'osp_menu_id', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('60000300', '0', '0,', 30, '0000000030,', '1', 0, 'Menu C', 'Menu C', 'c', 'osp_menu_id', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='osp_flow_status';
INSERT INTO js_sys_dict_type VALUES ('61000', '流程状态', 'osp_flow_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='osp_flow_status';
INSERT INTO js_sys_dict_data VALUES ('61000100', '0', '0,', 10, '0000000010,', '1', 0, 'Pending', 'Pending', '1', 'osp_flow_status', '1', '', 'color:#565656;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('61000200', '0', '0,', 20, '0000000020,', '1', 0, 'HXPT On-Going', 'HXPT On-Going', '2', 'osp_flow_status', '1', '', 'color:#d5a14a;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('61000300', '0', '0,', 30, '0000000030,', '1', 0, 'HXPT Rejected', 'HXPT Rejected', '3', 'osp_flow_status', '1', '', 'color:#c4382e;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('61000400', '0', '0,', 40, '0000000040,', '1', 0, 'HXPT Approved', 'HXPT Approved', '4', 'osp_flow_status', '1', '', 'color:#309e0c;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('61000500', '0', '0,', 50, '0000000050,', '1', 0, 'Customer Pending', 'Customer Pending', '5', 'osp_flow_status', '1', '', 'color:#3cb2b9;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('61000600', '0', '0,', 60, '0000000060,', '1', 0, 'Customer Rejected', 'Customer Rejected', '6', 'osp_flow_status', '1', '', 'color:#c4382e;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('61000700', '0', '0,', 70, '0000000070,', '1', 0, 'Customer Approved', 'Customer Approved', '7', 'osp_flow_status', '1', '', 'color:#309e0c;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='osp_issue_status';
INSERT INTO js_sys_dict_type VALUES ('71000', 'OSP Issue Status', 'osp_issue_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='osp_issue_status';
INSERT INTO js_sys_dict_data VALUES ('71000100', '0', '0,', 10, '0000000010,', '1', 0, 'OPEN', 'OPEN', '1', 'osp_issue_status', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('71000200', '0', '0,', 20, '0000000020,', '1', 0, 'CLOSED', 'CLOSED', '2', 'osp_issue_status', '1', '', 'color:#008000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='osp_issue_substatus';
INSERT INTO js_sys_dict_type VALUES ('72000', 'OSP Issue SubStatus', 'osp_issue_substatus', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='osp_issue_substatus';
INSERT INTO js_sys_dict_data VALUES ('72000100', '0', '0,', 10, '0000000010,', '1', 0, 'Pending', 'Pending', '1', 'osp_issue_substatus', '1', '', 'color:#00FFFF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('72000200', '0', '0,', 20, '0000000020,', '1', 0, 'Replied', 'Replied', '2', 'osp_issue_substatus', '1', '', 'color:#FF9D6F;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('72000300', '0', '0,', 30, '0000000030,', '1', 0, 'Solved', 'Solved', '3', 'osp_issue_substatus', '1', '', 'color:#008000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('72000400', '0', '0,', 40, '0000000040,', '1', 0, 'Cancelled', 'Cancelled', '4', 'osp_issue_substatus', '1', '', 'color:#808080;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='osp_issue_type';
INSERT INTO js_sys_dict_type VALUES ('73000', 'OSP Issue Type', 'osp_issue_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='osp_issue_type';
INSERT INTO js_sys_dict_data VALUES ('73000100', '0', '0,', 10, '0000000010,', '1', 0, 'Issue during Survey', 'Issue during Survey', '1', 'osp_issue_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('73000200', '0', '0,', 20, '0000000020,', '1', 0, 'Issue during Design', 'Issue during Design', '2', 'osp_issue_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('73000300', '0', '0,', 30, '0000000030,', '1', 0, 'Issue during Walthrough', 'Issue during Walthrough', '3', 'osp_issue_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('73000400', '0', '0,', 40, '0000000040,', '1', 0, 'Issue during Construction', 'Issue during Construction', '4', 'osp_issue_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('73000500', '0', '0,', 50, '0000000050,', '1', 0, 'Issue during received', 'Issue during received', '5', 'osp_issue_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('73000600', '0', '0,', 60, '0000000060,', '1', 0, 'Issue during Inventory', 'Issue during Inventory', '6', 'osp_issue_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='osp_issue_severity';
INSERT INTO js_sys_dict_type VALUES ('74000', 'OSP Issue severity', 'osp_issue_severity', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='osp_issue_severity';
INSERT INTO js_sys_dict_data VALUES ('74000100', '0', '0,', 10, '0000000010,', '1', 0, 'Low', 'Low', '1', 'osp_issue_severity', '1', '', 'color:#00FFFF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('74000200', '0', '0,', 20, '0000000020,', '1', 0, 'Medium', 'Medium', '2', 'osp_issue_severity', '1', '', 'color:#FFA500;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('74000300', '0', '0,', 30, '0000000030,', '1', 0, 'High', 'High', '3', 'osp_issue_severity', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='osp_issue_cause';
INSERT INTO js_sys_dict_type VALUES ('75000', 'OSP Issue Cause', 'osp_issue_cause', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='osp_issue_cause';
INSERT INTO js_sys_dict_data VALUES ('75000100', '0', '0,', 10, '0000000010,', '1', 0, 'Materials needed', 'Materials needed', '1', 'osp_issue_cause', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('75000200', '0', '0,', 20, '0000000020,', '1', 0, 'Site instructions Received', 'Site instructions Received', '2', 'osp_issue_cause', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('75000300', '0', '0,', 30, '0000000030,', '1', 0, 'Permit Denied', 'Permit Denied', '3', 'osp_issue_cause', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('75000400', '0', '0,', 40, '0000000040,', '1', 0, 'Construction not possible', 'Construction not possible', '4', 'osp_issue_cause', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('75000500', '0', '0,', 50, '0000000050,', '1', 0, 'Change in MTF', 'Change in MTF', '5', 'osp_issue_cause', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('75000600', '0', '0,', 60, '0000000060,', '1', 0, 'Customer rejects Design', 'Customer rejects Design', '6', 'osp_issue_cause', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('75000700', '0', '0,', 70, '0000000070,', '1', 0, 'Wrong or missing information in As-built files', 'Wrong or missing information in As-built files', '7', 'osp_issue_cause', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('75000800', '0', '0,', 80, '0000000080,', '1', 0, 'Permit not available', 'Permit not available', '8', 'osp_issue_cause', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('75000900', '0', '0,', 90, '0000000090,', '1', 0, 'Fiber Allocation Request', 'Fiber Allocation Request', '9', 'osp_issue_cause', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='osp_issuaction';
INSERT INTO js_sys_dict_type VALUES ('76000', 'OSP Issue action', 'osp_issuaction', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='osp_issuaction';
INSERT INTO js_sys_dict_data VALUES ('76000100', '0', '0,', 10, '0000000010,', '1', 0, 'Analyze Materials', 'Analyze Materials', '1', 'osp_issuaction', '1', '', ';', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('76000200', '0', '0,', 20, '0000000020,', '1', 0, 'Analyze SI', 'Analyze SI', '2', 'osp_issuaction', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('76000300', '0', '0,', 30, '0000000030,', '1', 0, 'Redesign', 'Redesign', '3', 'osp_issuaction', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('76000400', '0', '0,', 40, '0000000040,', '1', 0, 'Proceed with Construction', 'Proceed with Construction', '4', 'osp_issuaction', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('76000500', '0', '0,', 50, '0000000050,', '1', 0, 'Correct As-Built docs', 'Correct As-Built docs', '5', 'osp_issuaction', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('76000600', '0', '0,', 60, '0000000060,', '1', 0, 'Analysis by Design Team', 'Analysis by Design Team', '6', 'osp_issuaction', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='osp_issuaction_status';
INSERT INTO js_sys_dict_type VALUES ('77000', 'OSP Issue action Status', 'osp_issuaction_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='osp_issuaction_status';
INSERT INTO js_sys_dict_data VALUES ('77000100', '0', '0,', 10, '0000000010,', '1', 0, 'Open', 'Open', '1', 'osp_issuaction_status', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('77000200', '0', '0,', 20, '0000000020,', '1', 0, 'Closed', 'Closed', '2', 'osp_issuaction_status', '1', '', 'color:#008000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='osp_issuaction_substatus';
INSERT INTO js_sys_dict_type VALUES ('78000', 'OSP Issue action SubStatus', 'osp_issuaction_substatus', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='osp_issuaction_substatus';
INSERT INTO js_sys_dict_data VALUES ('78000100', '0', '0,', 10, '0000000010,', '1', 0, 'Pending', 'Pending', '1', 'osp_issuaction_substatus', '1', '', 'color:#00FFFF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('78000200', '0', '0,', 20, '0000000020,', '1', 0, 'Assigned', 'Assigned', '2', 'osp_issuaction_substatus', '1', '', 'color:#FF9D6F;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('78000300', '0', '0,', 30, '0000000030,', '1', 0, 'Replied', 'Replied', '3', 'osp_issuaction_substatus', '1', '', 'color:#008000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('78000400', '0', '0,', 40, '0000000040,', '1', 0, 'Not applicable', 'Not applicable', '4', 'osp_issuaction_substatus', '1', '', 'color:#808080;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='dcf_cfg_opertype';
INSERT INTO js_sys_dict_type VALUES ('80000', 'DCF Config operate type', 'dcf_cfg_opertype', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='dcf_cfg_opertype';
INSERT INTO js_sys_dict_data VALUES ('80000100', '0', '0,', 10, '0000000010,', '1', 0, 'modify', 'modify', '1', 'dcf_cfg_opertype', '1', '', 'color:#FF6EC7;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('80000200', '0', '0,', 20, '0000000020,', '1', 0, 'import', 'import', '2', 'dcf_cfg_opertype', '1', '', 'color:#8000FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='dcf_menu_cfg';
INSERT INTO js_sys_dict_type VALUES ('81000', 'DCF Menu Config', 'dcf_menu_cfg', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='dcf_menu_cfg';
INSERT INTO js_sys_dict_data VALUES ('81000100', '0', '0,', 10, '0000000010,', '1', 0, 'Database v1', 'Database v1', '1', 'dcf_menu_cfg', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('81000200', '0', '0,', 20, '0000000020,', '1', 0, 'Database v2', 'Database v2', '2', 'dcf_menu_cfg', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('81000300', '0', '0,', 30, '0000000030,', '1', 0, 'Database v3', 'Database v3', '3', 'dcf_menu_cfg', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('81000400', '0', '0,', 40, '0000000040,', '1', 0, 'Database v4', 'Database v4', '4', 'dcf_menu_cfg', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('81000500', '0', '0,', 50, '0000000050,', '1', 0, 'Database v5', 'Database v5', '5', 'dcf_menu_cfg', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='rpt_site_phase';
INSERT INTO js_sys_dict_type VALUES ('90000', 'Site Phase', 'rpt_site_phase', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='rpt_site_phase';
INSERT INTO js_sys_dict_data VALUES ('90000200', '0', '0,', 20, '0000000020,', '1', 0, 'Phase 1', 'Phase 1', '2', 'rpt_site_phase', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('90000300', '0', '0,', 30, '0000000030,', '1', 0, 'Phase 2', 'Phase 2', '3', 'rpt_site_phase', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('90000400', '0', '0,', 40, '0000000040,', '1', 0, 'Phase 1 + Phase 2', 'Phase 1 + Phase 2', '4', 'rpt_site_phase', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='fd_cmetemppower';
INSERT INTO js_sys_dict_type VALUES ('100000', 'CME Tempo Power Remarks', 'fd_cmetemppower', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='fd_cmetemppower';
INSERT INTO js_sys_dict_data VALUES ('100000100', '0', '0,', 10, '0000000010,', '1', 0, 'Tapped to Lessor', 'Tapped to Lessor', 'Tapped to Lessor', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('100000200', '0', '0,', 20, '0000000020,', '1', 0, 'Tapped to Neighbor', 'Tapped to Neighbor', 'Tapped to Neighbor', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('100000300', '0', '0,', 30, '0000000030,', '1', 0, 'Transferred to Coop', 'Transferred to Coop', 'Transferred to Coop', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('100000400', '0', '0,', 40, '0000000040,', '1', 0, 'Direct to Coop', 'Direct to Coop', 'Direct to Coop', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('100000500', '0', '0,', 50, '0000000050,', '1', 0, 'For tapping to lessor', 'For tapping to lessor', 'For tapping to lessor', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('100000600', '0', '0,', 60, '0000000060,', '1', 0, 'For tapping to Neighbor', 'For tapping to Neighbor', 'For tapping to Neighbor', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('100000700', '0', '0,', 70, '0000000070,', '1', 0, 'No tapping point', 'No tapping point', 'No tapping point', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('100000800', '0', '0,', 80, '0000000080,', '1', 0, 'Low voltage', 'Low voltage', 'Low voltage', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('100000900', '0', '0,', 90, '0000000090,', '1', 0, 'Waiting for TI', 'Waiting for TI', 'Waiting for TI', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('100001000', '0', '0,', 100, '0000000100,', '1', 0, 'Waiting for TPCA approval', 'Waiting for TPCA approval', 'Waiting for TPCA approval', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('100001100', '0', '0,', 110, '0000000110,', '1', 0, 'For verification', 'For verification', 'For verification', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('100001200', '0', '0,', 120, '0000000120,', '1', 0, 'For Direct to Coop', 'For Direct to Coop', 'For Direct to Coop', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('100001300', '0', '0,', 130, '0000000130,', '1', 0, 'Coop Issue', 'Coop Issue', 'Coop Issue', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('100001400', '0', '0,', 140, '0000000140,', '1', 0, 'For transfer to coop', 'For transfer to coop', 'For transfer to coop', 'fd_cmetemppower', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='acp_area';
INSERT INTO js_sys_dict_type VALUES ('101000', 'Acp area', 'acp_area', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='acp_area';
INSERT INTO js_sys_dict_data VALUES ('101000100', '0', '0,', 10, '0000000010,', '1', 0, 'All Area'  , 'All Area',   '1', 'acp_area', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('101000200', '0', '0,', 20, '0000000020,', '1', 0, 'Davao', 'Davao', '2', 'acp_area', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('101000300', '0', '0,', 30, '0000000030,', '1', 0, 'North', 'North', '3', 'acp_area', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('101000400', '0', '0,', 40, '0000000040,', '1', 0, 'South', 'South', '4', 'acp_area', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='acp_photo_doc';
INSERT INTO js_sys_dict_type VALUES ('102000', 'Acp Photo Document', 'acp_photo_doc', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='acp_photo_doc';
INSERT INTO js_sys_dict_data VALUES ('102000100', '0', '0,', 10, '0000000010,', '1', 0, 'Photo'  , 'Photo',   '1', 'acp_photo_doc', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('102000200', '0', '0,', 20, '0000000020,', '1', 0, 'Document', 'Document', '2', 'acp_photo_doc', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO js_sys_dict_data VALUES ('102000900', '0', '0,', 90, '0000000090,', '1', 0, 'N/A', 'N/A', '9', 'acp_photo_doc', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='acp_isupload';
INSERT INTO js_sys_dict_type VALUES ('1021000', 'Acp Is Upload photo', 'acp_isupload', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='acp_isupload';
INSERT INTO js_sys_dict_data VALUES ('102100100', '0', '0,', 10, '0000000010,', '1', 0, 'Yes', 'Yes', '1', 'acp_isupload', '1', '', 'color:#00ff00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('102100200', '0', '0,', 20, '0000000020,', '1', 0, 'No', 'No', '2', 'acp_isupload', '1', '', 'color:#ff0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='acp_site_type';
INSERT INTO js_sys_dict_type VALUES ('103000', 'Acp Site Type', 'acp_site_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='acp_site_type';
INSERT INTO js_sys_dict_data VALUES ('103000100', '0', '0,', 10, '0000000010,', '1', 0, 'Tower Type & Height', 'Tower Type & Height', 'sttowertype', 'acp_site_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='acp_auth_upload';
INSERT INTO js_sys_dict_type VALUES ('104000', 'Acp Auth Upload', 'acp_auth_upload', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='acp_auth_upload';
INSERT INTO js_sys_dict_data VALUES ('104000100', '0', '0,', 10, '0000000010,', '1', 0, 'Upload', 'Upload', '1', 'acp_auth_upload', '1', '', 'color:#FF9D6F;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('104000200', '0', '0,', 20, '0000000020,', '1', 0, 'View', 'View', '2', 'acp_auth_upload', '1', '', 'color:#00BB00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='acp_uni_status';
INSERT INTO js_sys_dict_type VALUES ('105000', 'Acp Uni Status', 'acp_uni_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='acp_uni_status';
INSERT INTO js_sys_dict_data VALUES ('105000100', '0', '0,', 10, '0000000010,', '1', 0, 'To be uploaded', 'To be uploaded', '1', 'acp_uni_status', '1', '', 'color:#FF8C00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('105000200', '0', '0,', 20, '0000000020,', '1', 0, 'To be approved', 'To be approved', '2', 'acp_uni_status', '1', '', 'color:#0000FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('105000300', '0', '0,', 30, '0000000030,', '1', 0, 'Ongoing Approval', 'Ongoing Approval', '3', 'acp_uni_status', '1', '', 'color:#FF6EC7;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('105000400', '0', '0,', 40, '0000000040,', '1', 0, 'Accepted', 'Accepted', '4', 'acp_uni_status', '1', '', 'color:#006400;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('105000500', '0', '0,', 50, '0000000050,', '1', 0, 'Rejected', 'Rejected', '5', 'acp_uni_status', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='acp_ind_status';
INSERT INTO js_sys_dict_type VALUES ('105100', 'Acp Ind Status', 'acp_ind_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='acp_ind_status';
INSERT INTO js_sys_dict_data VALUES ('105100100', '0', '0,', 10, '0000000010,', '1', 0, 'To be uploaded', 'To be uploaded', '1', 'acp_ind_status', '1', '', 'color:#FF8C00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('105100200', '0', '0,', 20, '0000000020,', '1', 0, 'To be approved', 'To be approved', '2', 'acp_ind_status', '1', '', 'color:#0000FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('105100300', '0', '0,', 30, '0000000030,', '1', 0, '1nd-Level Accepted', '1nd-Level Accepted', '3', 'acp_ind_status', '1', '', 'color:#006400;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('105100400', '0', '0,', 40, '0000000040,', '1', 0, '1nd-Level Rejected', '1nd-Level Rejected', '4', 'acp_ind_status', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('105100500', '0', '0,', 50, '0000000050,', '1', 0, '2nd-Level Accepted', '2nd-Level Accepted', '5', 'acp_ind_status', '1', '', 'color:#006400;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('105100600', '0', '0,', 60, '0000000060,', '1', 0, '2nd-Level Rejected', '2nd-Level Rejected', '6', 'acp_ind_status', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('105100700', '0', '0,', 70, '0000000070,', '1', 0, '3nd-Level Accepted', '3nd-Level Accepted', '7', 'acp_ind_status', '1', '', 'color:#006400;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('105100800', '0', '0,', 80, '0000000080,', '1', 0, '3nd-Level Rejected', '3nd-Level Rejected', '8', 'acp_ind_status', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='acp_operate_result';
INSERT INTO js_sys_dict_type VALUES ('106000', 'Acp Operate Result', 'acp_operate_result', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='acp_operate_result';
INSERT INTO js_sys_dict_data VALUES ('106000100', '0', '0,', 10, '0000000010,', '1', 0, 'Accepted', 'Accepted', '1', 'acp_operate_result', '1', '', 'color:#006400;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('106000200', '0', '0,', 20, '0000000020,', '1', 0, 'Rejected', 'Rejected', '2', 'acp_operate_result', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='acp_save_type';
INSERT INTO js_sys_dict_type VALUES ('107000', 'Acp Save Type', 'acp_save_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='acp_save_type';
INSERT INTO js_sys_dict_data VALUES ('107000100', '0', '0,', 10, '0000000010,', '1', 0, 'Save', 'Save', '1', 'acp_save_type', '1', '', 'color:#0000FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('107000200', '0', '0,', 20, '0000000020,', '1', 0, 'Save&Submit to approve', 'Save&Submit to approve', '2', 'acp_save_type', '1', '', 'color:#FF00FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='acp_approve_level';
INSERT INTO js_sys_dict_type VALUES ('108000', 'Acp Approve Level', 'acp_approve_level', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='acp_approve_level';
INSERT INTO js_sys_dict_data VALUES ('108000100', '0', '0,', 10, '0000000010,', '1', 0, '1st-Level', '1st-Level', '1', 'acp_approve_level', '1', '', 'color:#FF8C00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('108000200', '0', '0,', 20, '0000000020,', '1', 0, '2nd-Level', '2nd-Level', '2', 'acp_approve_level', '1', '', 'color:#0000FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('108000300', '0', '0,', 30, '0000000030,', '1', 0, '3rd-Level', '3rd-Level', '3', 'acp_approve_level', '1', '', 'color:#FF6EC7;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='acp_operate_type';
INSERT INTO js_sys_dict_type VALUES ('109000', 'Acp Operate Type', 'acp_operate_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='acp_operate_type';
INSERT INTO js_sys_dict_data VALUES ('109000000', '0', '0,',  0, '0000000000,', '1', 0, 'Submit to approve', 'Submit to approve', '0', 'acp_operate_type', '1', '', 'color:#0000FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('109000100', '0', '0,', 10, '0000000010,', '1', 0, '1st-Level Approve', '1st-Level Approve', '1', 'acp_operate_type', '1', '', 'color:#FF00FF;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('109000200', '0', '0,', 20, '0000000020,', '1', 0, '2nd-Level Approve', '2nd-Level Approve', '2', 'acp_operate_type', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('109000300', '0', '0,', 30, '0000000030,', '1', 0, '3rd-Level Approve', '3rd-Level Approve', '3', 'acp_operate_type', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('109000900', '0', '0,', 90, '0000000090,', '1', 0, 'Reset Status', 'Reset Status', '9', 'acp_operate_type', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='acp_search_status';
INSERT INTO js_sys_dict_type VALUES ('110100', 'Acp Search Status', 'acp_search_status', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='acp_search_status';
INSERT INTO js_sys_dict_data VALUES ('110100100', '0', '0,', 10, '0000000010,', '1', 0, 'Accepted', 'Accepted', '1', 'acp_search_status', '1', '', 'color:#006400;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('110100200', '0', '0,', 20, '0000000020,', '1', 0, 'Rejected', 'Rejected', '2', 'acp_search_status', '1', '', 'color:#FF0000;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('110100300', '0', '0,', 30, '0000000030,', '1', 0, 'Ongoing 2nd-Level Approval', 'Ongoing 2nd-Level Approval', '3', 'acp_search_status', '1', '', 'color:#FF9D6F;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('110100400', '0', '0,', 40, '0000000040,', '1', 0, 'Ongoing 3rd-Level Approval', 'Ongoing 3rd-Level Approval', '4', 'acp_search_status', '1', '', 'color:#FF9D6F;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
