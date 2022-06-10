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
--INSERT INTO js_sys_dict_data VALUES ('12000200', '0', '0,', 20, '0000000020,', '1', 0, '删除', '删除', '1', 'sys_column_status', '1', '', 'color:#f00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('12000300', '0', '0,', 30, '0000000030,', '1', 0, '停用', '停用', '2', 'sys_column_status', '1', '', 'color:#f00;', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM js_sys_dict_type WHERE dict_type='attribute_type';
INSERT INTO js_sys_dict_type VALUES ('13000', '基站列类型', 'attribute_type', '1', '0', 'system', now(), 'system', now(), NULL);
DELETE FROM js_sys_dict_data WHERE dict_type='attribute_type';
INSERT INTO js_sys_dict_data VALUES ('13000100', '0', '0,', 10, '0000000010,', '1', 0, 'Text', 'Text', '0', 'attribute_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('13000200', '0', '0,', 20, '0000000020,', '1', 0, 'Integer', 'Integer', '1', 'attribute_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('13000300', '0', '0,', 30, '0000000030,', '1', 0, 'Date', 'Date', '2', 'attribute_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('13000400', '0', '0,', 40, '0000000040,', '1', 0, 'DateTime', 'DateTime', '3', 'attribute_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO js_sys_dict_data VALUES ('13000220', '0', '0,', 22, '0000000022,', '1', 0, 'DECIMAL(8,6)', 'DECIMAL(8,6)', '4', 'attribute_type', '1', '', '', '', '0', 'system', now(), 'system', now(), NULL, '0', 'Yc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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



DELETE FROM yc_project;
INSERT INTO yc_project VALUES ('10000', 'PR-0000138', 'Philippines', 'Globe Telecom Mobile Networds Program', 'Greater China', 'Globe Telecom', '0', 'system', now(), 'system', now(), NULL);

DELETE FROM yc_subcontr;
INSERT INTO yc_subcontr VALUES ('10100', 'Enovell', null, null, null, null, null, '0', 'system', now(), 'system', now(), NULL);
INSERT INTO yc_subcontr VALUES ('10200', 'EPC', null, null, null, null, null, '0', 'system', now(), 'system', now(), NULL);
INSERT INTO yc_subcontr VALUES ('10300', 'Gaskie', null, null, null, null, null, '0', 'system', now(), 'system', now(), NULL);
INSERT INTO yc_subcontr VALUES ('10400', 'JXD', null, null, null, null, null, '0', 'system', now(), 'system', now(), NULL);
INSERT INTO yc_subcontr VALUES ('10500', 'Marrox', null, null, null, null, null, '0', 'system', now(), 'system', now(), NULL);
INSERT INTO yc_subcontr VALUES ('10600', 'Richworld', null, null, null, null, null, '0', 'system', now(), 'system', now(), NULL);
INSERT INTO yc_subcontr VALUES ('10700', 'TBD', null, null, null, null, null, '0', 'system', now(), 'system', now(), NULL);

DELETE FROM yc_owner;
INSERT INTO yc_owner VALUES ('10000', 'DITO', null, null, null, null, null, '0', 'system', now(), 'system', now(), NULL);




