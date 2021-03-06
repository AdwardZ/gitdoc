DELETE FROM ycosprow_site_column;
INSERT INTO ycosprow_site_column VALUES ('100000','no',100000,'DECIMAL(10,0)','no','1','No.','2','填报说明','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100030','region',100030,'VARCHAR(100)','region','0','Region','1','0','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100060','vendor',100060,'VARCHAR(100)','vendor','0','Vendor','1','简称','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100090','ditoid',100090,'VARCHAR(100)','ditoid','0','DITO ID','1','必须与“骨干&主干”中的名称一致','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100120','typeofcable',100120,'VARCHAR(100)','typeofcable','0','Type Of Cable ','1','同一准证涉及骨干及主干多条光缆时，应每条光缆占一行','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100150','province',100150,'VARCHAR(100)','province','0','Province','1','省份','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100180','dpwhdeo',100180,'VARCHAR(100)','dpwhdeo','0','DPWH DEO','1','对应DPWH的准证审批单位','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100210','lgu',100210,'VARCHAR(100)','lgu','0','LGU','1','DPWH准证时，此列为空','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100240','permitcategory',100240,'VARCHAR(100)','permitcategory','0','Permit Category','1','准证类型','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100270','location',100270,'VARCHAR(100)','location','0','Location(DPWH/LGU/Brgy)','1','根据该准证的类型，填写对应类型的名称','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100300','rowdistance',100300,'DECIMAL(10,2)','rowdistance','4','ROW Distance(KM)','2','DPWH准证时，此列为空','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100330','applydate',100330,'DATETIME','applydate','2','Apply Date','2','以向相关部门递交材料时间计算','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100360','securedate',100360,'DATETIME','securedate','2','Secure Date','2','以获得审批文件时间计算','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100390','duration',100390,'DECIMAL(10,0)','duration','1','Duration(D)','2','新增行时公式需下拉','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100420','durationreference',100420,'DECIMAL(10,0)','durationreference','1','Duration Reference(D)','2','新增行时公式需下拉','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100450','siastatus',100450,'VARCHAR(100)','siastatus','0','Status','1','新增行时公式需下拉','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100480','delayreason',100480,'VARCHAR(100)','delayreason','0','Delay Reason','1','下拉选择，不增加其他','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100510','siaremark',100510,'VARCHAR(100)','siaremark','0','Remark','1','对于表格中无法完全表达的进行详细说明','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100540','supportfromdito',100540,'VARCHAR(100)','supportfromdito','0','Support from DITO','1','填写需要DITO协助处理的事项，要求意愿描述简要且清晰','0','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100570','extendt01',100570,'VARCHAR(100)','extendt01','0','extendt01','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100600','extendt02',100600,'VARCHAR(100)','extendt02','0','extendt02','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100630','extendt03',100630,'VARCHAR(100)','extendt03','0','extendt03','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100660','extendt04',100660,'VARCHAR(100)','extendt04','0','extendt04','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100690','extendt05',100690,'VARCHAR(100)','extendt05','0','extendt05','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100720','extendt06',100720,'VARCHAR(100)','extendt06','0','extendt06','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100750','extendt07',100750,'VARCHAR(100)','extendt07','0','extendt07','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100780','extendt08',100780,'VARCHAR(100)','extendt08','0','extendt08','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100810','extendt09',100810,'VARCHAR(100)','extendt09','0','extendt09','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100840','extendt10',100840,'VARCHAR(100)','extendt10','0','extendt10','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100870','extendt11',100870,'VARCHAR(100)','extendt11','0','extendt11','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100900','extendt12',100900,'VARCHAR(100)','extendt12','0','extendt12','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100930','extendt13',100930,'VARCHAR(100)','extendt13','0','extendt13','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100960','extendt14',100960,'VARCHAR(100)','extendt14','0','extendt14','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('100990','extendt15',100990,'VARCHAR(100)','extendt15','0','extendt15','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101020','extendt16',101020,'VARCHAR(100)','extendt16','0','extendt16','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101050','extendt17',101050,'VARCHAR(100)','extendt17','0','extendt17','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101080','extendt18',101080,'VARCHAR(100)','extendt18','0','extendt18','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101110','extendt19',101110,'VARCHAR(100)','extendt19','0','extendt19','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101140','extendt20',101140,'VARCHAR(100)','extendt20','0','extendt20','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101170','extendi01',101170,'DECIMAL(10,0)','extendi01','1','extendi01','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101200','extendi02',101200,'DECIMAL(10,0)','extendi02','1','extendi02','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101230','extendi03',101230,'DECIMAL(10,0)','extendi03','1','extendi03','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101260','extendi04',101260,'DECIMAL(10,0)','extendi04','1','extendi04','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101290','extendi05',101290,'DECIMAL(10,0)','extendi05','1','extendi05','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101320','extendi06',101320,'DECIMAL(10,0)','extendi06','1','extendi06','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101350','extendi07',101350,'DECIMAL(10,0)','extendi07','1','extendi07','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101380','extendi08',101380,'DECIMAL(10,0)','extendi08','1','extendi08','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101410','extendi09',101410,'DECIMAL(10,0)','extendi09','1','extendi09','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101440','extendi10',101440,'DECIMAL(10,0)','extendi10','1','extendi10','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101470','extendi11',101470,'DECIMAL(10,0)','extendi11','1','extendi11','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101500','extendi12',101500,'DECIMAL(10,0)','extendi12','1','extendi12','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101530','extendi13',101530,'DECIMAL(10,0)','extendi13','1','extendi13','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101560','extendi14',101560,'DECIMAL(10,0)','extendi14','1','extendi14','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101590','extendi15',101590,'DECIMAL(10,0)','extendi15','1','extendi15','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101620','extendi16',101620,'DECIMAL(10,0)','extendi16','1','extendi16','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101650','extendi17',101650,'DECIMAL(10,0)','extendi17','1','extendi17','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101680','extendi18',101680,'DECIMAL(10,0)','extendi18','1','extendi18','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101710','extendi19',101710,'DECIMAL(10,0)','extendi19','1','extendi19','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101740','extendi20',101740,'DECIMAL(10,0)','extendi20','1','extendi20','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101770','extendd01',101770,'DATETIME','extendd01','2','extendd01','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101800','extendd02',101800,'DATETIME','extendd02','2','extendd02','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101830','extendd03',101830,'DATETIME','extendd03','2','extendd03','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101860','extendd04',101860,'DATETIME','extendd04','2','extendd04','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101890','extendd05',101890,'DATETIME','extendd05','2','extendd05','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101920','extendd06',101920,'DATETIME','extendd06','2','extendd06','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101950','extendd07',101950,'DATETIME','extendd07','2','extendd07','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('101980','extendd08',101980,'DATETIME','extendd08','2','extendd08','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102010','extendd09',102010,'DATETIME','extendd09','2','extendd09','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102040','extendd10',102040,'DATETIME','extendd10','2','extendd10','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102070','extendd11',102070,'DATETIME','extendd11','2','extendd11','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102100','extendd12',102100,'DATETIME','extendd12','2','extendd12','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102130','extendd13',102130,'DATETIME','extendd13','2','extendd13','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102160','extendd14',102160,'DATETIME','extendd14','2','extendd14','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102190','extendd15',102190,'DATETIME','extendd15','2','extendd15','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102220','extendd16',102220,'DATETIME','extendd16','2','extendd16','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102250','extendd17',102250,'DATETIME','extendd17','2','extendd17','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102280','extendd18',102280,'DATETIME','extendd18','2','extendd18','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102310','extendd19',102310,'DATETIME','extendd19','2','extendd19','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102340','extendd20',102340,'DATETIME','extendd20','2','extendd20','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102370','extendd21',102370,'DATETIME','extendd21','2','extendd21','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102400','extendd22',102400,'DATETIME','extendd22','2','extendd22','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102430','extendd23',102430,'DATETIME','extendd23','2','extendd23','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102460','extendd24',102460,'DATETIME','extendd24','2','extendd24','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102490','extendd25',102490,'DATETIME','extendd25','2','extendd25','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102520','extendd26',102520,'DATETIME','extendd26','2','extendd26','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102550','extendd27',102550,'DATETIME','extendd27','2','extendd27','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102580','extendd28',102580,'DATETIME','extendd28','2','extendd28','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102610','extendd29',102610,'DATETIME','extendd29','2','extendd29','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102640','extendd30',102640,'DATETIME','extendd30','2','extendd30','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102670','extendd31',102670,'DATETIME','extendd31','2','extendd31','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102700','extendd32',102700,'DATETIME','extendd32','2','extendd32','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102730','extendd33',102730,'DATETIME','extendd33','2','extendd33','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102760','extendd34',102760,'DATETIME','extendd34','2','extendd34','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102790','extendd35',102790,'DATETIME','extendd35','2','extendd35','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102820','extendd36',102820,'DATETIME','extendd36','2','extendd36','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102850','extendd37',102850,'DATETIME','extendd37','2','extendd37','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102880','extendd38',102880,'DATETIME','extendd38','2','extendd38','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102910','extendd39',102910,'DATETIME','extendd39','2','extendd39','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102940','extendd40',102940,'DATETIME','extendd40','2','extendd40','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('102970','extendd41',102970,'DATETIME','extendd41','2','extendd41','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103000','extendd42',103000,'DATETIME','extendd42','2','extendd42','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103030','extendd43',103030,'DATETIME','extendd43','2','extendd43','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103060','extendd44',103060,'DATETIME','extendd44','2','extendd44','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103090','extendd45',103090,'DATETIME','extendd45','2','extendd45','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103120','extendd46',103120,'DATETIME','extendd46','2','extendd46','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103150','extendd47',103150,'DATETIME','extendd47','2','extendd47','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103180','extendd48',103180,'DATETIME','extendd48','2','extendd48','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103210','extendd49',103210,'DATETIME','extendd49','2','extendd49','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103240','extendd50',103240,'DATETIME','extendd50','2','extendd50','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103270','extendn01',103270,'DECIMAL(8,6)','extendn01','4','extendn01','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103300','extendn02',103300,'DECIMAL(8,6)','extendn02','4','extendn02','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103330','extendn03',103330,'DECIMAL(8,6)','extendn03','4','extendn03','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103360','extendn04',103360,'DECIMAL(8,6)','extendn04','4','extendn04','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103390','extendn05',103390,'DECIMAL(8,6)','extendn05','4','extendn05','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103420','extendn06',103420,'DECIMAL(8,6)','extendn06','4','extendn06','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103450','extendn07',103450,'DECIMAL(8,6)','extendn07','4','extendn07','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103480','extendn08',103480,'DECIMAL(8,6)','extendn08','4','extendn08','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103510','extendn09',103510,'DECIMAL(8,6)','extendn09','4','extendn09','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103540','extendn10',103540,'DECIMAL(8,6)','extendn10','4','extendn10','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103570','extendn11',103570,'DECIMAL(8,6)','extendn11','4','extendn11','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103600','extendn12',103600,'DECIMAL(8,6)','extendn12','4','extendn12','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103630','extendn13',103630,'DECIMAL(8,6)','extendn13','4','extendn13','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103660','extendn14',103660,'DECIMAL(8,6)','extendn14','4','extendn14','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103690','extendn15',103690,'DECIMAL(8,6)','extendn15','4','extendn15','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103720','extendn16',103720,'DECIMAL(8,6)','extendn16','4','extendn16','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103750','extendn17',103750,'DECIMAL(8,6)','extendn17','4','extendn17','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103780','extendn18',103780,'DECIMAL(8,6)','extendn18','4','extendn18','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103810','extendn19',103810,'DECIMAL(8,6)','extendn19','4','extendn19','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycosprow_site_column VALUES ('103840','extendn20',103840,'DECIMAL(8,6)','extendn20','4','extendn20','2','N/A','1','system',now(),'system',now(),'');
