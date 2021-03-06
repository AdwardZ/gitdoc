DELETE FROM ycospsia_site_column;
INSERT INTO ycospsia_site_column VALUES ('100000','no',100000,'DECIMAL(10,0)','no','1','No.','2','N/A','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100030','region',100030,'VARCHAR(100)','region','0','Region','1','Site Access information Design','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100060','vendor',100060,'VARCHAR(100)','vendor','0','Vendor','1','Site Access information Design','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100090','design',100090,'VARCHAR(100)','design','0','Design','1','Site Access information Design','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100120','nameofa',100120,'VARCHAR(100)','nameofa','0','Name of A','1','Site Access information Design','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100150','apointtype',100150,'VARCHAR(100)','apointtype','0','A端类型','1','Site Access information Design','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100180','bpoint',100180,'VARCHAR(100)','bpoint','0','B端（主干/机房/基站名称）','1','Site Access information Design','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100210','bpointtype',100210,'VARCHAR(100)','bpointtype','0','B端类型','1','Site Access information Design','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100240','accesstype',100240,'VARCHAR(100)','accesstype','0','接入类型','1','Site Access information Design','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100270','cablesectionname',100270,'VARCHAR(100)','cablesectionname','0','光缆段名称','1','Site Access information Design','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100300','cabletype',100300,'VARCHAR(100)','cabletype','0','光缆类型','1','Site Access information Design','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100330','fibercores',100330,'VARCHAR(100)','fibercores','0','Fiber Cores','1','Site Access information Design','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100360','lengthplanning',100360,'VARCHAR(100)','lengthplanning','0','Length Planning','1','Site Access information Design','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100390','priority',100390,'VARCHAR(100)','priority','0','Priority','1','Site Access information Design','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100420','astatus',100420,'DATETIME','astatus','2','A Status','2','N/A','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100450','agps',100450,'VARCHAR(100)','agps','0','A GPS','1','N/A','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100480','bstatus',100480,'VARCHAR(100)','bstatus','0','B Status','1','N/A','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100510','bgps',100510,'VARCHAR(100)','bgps','0','B GPS','1','N/A','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100540','endtoeedsulutionwithosp',100540,'VARCHAR(100)','endtoeedsulutionwithosp','0','End to Eed sulution with OSP','1','N/A','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100570','drwaingdone',100570,'VARCHAR(100)','drwaingdone','0','Drwaing Done','1','SURVEY & DESIGN','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100600','drwaingchanged',100600,'VARCHAR(100)','drwaingchanged','0','Drwaing Changed','1','SURVEY & DESIGN','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100630','planninglength',100630,'VARCHAR(100)','planninglength','0','Planning length','1','SURVEY & DESIGN','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100660','budget',100660,'VARCHAR(100)','budget','0','Budget','1','SURVEY & DESIGN','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100690','rtaplanning',100690,'VARCHAR(100)','rtaplanning','0','RTA Planning','1','ROW','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100720','rtaissued',100720,'VARCHAR(100)','rtaissued','0','RTA issued','1','ROW','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100750','rtasecured',100750,'VARCHAR(100)','rtasecured','0','RTA secured','1','ROW','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100780','levelrowsecured',100780,'VARCHAR(100)','levelrowsecured','0','Level 1 ROW secured(KM)','1','ROW','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100810','rfc',100810,'VARCHAR(100)','rfc','0','RFC（km）','1','ROW','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100840','lengthunderconstruction',100840,'VARCHAR(100)','lengthunderconstruction','0','Length under construction','1','Construction progress (Vendor)','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100870','completedlengthofprop',100870,'VARCHAR(100)','completedlengthofprop','0','Completed length of proposed pole route','1','Construction progress (Vendor)','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100900','completedlength',100900,'VARCHAR(100)','completedlength','0','Completed length','1','Construction progress (Vendor)','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100930','wherelayseccanacc',100930,'VARCHAR(100)','wherelayseccanacc','0','Whether relay section can be accepted','1','Construction progress (Vendor)','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100960','wherelaysechasacc',100960,'VARCHAR(100)','wherelaysechasacc','0','Whether relay section has been accepted','1','Construction progress (Vendor)','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('100990','constructionobstruction',100990,'VARCHAR(100)','constructionobstruction','0','Construction obstruction','1','Construction progress (Vendor)','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101020','mainbname',101020,'VARCHAR(100)','mainbname','0','【Main】B Name','1','【Main】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101050','mainbstatus',101050,'VARCHAR(100)','mainbstatus','0','【Main】B status','1','【Main】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101080','mainbgps',101080,'VARCHAR(100)','mainbgps','0','【Main】B GPS','1','【Main】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101110','mainfibercores',101110,'VARCHAR(100)','mainfibercores','0','【Main】Fiber cores','1','【Main】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101140','mainsolutionissued',101140,'VARCHAR(100)','mainsolutionissued','0','【Main】Solution issued to TD','1','【Main】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101170','mainresourceavailable',101170,'VARCHAR(100)','mainresourceavailable','0','【Main】Resource Available by TD','1','【Main】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101200','maintdapproval',101200,'VARCHAR(100)','maintdapproval','0','【Main】TD Approval','1','【Main】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101230','mainporeleasedbytd',101230,'VARCHAR(100)','mainporeleasedbytd','0','【Main】PO released by TD','1','【Main】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101260','mainremark',101260,'VARCHAR(100)','mainremark','0','【Main】Remark','1','【Main】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101290','backupbname',101290,'VARCHAR(100)','backupbname','0','【Backup】B Name','1','【Backup】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101320','backupbstatus',101320,'VARCHAR(100)','backupbstatus','0','【Backup】B status','1','【Backup】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101350','backupbgps',101350,'VARCHAR(100)','backupbgps','0','【Backup】B GPS','1','【Backup】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101380','backupfibercores',101380,'VARCHAR(100)','backupfibercores','0','【Backup】Fiber cores','1','【Backup】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101410','backupsolution',101410,'VARCHAR(100)','backupsolution','0','【Backup】Solution issued to TD','1','【Backup】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101440','backupresource',101440,'VARCHAR(100)','backupresource','0','【Backup】Resource Available by TD','1','【Backup】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101470','backuptdapproval',101470,'VARCHAR(100)','backuptdapproval','0','【Backup】TD Approval','1','【Backup】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101500','backupporeleased',101500,'VARCHAR(100)','backupporeleased','0','【Backup】PO released by TD','1','【Backup】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101530','backupremark',101530,'VARCHAR(100)','backupremark','0','【Backup】Remark','1','【Backup】Transmission Rent','0','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101560','extendt01',101560,'VARCHAR(100)','extendt01','0','extendt01','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101590','extendt02',101590,'VARCHAR(100)','extendt02','0','extendt02','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101620','extendt03',101620,'VARCHAR(100)','extendt03','0','extendt03','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101650','extendt04',101650,'VARCHAR(100)','extendt04','0','extendt04','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101680','extendt05',101680,'VARCHAR(100)','extendt05','0','extendt05','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101710','extendt06',101710,'VARCHAR(100)','extendt06','0','extendt06','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101740','extendt07',101740,'VARCHAR(100)','extendt07','0','extendt07','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101770','extendt08',101770,'VARCHAR(100)','extendt08','0','extendt08','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101800','extendt09',101800,'VARCHAR(100)','extendt09','0','extendt09','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101830','extendt10',101830,'VARCHAR(100)','extendt10','0','extendt10','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101860','extendt11',101860,'VARCHAR(100)','extendt11','0','extendt11','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101890','extendt12',101890,'VARCHAR(100)','extendt12','0','extendt12','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101920','extendt13',101920,'VARCHAR(100)','extendt13','0','extendt13','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101950','extendt14',101950,'VARCHAR(100)','extendt14','0','extendt14','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('101980','extendt15',101980,'VARCHAR(100)','extendt15','0','extendt15','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102010','extendt16',102010,'VARCHAR(100)','extendt16','0','extendt16','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102040','extendt17',102040,'VARCHAR(100)','extendt17','0','extendt17','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102070','extendt18',102070,'VARCHAR(100)','extendt18','0','extendt18','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102100','extendt19',102100,'VARCHAR(100)','extendt19','0','extendt19','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102130','extendt20',102130,'VARCHAR(100)','extendt20','0','extendt20','1','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102160','extendi01',102160,'DECIMAL(10,0)','extendi01','1','extendi01','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102190','extendi02',102190,'DECIMAL(10,0)','extendi02','1','extendi02','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102220','extendi03',102220,'DECIMAL(10,0)','extendi03','1','extendi03','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102250','extendi04',102250,'DECIMAL(10,0)','extendi04','1','extendi04','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102280','extendi05',102280,'DECIMAL(10,0)','extendi05','1','extendi05','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102310','extendi06',102310,'DECIMAL(10,0)','extendi06','1','extendi06','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102340','extendi07',102340,'DECIMAL(10,0)','extendi07','1','extendi07','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102370','extendi08',102370,'DECIMAL(10,0)','extendi08','1','extendi08','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102400','extendi09',102400,'DECIMAL(10,0)','extendi09','1','extendi09','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102430','extendi10',102430,'DECIMAL(10,0)','extendi10','1','extendi10','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102460','extendi11',102460,'DECIMAL(10,0)','extendi11','1','extendi11','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102490','extendi12',102490,'DECIMAL(10,0)','extendi12','1','extendi12','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102520','extendi13',102520,'DECIMAL(10,0)','extendi13','1','extendi13','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102550','extendi14',102550,'DECIMAL(10,0)','extendi14','1','extendi14','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102580','extendi15',102580,'DECIMAL(10,0)','extendi15','1','extendi15','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102610','extendi16',102610,'DECIMAL(10,0)','extendi16','1','extendi16','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102640','extendi17',102640,'DECIMAL(10,0)','extendi17','1','extendi17','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102670','extendi18',102670,'DECIMAL(10,0)','extendi18','1','extendi18','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102700','extendi19',102700,'DECIMAL(10,0)','extendi19','1','extendi19','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102730','extendi20',102730,'DECIMAL(10,0)','extendi20','1','extendi20','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102760','extendd01',102760,'DATETIME','extendd01','2','extendd01','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102790','extendd02',102790,'DATETIME','extendd02','2','extendd02','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102820','extendd03',102820,'DATETIME','extendd03','2','extendd03','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102850','extendd04',102850,'DATETIME','extendd04','2','extendd04','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102880','extendd05',102880,'DATETIME','extendd05','2','extendd05','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102910','extendd06',102910,'DATETIME','extendd06','2','extendd06','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102940','extendd07',102940,'DATETIME','extendd07','2','extendd07','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('102970','extendd08',102970,'DATETIME','extendd08','2','extendd08','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103000','extendd09',103000,'DATETIME','extendd09','2','extendd09','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103030','extendd10',103030,'DATETIME','extendd10','2','extendd10','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103060','extendd11',103060,'DATETIME','extendd11','2','extendd11','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103090','extendd12',103090,'DATETIME','extendd12','2','extendd12','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103120','extendd13',103120,'DATETIME','extendd13','2','extendd13','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103150','extendd14',103150,'DATETIME','extendd14','2','extendd14','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103180','extendd15',103180,'DATETIME','extendd15','2','extendd15','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103210','extendd16',103210,'DATETIME','extendd16','2','extendd16','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103240','extendd17',103240,'DATETIME','extendd17','2','extendd17','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103270','extendd18',103270,'DATETIME','extendd18','2','extendd18','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103300','extendd19',103300,'DATETIME','extendd19','2','extendd19','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103330','extendd20',103330,'DATETIME','extendd20','2','extendd20','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103360','extendd21',103360,'DATETIME','extendd21','2','extendd21','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103390','extendd22',103390,'DATETIME','extendd22','2','extendd22','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103420','extendd23',103420,'DATETIME','extendd23','2','extendd23','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103450','extendd24',103450,'DATETIME','extendd24','2','extendd24','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103480','extendd25',103480,'DATETIME','extendd25','2','extendd25','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103510','extendd26',103510,'DATETIME','extendd26','2','extendd26','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103540','extendd27',103540,'DATETIME','extendd27','2','extendd27','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103570','extendd28',103570,'DATETIME','extendd28','2','extendd28','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103600','extendd29',103600,'DATETIME','extendd29','2','extendd29','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103630','extendd30',103630,'DATETIME','extendd30','2','extendd30','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103660','extendd31',103660,'DATETIME','extendd31','2','extendd31','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103690','extendd32',103690,'DATETIME','extendd32','2','extendd32','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103720','extendd33',103720,'DATETIME','extendd33','2','extendd33','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103750','extendd34',103750,'DATETIME','extendd34','2','extendd34','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103780','extendd35',103780,'DATETIME','extendd35','2','extendd35','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103810','extendd36',103810,'DATETIME','extendd36','2','extendd36','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103840','extendd37',103840,'DATETIME','extendd37','2','extendd37','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103870','extendd38',103870,'DATETIME','extendd38','2','extendd38','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103900','extendd39',103900,'DATETIME','extendd39','2','extendd39','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103930','extendd40',103930,'DATETIME','extendd40','2','extendd40','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103960','extendd41',103960,'DATETIME','extendd41','2','extendd41','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('103990','extendd42',103990,'DATETIME','extendd42','2','extendd42','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104020','extendd43',104020,'DATETIME','extendd43','2','extendd43','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104050','extendd44',104050,'DATETIME','extendd44','2','extendd44','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104080','extendd45',104080,'DATETIME','extendd45','2','extendd45','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104110','extendd46',104110,'DATETIME','extendd46','2','extendd46','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104140','extendd47',104140,'DATETIME','extendd47','2','extendd47','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104170','extendd48',104170,'DATETIME','extendd48','2','extendd48','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104200','extendd49',104200,'DATETIME','extendd49','2','extendd49','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104230','extendd50',104230,'DATETIME','extendd50','2','extendd50','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104260','extendn01',104260,'DECIMAL(8,6)','extendn01','4','extendn01','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104290','extendn02',104290,'DECIMAL(8,6)','extendn02','4','extendn02','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104320','extendn03',104320,'DECIMAL(8,6)','extendn03','4','extendn03','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104350','extendn04',104350,'DECIMAL(8,6)','extendn04','4','extendn04','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104380','extendn05',104380,'DECIMAL(8,6)','extendn05','4','extendn05','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104410','extendn06',104410,'DECIMAL(8,6)','extendn06','4','extendn06','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104440','extendn07',104440,'DECIMAL(8,6)','extendn07','4','extendn07','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104470','extendn08',104470,'DECIMAL(8,6)','extendn08','4','extendn08','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104500','extendn09',104500,'DECIMAL(8,6)','extendn09','4','extendn09','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104530','extendn10',104530,'DECIMAL(8,6)','extendn10','4','extendn10','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104560','extendn11',104560,'DECIMAL(8,6)','extendn11','4','extendn11','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104590','extendn12',104590,'DECIMAL(8,6)','extendn12','4','extendn12','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104620','extendn13',104620,'DECIMAL(8,6)','extendn13','4','extendn13','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104650','extendn14',104650,'DECIMAL(8,6)','extendn14','4','extendn14','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104680','extendn15',104680,'DECIMAL(8,6)','extendn15','4','extendn15','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104710','extendn16',104710,'DECIMAL(8,6)','extendn16','4','extendn16','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104740','extendn17',104740,'DECIMAL(8,6)','extendn17','4','extendn17','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104770','extendn18',104770,'DECIMAL(8,6)','extendn18','4','extendn18','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104800','extendn19',104800,'DECIMAL(8,6)','extendn19','4','extendn19','2','N/A','1','system',now(),'system',now(),'');
INSERT INTO ycospsia_site_column VALUES ('104830','extendn20',104830,'DECIMAL(8,6)','extendn20','4','extendn20','2','N/A','1','system',now(),'system',now(),'');
