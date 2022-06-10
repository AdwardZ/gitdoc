DROP TABLE IF EXISTS yc_site;
CREATE TABLE yc_site (
	id					VARCHAR(100)	NOT NULL	COMMENT 'ID',
	physicalplan_siteid	VARCHAR(64)	NOT NULL	COMMENT 'Physical Plan<br>Site ID',
	longitude	DECIMAL(10,7)	NULL	COMMENT 'Longitude',
	latitude	DECIMAL(10,7)	NULL	COMMENT 'Latitude',
	areatype	VARCHAR(100)	NULL	COMMENT 'Area Type',
	sitetype	VARCHAR(100)	NULL	COMMENT 'Site Type',
	new_sitetype	VARCHAR(100)	NULL	COMMENT 'New<br>Site Type',
	syear	VARCHAR(100)	NULL	COMMENT 'Year',
	bands	VARCHAR(100)	NULL	COMMENT 'Bands',
	region	VARCHAR(100)	NULL	COMMENT 'Region',
	city	VARCHAR(100)	NULL	COMMENT 'City/Municipality',
	barangay	VARCHAR(100)	NULL	COMMENT 'Barangay',
	area	VARCHAR(100)	NULL	COMMENT 'Area',
	brgy_code	VARCHAR(100)	NULL	COMMENT 'brgy_code',
	brgy_pop	DECIMAL(10,0)	NULL	COMMENT 'brgy_pop',
	height	DECIMAL(10,0)	NULL	COMMENT 'Height<br>(m)',
	towertype	VARCHAR(100)	NULL	COMMENT 'Tower Type',
	co_homing	VARCHAR(100)	NULL	COMMENT 'CO<br>Homing',
	distance	DECIMAL(19,10)	NULL	COMMENT 'Distance<br>(km)',
	snnn	VARCHAR(100)	NULL	COMMENT 'S/N',
	spriority	VARCHAR(100)	NULL	COMMENT 'Priority',
	phase_baseline	VARCHAR(100)	NULL	COMMENT 'Phase(baseline)',
	phase_2020_v1	VARCHAR(100)	NULL	COMMENT 'Phase<br>(2020_v1)',
	phase_2020_v2	VARCHAR(100)	NULL	COMMENT 'Phase<br>(2020_v2)',
	friendly_site	VARCHAR(100)	NULL	COMMENT 'Friendly<br>Site',
	saq_clustering	VARCHAR(100)	NOT NULL	COMMENT 'SAQ<br>Clustering',
	saqvendor	VARCHAR(100)	NOT NULL	COMMENT 'SAQ Vendor',
	saqponumber	VARCHAR(100)	NULL	COMMENT 'SAQ PO Number',
	saqpobatch	VARCHAR(100)	NULL	COMMENT 'SAQ PO Batch',
	tss_dddvendor	VARCHAR(100)	NULL	COMMENT 'TSS/DDD Vendor',
	tss_dddponumber	VARCHAR(100)	NULL	COMMENT 'TSS/DDD PO Number',
	cmevendor	VARCHAR(100)	NULL	COMMENT 'CME Vendor',
	cmeponumber	VARCHAR(100)	NULL	COMMENT 'CME PO Number',
	sarfissued	DATETIME	NULL	COMMENT 'SARF Issued',
	surveydone_plan	DATETIME	NULL	COMMENT 'Survey Done<br>Plan',
	surverydone_actual	DATETIME	NULL	COMMENT 'Survery Done<br>Actual',
	submitted_plan	DATETIME	NULL	COMMENT 'Submitted<br>Plan',
	submitted_optiona	DATETIME	NULL	COMMENT 'Submitted<br>Option A',
	submitted_optionb	DATETIME	NULL	COMMENT 'Submitted<br>Option B',
	submitted_optionc	DATETIME	NULL	COMMENT 'Submitted<br>Option C',
	submitted_optiond	DATETIME	NULL	COMMENT 'Submitted<br>Option D',
	submitted_actual	DATETIME	NULL	COMMENT 'Submitted<br>Actual',
	reviewed_optiona	DATETIME	NULL	COMMENT 'Reviewed<br>Option A',
	reviewed_optionb	DATETIME	NULL	COMMENT 'Reviewed<br>Option B',
	reviewed_optionc	DATETIME	NULL	COMMENT 'Reviewed<br>Option C',
	reviewed_optiond	VARCHAR(100)	NULL	COMMENT 'Reviewed<br>Option D',
	reviewed_actual	VARCHAR(100)	NULL	COMMENT 'Reviewed<br>Actual',
	sar_remarks	VARCHAR(200)	NULL	COMMENT 'SAR<br>Remarks',
	revision_1st	DATETIME	NULL	COMMENT '1st<br>Revision',
	revision_2nd	DATETIME	NULL	COMMENT '2nd<br>Revision',
	approved_plan	DATETIME	NULL	COMMENT 'Approved<br>Plan',
	approved_optiona	DATETIME	NULL	COMMENT 'Approved<br>Option A',
	approved_optionb	DATETIME	NULL	COMMENT 'Approved<br>Option B',
	approved_optionc	DATETIME	NULL	COMMENT 'Approved<br>Option C',
	approved_optiond	DATETIME	NULL	COMMENT 'Approved<br>Option D',
	approved_actual	DATETIME	NULL	COMMENT 'Approved<br>Actual',
	mocsigned_optiona	DATETIME	NULL	COMMENT 'MOC Signed<br>Option A',
	mocsigned_optionb	DATETIME	NULL	COMMENT 'MOC Signed<br>Option B',
	mocsigned_optionc	DATETIME	NULL	COMMENT 'MOC Signed<br>Option C',
	mocsigned_optiond	DATETIME	NULL	COMMENT 'MOC Signed<br>Option D',
	mocsigned_actual	DATETIME	NULL	COMMENT 'MOC Signed<br>Actual',
	mocsubmitted_actual	DATETIME	NULL	COMMENT 'MOC Submitted<br>Actual',
	mocapproved_plan	DATETIME	NULL	COMMENT 'MOC Approved<br>Plan',
	mocapproved_actual	DATETIME	NULL	COMMENT 'MOC Approved<br>Actual',
	mocforrenego	VARCHAR(100)	NULL	COMMENT 'MOC for Renego',
	mocremarks	VARCHAR(200)	NULL	COMMENT 'MOC Remarks',
	nrafsubmitted_actual	DATETIME	NULL	COMMENT 'NRAF Submitted<br>Actual',
	nrafapproved_actual	DATETIME	NULL	COMMENT 'NRAF Approved<br>Actual',
	approved_option	VARCHAR(100)	NULL	COMMENT 'Approved<br>Option',
	lessorname	VARCHAR(100)	NULL	COMMENT 'Lessor Name',
	siteaddress	VARCHAR(100)	NULL	COMMENT 'Site Address',
	act_province	VARCHAR(100)	 NULL	COMMENT 'Province',
	act_longitude	DECIMAL(10,7)	 NULL	COMMENT 'ACT Longitude',
	act_latitude	DECIMAL(10,7)	 NULL	COMMENT 'ACT Latitude',
	act_sitetype	VARCHAR(100)	 NULL	COMMENT 'Site Type',
	altitude	DECIMAL(10,0)	 NULL	COMMENT 'Altitude(m)',
	buildingheight	DECIMAL(10,0)	 NULL	COMMENT 'Building Height (RT)(m)',
	periodof_lease	VARCHAR(100)	 NULL	COMMENT 'Period of<br>Lease',
	monthly_rent	VARCHAR(100)	 NULL	COMMENT 'Monthly<br>Rent',
	payment	VARCHAR(100)	 NULL	COMMENT 'Payment',
	leasearea	VARCHAR(100)	 NULL	COMMENT 'Lease Area',
	advance_rental	VARCHAR(100)	 NULL	COMMENT 'Advance<br>Rental',
	security_deposit	VARCHAR(100)	 NULL	COMMENT 'Security<br>Deposit',
	escalation_rate	VARCHAR(100)	 NULL	COMMENT 'Escalation<br>Rate',
	neighbors_actual	DATETIME	 NULL	COMMENT 'Neighbors<br>Actual',
	noneighbors_actual	DATETIME	 NULL	COMMENT 'No Neighbors<br>Actual',
	nameof_subdivision_hoa	DATETIME	 NULL	COMMENT 'Name of<br>Subdivision/HOA',
	nameof_hoapresident	DATETIME	 NULL	COMMENT 'Name of<br>HOA President',
	hoapresidentcontactno	DATETIME	 NULL	COMMENT 'HOA President Contact No.',
	hoaclearance_secured	DATETIME	 NULL	COMMENT 'HOA Clearance<br>Secured',
	brgyclearance_plan	DATETIME	 NULL	COMMENT 'BrgyClearance<br>Plan',
	brgyclearance_applied	DATETIME	 NULL	COMMENT 'BrgyClearance<br>Applied',
	brgyclearance_actual	DATETIME	 NULL	COMMENT 'BrgyClearance<br>Actual',
	brgyresolution_applied	DATETIME	 NULL	COMMENT 'BrgyResolution<br>Applied',
	brgyresolution_plan	DATETIME	 NULL	COMMENT 'BrgyResolution<br>Plan',
	brgyresolution_actual	DATETIME	 NULL	COMMENT 'BrgyResolution<br>Actual',
	propertydocs_plan	DATETIME	 NULL	COMMENT 'Property Docs<br>Plan',
	taxdeclaration_secured	DATETIME	 NULL	COMMENT 'Tax Declaration<br>Secured',
	taxclearance_secured	DATETIME	 NULL	COMMENT 'Tax Clearance<br>Secured',
	tct_secured	DATETIME	 NULL	COMMENT 'TCT<br>Secured',
	segregationplansigned	DATETIME	 NULL	COMMENT 'Segregation Plan Signed',
	conceptualdrawingsigned	DATETIME	 NULL	COMMENT 'Conceptual Drawing Signed',
	otherdocuments	VARCHAR(100)	 NULL	COMMENT 'Other Documents',
	tinnn	VARCHAR(100)	 NULL	COMMENT 'TIN',
	bankdetails_accountname_number	VARCHAR(100)	 NULL	COMMENT 'Bank Details<br>(Account Name & Number)',
	lessorcontact	VARCHAR(100)	 NULL	COMMENT 'Lessor Contact',
	lessoraddress	VARCHAR(100)	 NULL	COMMENT 'Lessor Address',
	lessorinformationsheetsignedbylessor	VARCHAR(100)	 NULL	COMMENT 'Lessor Information Sheet Signed by Lessor',
	landclassification	VARCHAR(100)	 NULL	COMMENT 'Land Classification',
	existingbuildingpermitforrtsite	VARCHAR(100)	 NULL	COMMENT 'Existing Building Permit for RT site',
	as_builtplanforrtsite	DATETIME	 NULL	COMMENT 'As-Built Plan for RT Site',
	tpca_spca	VARCHAR(100)	 NULL	COMMENT 'TPCA / SPCA',
	leasepackage_plan	DATETIME	 NULL	COMMENT 'Lease Package<br>Plan',
	lessorid	VARCHAR(100)	 NULL	COMMENT 'Lessor ID',
	leasepackagesubmitted	DATETIME	 NULL	COMMENT 'Lease Package Submitted',
	draftcol_plan	DATETIME	 NULL	COMMENT 'Draft COL<br>Plan',
	draftcolsignedbylessor	DATETIME	 NULL	COMMENT 'Draft COL Signed by Lessor',
	colapproved_bylegal	DATETIME	 NULL	COMMENT 'COL Approved<br>by Legal',
	crafsubmitted_actual	DATETIME	 NULL	COMMENT 'CRAF Submitted<br>Actual',
	crafapproved_actual	DATETIME	 NULL	COMMENT 'CRAF Approved<br>Actual',
	colsigned_bydito	DATETIME	 NULL	COMMENT 'COL Signed<br>by DITO',
	colsigned_bylessor	DATETIME	 NULL	COMMENT 'COL Signed<br>by Lessor',
	colsigned_plan	DATETIME	 NULL	COMMENT 'COL Signed<br>Plan',
	colsigned_actual	DATETIME	 NULL	COMMENT 'COL Signed<br>Actual',
	rfpsubmitted_byvendor	DATETIME	 NULL	COMMENT 'RFP Submitted<br>by Vendor',
	rfp_approved	DATETIME	 NULL	COMMENT 'RFP<br>Approved',
	rentalpaid_plan	DATETIME	 NULL	COMMENT 'Rental Paid<br>Plan',
	releasedchequetovendor	DATETIME	 NULL	COMMENT 'Released Cheque to Vendor',
	releasedchequetolessor	DATETIME	 NULL	COMMENT 'Released Cheque to Lessor',
	ar_orsubmittedtodito	DATETIME	 NULL	COMMENT 'AR/OR Submitted to Dito',
	rp_remarks	VARCHAR(200)	 NULL	COMMENT 'Remarks',
	sbt_sidone_plan	DATETIME	 NULL	COMMENT 'SBT/SI Done<br>Plan',
	sbt_sidone_actual	DATETIME	 NULL	COMMENT 'SBT/SI Done<br>Actual',
	sbt_sireport_plan	DATETIME	 NULL	COMMENT 'SBT/SI Report<br>Plan',
	sbt_sireport_submitted	DATETIME	 NULL	COMMENT 'SBT/SI Report<br>Submitted',
	sbt_sireport_approved	DATETIME	 NULL	COMMENT 'SBT/SI Report<br>Approved',
	tssdone_plan	DATETIME	 NULL	COMMENT 'TSS Done<br>Plan',
	tssdone_actual	DATETIME	 NULL	COMMENT 'TSS Done<br>Actual',
	tssrsubmitted_plan	DATETIME	 NULL	COMMENT 'TSSR Submitted<br>Plan',
	tssrsubmitted_actual	DATETIME	 NULL	COMMENT 'TSSR Submitted<br>Actual',
	tssrapproved_actual	DATETIME	 NULL	COMMENT 'TSSR Approved<br>Actual',
	dddsubmitted_plan	DATETIME	 NULL	COMMENT 'DDD Submitted<br>Plan',
	prelimdddsubmitted	DATETIME	 NULL	COMMENT 'Prelim DDD Submitted',
	prelimdddapproved	DATETIME	 NULL	COMMENT 'Prelim DDD Approved',
	dddsubmitted_actual	DATETIME	 NULL	COMMENT 'DDD Submitted<br>Actual',
	dddapproved_plan	DATETIME	 NULL	COMMENT 'DDD Approved<br>Plan',
	dddapproved_actual	DATETIME	 NULL	COMMENT 'DDD Approved<br>Actual',
	tower_type	VARCHAR(100)	 NULL	COMMENT 'Tower<br>Type',
	tower	DECIMAL(10,7)	 NULL	COMMENT 'Tower<br>(m)',
	tower_ordering	VARCHAR(100)	 NULL	COMMENT 'Tower<br>Ordering',
	towerdeliveryonsite_plan	DATETIME	 NULL	COMMENT 'Tower Delivery on Site_Plan',
	towerdeliveryonsite_actual	DATETIME	 NULL	COMMENT 'Tower Delivery on Site_Actual',
	telecomequipmentdeliveryonsite_actual	DATETIME	 NULL	COMMENT 'Telecom Equipment Delivery On Site_Actual ',
	facilitytelecomdeliveryonsite_actual	DATETIME	 NULL	COMMENT 'Facility Telecom Delivery On Site_Actual ',
	nationalpermit_plan	DATETIME	 NULL	COMMENT 'National Permit<br>Plan',
	denrcnc_applied	DATETIME	 NULL	COMMENT 'DENR-CNC<br>Applied',
	denrcnc_acquired	DATETIME	 NULL	COMMENT 'DENR-CNC<br>Acquired',
	doh_applied	DATETIME	 NULL	COMMENT 'DOH<br>Applied',
	doh_acquired	DATETIME	 NULL	COMMENT 'DOH<br>Acquired',
	ato_caap_applied	DATETIME	 NULL	COMMENT 'ATO/CAAP<br>Applied',
	ato_caap_acquired	DATETIME	 NULL	COMMENT 'ATO/CAAP<br>Acquired',
	natlcompleted_plan	DATETIME	 NULL	COMMENT 'Natl Completed<br>Plan',
	lgupermit_plan	DATETIME	 NULL	COMMENT 'LGU Permit<br>Plan',
	zoning_applied	DATETIME	 NULL	COMMENT 'Zoning<br>Applied',
	zoning_acquired	DATETIME	 NULL	COMMENT 'Zoning<br>Acquired',
	locational_applied	DATETIME	 NULL	COMMENT 'Locational<br>Applied',
	locational_acquired	DATETIME	 NULL	COMMENT 'Locational<br>Acquired',
	sb_spresolution_applied	DATETIME	 NULL	COMMENT 'SB/SP Resolution<br>Applied',
	sb_spresolution_acquired	DATETIME	 NULL	COMMENT 'SB/SP Resolution<br>Acquired',
	mayorspermit_secured	DATETIME	 NULL	COMMENT 'Mayors Permit<br>Secured',
	buildingpermit_applied	DATETIME	 NULL	COMMENT 'Building Permit<br>Applied',
	buildingpermit_secured	DATETIME	 NULL	COMMENT 'Building Permit<br>Secured',
	electricalpermit_applied	DATETIME	 NULL	COMMENT 'Electrical Permit<br>Applied',
	electricalpermit_secured	DATETIME	 NULL	COMMENT 'Electrical Permit<br>Secured',
	mechanicalpermit_applied	DATETIME	 NULL	COMMENT 'Mechanical Permit<br>Applied',
	mechanicalpermit_secured	DATETIME	 NULL	COMMENT 'Mechanical Permit<br>Secured',
	electronicspermit_applied	DATETIME	 NULL	COMMENT 'Electronics Permit<br>Applied',
	electronicspermit_secured	DATETIME	 NULL	COMMENT 'Electronics Permit<br>Secured',
	fencingpermit_applied	DATETIME	 NULL	COMMENT 'Fencing Permit<br>Applied',
	fencingpermit_secured	DATETIME	 NULL	COMMENT 'Fencing Permit<br>Secured',
	sanitarypermit_applied	DATETIME	 NULL	COMMENT 'Sanitary Permit<br>Applied',
	sanitarypermit_secured	DATETIME	 NULL	COMMENT 'Sanitary Permit<br>Secured',
	fsec_applied	DATETIME	 NULL	COMMENT 'FSEC<br>Applied',
	fsec_acquired	DATETIME	 NULL	COMMENT 'FSEC<br>Acquired',
	lgucompleted_plan	DATETIME	 NULL	COMMENT 'LGU Completed<br>Plan',
	bom	DATETIME	 NULL	COMMENT 'BOM',
	copyofbpor	DATETIME	 NULL	COMMENT 'Copy of BP OR',
	pp_remarks	VARCHAR(200)	 NULL	COMMENT 'Remarks',
	rtbdeclared_plan	DATETIME	 NULL	COMMENT 'RTB Declared<br>Plan',
	rtbdeclared_actual	DATETIME	 NULL	COMMENT 'RTB Declared<br>Actual',
	cfei_applied	DATETIME	 NULL	COMMENT 'CFEI<br>Applied',
	cfei_acquired	DATETIME	 NULL	COMMENT 'CFEI<br>Acquired',
	occupancypermit_applied	DATETIME	 NULL	COMMENT 'Occupancy Permit<br>Applied',
	occupancypermit_secured	DATETIME	 NULL	COMMENT 'Occupancy Permit<br>Secured',
	fsic_applied	DATETIME	 NULL	COMMENT 'FSIC<br>Applied',
	fsic_acquired	DATETIME	 NULL	COMMENT 'FSIC<br>Acquired',
	skom_actual	DATETIME	 NULL	COMMENT 'SKOM<br>Actual',
	mobilization_plan	DATETIME	 NULL	COMMENT 'Mobilization<br>Plan',
	mobilization_actual	DATETIME	 NULL	COMMENT 'Mobilization<br>Actual',
	excavation_plan	DATETIME	 NULL	COMMENT 'Excavation<br>Plan',
	excavation_actual	DATETIME	 NULL	COMMENT 'Excavation<br>Actual',
	leanconcretecompletion	DATETIME	 NULL	COMMENT 'Lean Concrete Completion',
	rebars_plan	DATETIME	 NULL	COMMENT 'Rebars<br>Plan',
	rebarinstallation	DATETIME	 NULL	COMMENT 'Rebar Installation',
	rebar_testing	DATETIME	 NULL	COMMENT 'Rebar<br>Testing',
	rebar_inspection	DATETIME	 NULL	COMMENT 'Rebar<br>Inspection',
	concrete_plan	DATETIME	 NULL	COMMENT 'Concrete<br>Plan',
	concretepouringcompleted	DATETIME	 NULL	COMMENT 'Concrete Pouring Completed',
	concretetesting	DATETIME	 NULL	COMMENT 'Concrete Testing',
	backfilling_plan	DATETIME	 NULL	COMMENT 'Back Filling<br>Plan',
	backfilling_actual	DATETIME	 NULL	COMMENT 'Back Filling<br>Actual',
	odupad_started	DATETIME	 NULL	COMMENT 'ODU Pad<br>Started',
	odupad_completed	DATETIME	 NULL	COMMENT 'ODU Pad<br>Completed',
	electricalgrounding_plan	DATETIME	 NULL	COMMENT 'Electrical Grounding<br>Plan',
	electricalworks_actual	DATETIME	 NULL	COMMENT 'Electrical Works<br>Actual',
	towererectionstarted	DATETIME	 NULL	COMMENT 'Tower Erection Started',
	towererection_plan	DATETIME	 NULL	COMMENT 'Tower Erection<br>Plan',
	towererectioncompleted	DATETIME	 NULL	COMMENT 'Tower Erection Completed',
	tower_verticality	DATETIME	 NULL	COMMENT 'Tower<br>Verticality',
	sitedevworks_completed	DATETIME	 NULL	COMMENT 'Site Dev Works<br>Completed (RFI)',
	tempopower_plan	DATETIME	 NULL	COMMENT 'Tempo Power<br>Plan',
	tempopowerconnected	DATETIME	 NULL	COMMENT 'Tempo Power Connected',
	rfti_plan	DATETIME	 NULL	COMMENT 'RFTI<br>Plan',
	rfti_actual	DATETIME	 NULL	COMMENT 'RFTI<br>Actual',
	prepat_actual	DATETIME	 NULL	COMMENT 'Pre-PAT<br>Actual',
	pat_plan	DATETIME	 NULL	COMMENT 'PAT<br>Plan',
	patpassed_actual	DATETIME	 NULL	COMMENT 'PAT Passed<br>Actual',
	txsolution	DATETIME	 NULL	COMMENT 'TX Solution',
	txinstalled_actual	DATETIME	 NULL	COMMENT 'TX Installed<br>Actual',
	mos_plan	DATETIME	 NULL	COMMENT 'MOS<br>Plan',
	mos_actual	DATETIME	 NULL	COMMENT 'MOS<br>Actual',
	bts_installationcompleted	DATETIME	 NULL	COMMENT 'BTS<br>Installation Completed',
	integrated_plan	DATETIME	 NULL	COMMENT 'Integrated<br>Plan',
	integrated_actual	DATETIME	 NULL	COMMENT 'Integrated<br>Actual',
	rfs_plan	DATETIME	 NULL	COMMENT 'RFS<br>Plan',
	rfs_actual	DATETIME	 NULL	COMMENT 'RFS<br>Actual',
	permanentpowerapplied	DATETIME	 NULL	COMMENT 'Permanent Power Applied',
	jointinspectionsurveywithcoop	DATETIME	 NULL	COMMENT 'Joint Inspection Survey with COOP',
	chargeletteracquired	DATETIME	 NULL	COMMENT 'Charge Letter Acquired',
	powerpayment_rfpsubmitted	DATETIME	 NULL	COMMENT 'Power Payment<br>RFP Submitted',
	powerpayment_rfpreleased	DATETIME	 NULL	COMMENT 'Power Payment<br>RFP Released',
	line_construction	DATETIME	 NULL	COMMENT 'Line<br>Construction',
	energized_plan	DATETIME	 NULL	COMMENT 'Energized<br>Plan',
	energized_actual	DATETIME	 NULL	COMMENT 'Energized<br>Actual',
	electricalpat	DATETIME	 NULL	COMMENT 'Electrical PAT',
	siteutilitycontractsubmitted	DATETIME	 NULL	COMMENT 'Site Utility Contract Submitted',
	meterserialnumber	DECIMAL(10,0)	 NULL	COMMENT 'Meter Serial Number',
	electriccooperative	VARCHAR(100)	 NULL	COMMENT 'Electric Cooperative',
	pow_remarks	VARCHAR(200)	 NULL	COMMENT 'Remarks',
	extendt_01	VARCHAR(100)	 NULL	COMMENT 'extendt_01',
	extendt_02	VARCHAR(100)	 NULL	COMMENT 'extendt_02',
	extendt_03	VARCHAR(100)	 NULL	COMMENT 'extendt_03',
	extendt_04	VARCHAR(100)	 NULL	COMMENT 'extendt_04',
	extendt_05	VARCHAR(100)	 NULL	COMMENT 'extendt_05',
	extendt_06	VARCHAR(100)	 NULL	COMMENT 'extendt_06',
	extendt_07	VARCHAR(100)	 NULL	COMMENT 'extendt_07',
	extendt_08	VARCHAR(100)	 NULL	COMMENT 'extendt_08',
	extendt_09	VARCHAR(100)	 NULL	COMMENT 'extendt_09',
	extendt_10	VARCHAR(100)	 NULL	COMMENT 'extendt_10',
	extendt_11	VARCHAR(100)	 NULL	COMMENT 'extendt_11',
	extendt_12	VARCHAR(100)	 NULL	COMMENT 'extendt_12',
	extendt_13	VARCHAR(100)	 NULL	COMMENT 'extendt_13',
	extendt_14	VARCHAR(100)	 NULL	COMMENT 'extendt_14',
	extendt_15	VARCHAR(100)	 NULL	COMMENT 'extendt_15',
	extendt_16	VARCHAR(100)	 NULL	COMMENT 'extendt_16',
	extendt_17	VARCHAR(100)	 NULL	COMMENT 'extendt_17',
	extendt_18	VARCHAR(100)	 NULL	COMMENT 'extendt_18',
	extendt_19	VARCHAR(100)	 NULL	COMMENT 'extendt_19',
	extendt_20	VARCHAR(100)	 NULL	COMMENT 'extendt_20',
	extendi_01	DECIMAL(10,0)	 NULL	COMMENT 'extendi_01',
	extendi_02	DECIMAL(10,0)	 NULL	COMMENT 'extendi_02',
	extendi_03	DECIMAL(10,0)	 NULL	COMMENT 'extendi_03',
	extendi_04	DECIMAL(10,0)	 NULL	COMMENT 'extendi_04',
	extendi_05	DECIMAL(10,0)	 NULL	COMMENT 'extendi_05',
	extendi_06	DECIMAL(10,0)	 NULL	COMMENT 'extendi_06',
	extendi_07	DECIMAL(10,0)	 NULL	COMMENT 'extendi_07',
	extendi_08	DECIMAL(10,0)	 NULL	COMMENT 'extendi_08',
	extendi_09	DECIMAL(10,0)	 NULL	COMMENT 'extendi_09',
	extendi_10	DECIMAL(10,0)	 NULL	COMMENT 'extendi_10',
	extendi_11	DECIMAL(10,0)	 NULL	COMMENT 'extendi_11',
	extendi_12	DECIMAL(10,0)	 NULL	COMMENT 'extendi_12',
	extendi_13	DECIMAL(10,0)	 NULL	COMMENT 'extendi_13',
	extendi_14	DECIMAL(10,0)	 NULL	COMMENT 'extendi_14',
	extendi_15	DECIMAL(10,0)	 NULL	COMMENT 'extendi_15',
	extendi_16	DECIMAL(10,0)	 NULL	COMMENT 'extendi_16',
	extendi_17	DECIMAL(10,0)	 NULL	COMMENT 'extendi_17',
	extendi_18	DECIMAL(10,0)	 NULL	COMMENT 'extendi_18',
	extendi_19	DECIMAL(10,0)	 NULL	COMMENT 'extendi_19',
	extendi_20	DECIMAL(10,0)	 NULL	COMMENT 'extendi_20',
	extendd_01	DATETIME	 NULL	COMMENT 'extendd_01',
	extendd_02	DATETIME	 NULL	COMMENT 'extendd_02',
	extendd_03	DATETIME	 NULL	COMMENT 'extendd_03',
	extendd_04	DATETIME	 NULL	COMMENT 'extendd_04',
	extendd_05	DATETIME	 NULL	COMMENT 'extendd_05',
	extendd_06	DATETIME	 NULL	COMMENT 'extendd_06',
	extendd_07	DATETIME	 NULL	COMMENT 'extendd_07',
	extendd_08	DATETIME	 NULL	COMMENT 'extendd_08',
	extendd_09	DATETIME	 NULL	COMMENT 'extendd_09',
	extendd_10	DATETIME	 NULL	COMMENT 'extendd_10',
	extendd_11	DATETIME	 NULL	COMMENT 'extendd_11',
	extendd_12	DATETIME	 NULL	COMMENT 'extendd_12',
	extendd_13	DATETIME	 NULL	COMMENT 'extendd_13',
	extendd_14	DATETIME	 NULL	COMMENT 'extendd_14',
	extendd_15	DATETIME	 NULL	COMMENT 'extendd_15',
	extendd_16	DATETIME	 NULL	COMMENT 'extendd_16',
	extendd_17	DATETIME	 NULL	COMMENT 'extendd_17',
	extendd_18	DATETIME	 NULL	COMMENT 'extendd_18',
	extendd_19	DATETIME	 NULL	COMMENT 'extendd_19',
	extendd_20	DATETIME	 NULL	COMMENT 'extendd_20',
	extendd_21	DATETIME	 NULL	COMMENT 'extendd_21',
	extendd_22	DATETIME	 NULL	COMMENT 'extendd_22',
	extendd_23	DATETIME	 NULL	COMMENT 'extendd_23',
	extendd_24	DATETIME	 NULL	COMMENT 'extendd_24',
	extendd_25	DATETIME	 NULL	COMMENT 'extendd_25',
	extendd_26	DATETIME	 NULL	COMMENT 'extendd_26',
	extendd_27	DATETIME	 NULL	COMMENT 'extendd_27',
	extendd_28	DATETIME	 NULL	COMMENT 'extendd_28',
	extendd_29	DATETIME	 NULL	COMMENT 'extendd_29',
	extendd_30	DATETIME	 NULL	COMMENT 'extendd_30',
	extendd_31	DATETIME	 NULL	COMMENT 'extendd_31',
	extendd_32	DATETIME	 NULL	COMMENT 'extendd_32',
	extendd_33	DATETIME	 NULL	COMMENT 'extendd_33',
	extendd_34	DATETIME	 NULL	COMMENT 'extendd_34',
	extendd_35	DATETIME	 NULL	COMMENT 'extendd_35',
	extendd_36	DATETIME	 NULL	COMMENT 'extendd_36',
	extendd_37	DATETIME	 NULL	COMMENT 'extendd_37',
	extendd_38	DATETIME	 NULL	COMMENT 'extendd_38',
	extendd_39	DATETIME	 NULL	COMMENT 'extendd_39',
	extendd_40	DATETIME	 NULL	COMMENT 'extendd_40',
	extendd_41	DATETIME	 NULL	COMMENT 'extendd_41',
	extendd_42	DATETIME	 NULL	COMMENT 'extendd_42',
	extendd_43	DATETIME	 NULL	COMMENT 'extendd_43',
	extendd_44	DATETIME	 NULL	COMMENT 'extendd_44',
	extendd_45	DATETIME	 NULL	COMMENT 'extendd_45',
	extendd_46	DATETIME	 NULL	COMMENT 'extendd_46',
	extendd_47	DATETIME	 NULL	COMMENT 'extendd_47',
	extendd_48	DATETIME	 NULL	COMMENT 'extendd_48',
	extendd_49	DATETIME	 NULL	COMMENT 'extendd_49',
	extendd_50	DATETIME	 NULL	COMMENT 'extendd_50',
	extendn_01	DECIMAL(8,6)	 NULL	COMMENT 'extendn_01',
	extendn_02	DECIMAL(8,6)	 NULL	COMMENT 'extendn_02',
	extendn_03	DECIMAL(8,6)	 NULL	COMMENT 'extendn_03',
	extendn_04	DECIMAL(8,6)	 NULL	COMMENT 'extendn_04',
	extendn_05	DECIMAL(8,6)	 NULL	COMMENT 'extendn_05',
	extendn_06	DECIMAL(8,6)	 NULL	COMMENT 'extendn_06',
	extendn_07	DECIMAL(8,6)	 NULL	COMMENT 'extendn_07',
	extendn_08	DECIMAL(8,6)	 NULL	COMMENT 'extendn_08',
	extendn_09	DECIMAL(8,6)	 NULL	COMMENT 'extendn_09',
	extendn_10	DECIMAL(8,6)	 NULL	COMMENT 'extendn_10',
	extendn_11	DECIMAL(8,6)	 NULL	COMMENT 'extendn_11',
	extendn_12	DECIMAL(8,6)	 NULL	COMMENT 'extendn_12',
	extendn_13	DECIMAL(8,6)	 NULL	COMMENT 'extendn_13',
	extendn_14	DECIMAL(8,6)	 NULL	COMMENT 'extendn_14',
	extendn_15	DECIMAL(8,6)	 NULL	COMMENT 'extendn_15',
	extendn_16	DECIMAL(8,6)	 NULL	COMMENT 'extendn_16',
	extendn_17	DECIMAL(8,6)	 NULL	COMMENT 'extendn_17',
	extendn_18	DECIMAL(8,6)	 NULL	COMMENT 'extendn_18',
	extendn_19	DECIMAL(8,6)	 NULL	COMMENT 'extendn_19',
	extendn_20	DECIMAL(8,6)	 NULL	COMMENT 'extendn_20',
	status				CHAR(1)			NOT NULL	DEFAULT '0'	COMMENT 'Status(0-normal 1-delete 2suspend 3error)',
	create_by			VARCHAR(64)			NULL	COMMENT 'Creator',
	create_date			DATETIME			NULL	COMMENT 'CreateDate',
	update_by			VARCHAR(64)			NULL	COMMENT 'Updater',
	update_date			DATETIME			NULL	COMMENT 'UpdateDate',
	remarks				VARCHAR(255)		NULL	COMMENT 'remarks',
	PRIMARY KEY (id)
)COMMENT = 'Site';
