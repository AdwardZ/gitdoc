DROP TABLE IF EXISTS ycosp_site;
CREATE TABLE ycosp_site (
	id					VARCHAR(100)	NOT NULL	COMMENT 'ID',
	physicalplansiteid	VARCHAR(64)	NOT NULL	COMMENT 'Site Name',
	type	VARCHAR(100)	NULL	COMMENT 'Type',
	distance	DECIMAL(10,7)	NULL	COMMENT 'Distance',
	surveyanddesign	VARCHAR(100)	NOT NULL	COMMENT 'Subcon<br>S&D',
	implementation	VARCHAR(100)	NOT NULL	COMMENT 'Subcon<br>Implementation',
	issueddate	DATETIME	NULL	COMMENT 'PO<br>Issued Date',
	closedate	DATETIME	NULL	COMMENT 'PO<br>Close Date',
	payment	DATETIME	NULL	COMMENT 'PO<br>Payment',
	deliverydate	VARCHAR(100)	NULL	COMMENT 'DO<br>Delivery Date',
	materialslist	DATETIME	NULL	COMMENT 'DO<br>Materials list',
	dddandreviewmeeting	DATETIME	NULL	COMMENT 'DDD and Review<br>meeting Minutes',
	approvedlld	DATETIME	NULL	COMMENT 'S & D<br>Approved LLD',
	permitlist	DATETIME	NULL	COMMENT 'ROW<br>Permit List',
	securedate	VARCHAR(100)	NULL	COMMENT 'ROW<br>Secure Date',
	permittingdocum	DATETIME	NULL	COMMENT 'ROW<br>Permitting Documentation',
	polequantity	VARCHAR(100)	NULL	COMMENT 'Pole Erection<br>Pole Quantity',
	pepacpicture	DATETIME	NULL	COMMENT 'Pole Erection<br>PAC Picture',
	guyingquantity	VARCHAR(100)	NULL	COMMENT 'Guying<br>Quantity',
	gypacpicture	DATETIME	NULL	COMMENT 'Guying<br>PAC Picture',
	cfpacpicture	DATETIME	NULL	COMMENT 'Cable Fixing<br>PAC Picture',
	groundingquantity	VARCHAR(100)	 NULL	COMMENT 'Grounding<br>Grounding Quantity',
	gdinstallationpicture	DATETIME	NULL	COMMENT 'Grounding<br>Installation Picture',
	testingreport	VARCHAR(100)	 NULL	COMMENT 'Grounding<br>Testing Report',
	pacpicture	DATETIME	NULL	COMMENT 'Joint Splicing<br>PAC Picture',
	odfinstallationpicture	DATETIME	NULL	COMMENT 'ODF<br>Installation Picture',
	terminationpicture	DATETIME	NULL	COMMENT 'ODF<br>Termination Picture',
	otdrpowermeterreport	DATETIME	NULL	COMMENT 'Fiber Testing<br>OTDR/Power Meter Report',
	completreport	DATETIME	NULL	COMMENT 'Completion<br>Report',
	qscreport	DATETIME	NULL	COMMENT 'Quality self-Check<br>Report',
	crapprovalform	DATETIME	NULL	COMMENT 'Change Request<br>Approval Form',
	pqcvreport	DATETIME	NULL	COMMENT 'Project Quantity and Cost Visa<br>Report',
	boqapprovalform	DATETIME	NULL	COMMENT 'BOQ Submission<br>Approval Form',
	verificationrecords	DATETIME	NULL	COMMENT 'BOQ on Site<br>Verification Records',
	drawings	DATETIME	NULL	COMMENT 'As-built<br>Drawings',
	extendt01	VARCHAR(100)	 NULL	COMMENT 'extendt01',
	extendt02	VARCHAR(100)	 NULL	COMMENT 'extendt02',
	extendt03	VARCHAR(100)	 NULL	COMMENT 'extendt03',
	extendt04	VARCHAR(100)	 NULL	COMMENT 'extendt04',
	extendt05	VARCHAR(100)	 NULL	COMMENT 'extendt05',
	extendt06	VARCHAR(100)	 NULL	COMMENT 'extendt06',
	extendt07	VARCHAR(100)	 NULL	COMMENT 'extendt07',
	extendt08	VARCHAR(100)	 NULL	COMMENT 'extendt08',
	extendt09	VARCHAR(100)	 NULL	COMMENT 'extendt09',
	extendt10	VARCHAR(100)	 NULL	COMMENT 'extendt10',
	extendt11	VARCHAR(100)	 NULL	COMMENT 'extendt11',
	extendt12	VARCHAR(100)	 NULL	COMMENT 'extendt12',
	extendt13	VARCHAR(100)	 NULL	COMMENT 'extendt13',
	extendt14	VARCHAR(100)	 NULL	COMMENT 'extendt14',
	extendt15	VARCHAR(100)	 NULL	COMMENT 'extendt15',
	extendt16	VARCHAR(100)	 NULL	COMMENT 'extendt16',
	extendt17	VARCHAR(100)	 NULL	COMMENT 'extendt17',
	extendt18	VARCHAR(100)	 NULL	COMMENT 'extendt18',
	extendt19	VARCHAR(100)	 NULL	COMMENT 'extendt19',
	extendt20	VARCHAR(100)	 NULL	COMMENT 'extendt20',
	extendi01	DECIMAL(10,0)	 NULL	COMMENT 'extendi01',
	extendi02	DECIMAL(10,0)	 NULL	COMMENT 'extendi02',
	extendi03	DECIMAL(10,0)	 NULL	COMMENT 'extendi03',
	extendi04	DECIMAL(10,0)	 NULL	COMMENT 'extendi04',
	extendi05	DECIMAL(10,0)	 NULL	COMMENT 'extendi05',
	extendi06	DECIMAL(10,0)	 NULL	COMMENT 'extendi06',
	extendi07	DECIMAL(10,0)	 NULL	COMMENT 'extendi07',
	extendi08	DECIMAL(10,0)	 NULL	COMMENT 'extendi08',
	extendi09	DECIMAL(10,0)	 NULL	COMMENT 'extendi09',
	extendi10	DECIMAL(10,0)	 NULL	COMMENT 'extendi10',
	extendi11	DECIMAL(10,0)	 NULL	COMMENT 'extendi11',
	extendi12	DECIMAL(10,0)	 NULL	COMMENT 'extendi12',
	extendi13	DECIMAL(10,0)	 NULL	COMMENT 'extendi13',
	extendi14	DECIMAL(10,0)	 NULL	COMMENT 'extendi14',
	extendi15	DECIMAL(10,0)	 NULL	COMMENT 'extendi15',
	extendi16	DECIMAL(10,0)	 NULL	COMMENT 'extendi16',
	extendi17	DECIMAL(10,0)	 NULL	COMMENT 'extendi17',
	extendi18	DECIMAL(10,0)	 NULL	COMMENT 'extendi18',
	extendi19	DECIMAL(10,0)	 NULL	COMMENT 'extendi19',
	extendi20	DECIMAL(10,0)	 NULL	COMMENT 'extendi20',
	extendd01	DATETIME	 NULL	COMMENT 'extendd01',
	extendd02	DATETIME	 NULL	COMMENT 'extendd02',
	extendd03	DATETIME	 NULL	COMMENT 'extendd03',
	extendd04	DATETIME	 NULL	COMMENT 'extendd04',
	extendd05	DATETIME	 NULL	COMMENT 'extendd05',
	extendd06	DATETIME	 NULL	COMMENT 'extendd06',
	extendd07	DATETIME	 NULL	COMMENT 'extendd07',
	extendd08	DATETIME	 NULL	COMMENT 'extendd08',
	extendd09	DATETIME	 NULL	COMMENT 'extendd09',
	extendd10	DATETIME	 NULL	COMMENT 'extendd10',
	extendd11	DATETIME	 NULL	COMMENT 'extendd11',
	extendd12	DATETIME	 NULL	COMMENT 'extendd12',
	extendd13	DATETIME	 NULL	COMMENT 'extendd13',
	extendd14	DATETIME	 NULL	COMMENT 'extendd14',
	extendd15	DATETIME	 NULL	COMMENT 'extendd15',
	extendd16	DATETIME	 NULL	COMMENT 'extendd16',
	extendd17	DATETIME	 NULL	COMMENT 'extendd17',
	extendd18	DATETIME	 NULL	COMMENT 'extendd18',
	extendd19	DATETIME	 NULL	COMMENT 'extendd19',
	extendd20	DATETIME	 NULL	COMMENT 'extendd20',
	extendd21	DATETIME	 NULL	COMMENT 'extendd21',
	extendd22	DATETIME	 NULL	COMMENT 'extendd22',
	extendd23	DATETIME	 NULL	COMMENT 'extendd23',
	extendd24	DATETIME	 NULL	COMMENT 'extendd24',
	extendd25	DATETIME	 NULL	COMMENT 'extendd25',
	extendd26	DATETIME	 NULL	COMMENT 'extendd26',
	extendd27	DATETIME	 NULL	COMMENT 'extendd27',
	extendd28	DATETIME	 NULL	COMMENT 'extendd28',
	extendd29	DATETIME	 NULL	COMMENT 'extendd29',
	extendd30	DATETIME	 NULL	COMMENT 'extendd30',
	extendd31	DATETIME	 NULL	COMMENT 'extendd31',
	extendd32	DATETIME	 NULL	COMMENT 'extendd32',
	extendd33	DATETIME	 NULL	COMMENT 'extendd33',
	extendd34	DATETIME	 NULL	COMMENT 'extendd34',
	extendd35	DATETIME	 NULL	COMMENT 'extendd35',
	extendd36	DATETIME	 NULL	COMMENT 'extendd36',
	extendd37	DATETIME	 NULL	COMMENT 'extendd37',
	extendd38	DATETIME	 NULL	COMMENT 'extendd38',
	extendd39	DATETIME	 NULL	COMMENT 'extendd39',
	extendd40	DATETIME	 NULL	COMMENT 'extendd40',
	extendd41	DATETIME	 NULL	COMMENT 'extendd41',
	extendd42	DATETIME	 NULL	COMMENT 'extendd42',
	extendd43	DATETIME	 NULL	COMMENT 'extendd43',
	extendd44	DATETIME	 NULL	COMMENT 'extendd44',
	extendd45	DATETIME	 NULL	COMMENT 'extendd45',
	extendd46	DATETIME	 NULL	COMMENT 'extendd46',
	extendd47	DATETIME	 NULL	COMMENT 'extendd47',
	extendd48	DATETIME	 NULL	COMMENT 'extendd48',
	extendd49	DATETIME	 NULL	COMMENT 'extendd49',
	extendd50	DATETIME	 NULL	COMMENT 'extendd50',
	extendn01	DECIMAL(8,6)	 NULL	COMMENT 'extendn01',
	extendn02	DECIMAL(8,6)	 NULL	COMMENT 'extendn02',
	extendn03	DECIMAL(8,6)	 NULL	COMMENT 'extendn03',
	extendn04	DECIMAL(8,6)	 NULL	COMMENT 'extendn04',
	extendn05	DECIMAL(8,6)	 NULL	COMMENT 'extendn05',
	extendn06	DECIMAL(8,6)	 NULL	COMMENT 'extendn06',
	extendn07	DECIMAL(8,6)	 NULL	COMMENT 'extendn07',
	extendn08	DECIMAL(8,6)	 NULL	COMMENT 'extendn08',
	extendn09	DECIMAL(8,6)	 NULL	COMMENT 'extendn09',
	extendn10	DECIMAL(8,6)	 NULL	COMMENT 'extendn10',
	extendn11	DECIMAL(8,6)	 NULL	COMMENT 'extendn11',
	extendn12	DECIMAL(8,6)	 NULL	COMMENT 'extendn12',
	extendn13	DECIMAL(8,6)	 NULL	COMMENT 'extendn13',
	extendn14	DECIMAL(8,6)	 NULL	COMMENT 'extendn14',
	extendn15	DECIMAL(8,6)	 NULL	COMMENT 'extendn15',
	extendn16	DECIMAL(8,6)	 NULL	COMMENT 'extendn16',
	extendn17	DECIMAL(8,6)	 NULL	COMMENT 'extendn17',
	extendn18	DECIMAL(8,6)	 NULL	COMMENT 'extendn18',
	extendn19	DECIMAL(8,6)	 NULL	COMMENT 'extendn19',
	extendn20	DECIMAL(8,6)	 NULL	COMMENT 'extendn20',
	status				CHAR(1)			NOT NULL	DEFAULT '0'COMMENT 'Status(0-normal 1-delete 2suspend 3error)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
) COMMENT = 'OSPSite';