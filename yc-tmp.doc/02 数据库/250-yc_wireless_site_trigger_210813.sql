DROP TRIGGER t_yc_site;
CREATE TRIGGER t_yc_site BEFORE UPDATE
ON yc_site FOR EACH ROW
BEGIN
	DECLARE v_na_date DATETIME DEFAULT NULL;
	DECLARE v_max_date DATETIME DEFAULT NULL;
	DECLARE v_min_date DATETIME DEFAULT NULL;
	DECLARE v_least_date1	DATETIME DEFAULT NULL;
	DECLARE v_least_date2	DATETIME DEFAULT NULL;
	DECLARE v_least_date3	DATETIME DEFAULT NULL;
	DECLARE v_least_date4	DATETIME DEFAULT NULL;
	DECLARE v_least_date5	DATETIME DEFAULT NULL;
	DECLARE	v_str11			VARCHAR(512);
	DECLARE v_latest_date12	DATETIME DEFAULT NULL;
	DECLARE v_latest_date13	DATETIME DEFAULT NULL;
	DECLARE v_least_date14	DATETIME DEFAULT NULL;
	DECLARE v_least_date15	DATETIME DEFAULT NULL;
	DECLARE v_least_date16	DATETIME DEFAULT NULL;
	DECLARE v_least_date17	DATETIME DEFAULT NULL;
	DECLARE v_least_date18	DATETIME DEFAULT NULL;
	DECLARE v_least_date19	DATETIME DEFAULT NULL;
	DECLARE v_least_date20	DATETIME DEFAULT NULL;
	DECLARE v_latest_date21	DATETIME DEFAULT NULL;
	DECLARE v_latest_date22	DATETIME DEFAULT NULL;
	DECLARE v_latest_date23	DATETIME DEFAULT NULL;
	DECLARE v_latest_date24	DATETIME DEFAULT NULL;
	SET v_na_date='1971-01-01';
	SET v_max_date='2050-01-01';
	SET v_min_date='1980-01-01';
	SET v_least_date1=v_max_date;
	SET v_least_date2=v_max_date;
	SET v_least_date3=v_max_date;
	SET v_least_date4=v_max_date;
	SET v_least_date5=v_max_date;
	SET v_str11='';
	SET v_latest_date12=v_min_date;
	SET v_latest_date13=v_min_date;
	SET v_least_date14=v_max_date;
	SET v_least_date15=v_max_date;
	SET v_least_date16=v_max_date;
	SET v_least_date17=v_max_date;
	SET v_least_date18=v_max_date;
	SET v_least_date19=v_max_date;
	SET v_least_date20=v_max_date;
	SET v_latest_date21=v_min_date;
	SET v_latest_date22=v_min_date;
	SET v_latest_date23=v_min_date;
	SET v_latest_date24=v_min_date;

	-- 1 Earliest
	IF NEW.sarsubmittedoptiona IS NOT NULL AND NEW.sarsubmittedoptiona <> v_na_date AND NEW.sarsubmittedoptiona < v_least_date1 THEN
		SET v_least_date1 = NEW.sarsubmittedoptiona;
	END IF;
	IF NEW.sarsubmittedoptionb IS NOT NULL AND NEW.sarsubmittedoptionb <> v_na_date AND NEW.sarsubmittedoptionb < v_least_date1 THEN
		SET v_least_date1 = NEW.sarsubmittedoptionb;
	END IF;
	IF NEW.sarsubmittedoptionc IS NOT NULL AND NEW.sarsubmittedoptionc <> v_na_date AND NEW.sarsubmittedoptionc < v_least_date1 THEN
		SET v_least_date1 = NEW.sarsubmittedoptionc;
	END IF;
	IF NEW.sarsubmittedoptiond IS NOT NULL AND NEW.sarsubmittedoptiond <> v_na_date AND NEW.sarsubmittedoptiond < v_least_date1 THEN
		SET v_least_date1 = NEW.sarsubmittedoptiond;
	END IF;
	IF NEW.sarsubmittedoptione IS NOT NULL AND NEW.sarsubmittedoptione <> v_na_date AND NEW.sarsubmittedoptione < v_least_date1 THEN
		SET v_least_date1 = NEW.sarsubmittedoptione;
	END IF;
	IF NEW.sarsubmittedoptionf IS NOT NULL AND NEW.sarsubmittedoptionf <> v_na_date AND NEW.sarsubmittedoptionf < v_least_date1 THEN
		SET v_least_date1 = NEW.sarsubmittedoptionf;
	END IF;
	IF NEW.extendd01 IS NOT NULL AND NEW.extendd01 <> v_na_date AND NEW.extendd01 < v_least_date1 THEN
		SET v_least_date1 = NEW.extendd01;
	END IF;
	IF NEW.extendd02 IS NOT NULL AND NEW.extendd02 <> v_na_date AND NEW.extendd02 < v_least_date1 THEN
		SET v_least_date1 = NEW.extendd02;
	END IF;
	IF NEW.extendd03 IS NOT NULL AND NEW.extendd03 <> v_na_date AND NEW.extendd03 < v_least_date1 THEN
		SET v_least_date1 = NEW.extendd03;
	END IF;
	IF v_least_date1 = v_max_date THEN
		SET v_least_date1 =  NULL;
	END IF;	
	SET NEW.sarsubmitted = v_least_date1;

	-- 2 Earliest
	IF NEW.taxdeclarationsecured IS NOT NULL AND NEW.taxdeclarationsecured <> v_na_date AND NEW.taxdeclarationsecured < v_least_date2 THEN
		SET v_least_date2 = NEW.taxdeclarationsecured;
	END IF;
	IF NEW.taxclearancesecured IS NOT NULL AND NEW.taxclearancesecured <> v_na_date AND NEW.taxclearancesecured < v_least_date2 THEN
		SET v_least_date2 = NEW.taxclearancesecured;
	END IF;
	IF NEW.tctsecured IS NOT NULL AND NEW.tctsecured <> v_na_date AND NEW.tctsecured < v_least_date2 THEN
		SET v_least_date2 = NEW.tctsecured;
	END IF;
	IF NEW.conceptualdrawingsigned IS NOT NULL AND NEW.conceptualdrawingsigned <> v_na_date AND NEW.conceptualdrawingsigned < v_least_date2 THEN
		SET v_least_date2 = NEW.conceptualdrawingsigned;
	END IF;
	IF NEW.lessorinformationsheet IS NOT NULL AND NEW.lessorinformationsheet <> v_na_date AND NEW.lessorinformationsheet < v_least_date2 THEN
		SET v_least_date2 = NEW.lessorinformationsheet;
	END IF;
	IF NEW.segregationplansigned IS NOT NULL AND NEW.segregationplansigned <> v_na_date AND NEW.segregationplansigned < v_least_date2 THEN
		SET v_least_date2 = NEW.segregationplansigned;
	END IF;
	IF NEW.lessorid IS NOT NULL AND NEW.lessorid <> v_na_date AND NEW.lessorid < v_least_date2 THEN
		SET v_least_date2 = NEW.lessorid;
	END IF;
	IF v_least_date2 = v_max_date THEN
		SET v_least_date2 =  NULL;
	END IF;	
	SET NEW.propertydocscompleted = v_least_date2;	

	-- 4 Earliest
	IF NEW.mocsignedoptiona IS NOT NULL AND NEW.mocsignedoptiona <> v_na_date AND NEW.mocsignedoptiona < v_least_date4 THEN
		SET v_least_date4 = NEW.mocsignedoptiona;
	END IF;
	IF NEW.mocsignedoptionb IS NOT NULL AND NEW.mocsignedoptionb <> v_na_date AND NEW.mocsignedoptionb < v_least_date4 THEN
		SET v_least_date4 = NEW.mocsignedoptionb;
	END IF;
	IF NEW.mocsignedoptionc IS NOT NULL AND NEW.mocsignedoptionc <> v_na_date AND NEW.mocsignedoptionc < v_least_date4 THEN
		SET v_least_date4 = NEW.mocsignedoptionc;
	END IF;
	IF NEW.mocsignedoptiond IS NOT NULL AND NEW.mocsignedoptiond <> v_na_date AND NEW.mocsignedoptiond < v_least_date4 THEN
		SET v_least_date4 = NEW.mocsignedoptiond;
	END IF;
	IF NEW.mocsignedoptione IS NOT NULL AND NEW.mocsignedoptione <> v_na_date AND NEW.mocsignedoptione < v_least_date4 THEN
		SET v_least_date4 = NEW.mocsignedoptione;
	END IF;
	IF NEW.mocsignedoptionf IS NOT NULL AND NEW.mocsignedoptionf <> v_na_date AND NEW.mocsignedoptionf < v_least_date4 THEN
		SET v_least_date4 = NEW.mocsignedoptionf;
	END IF;
	IF NEW.extendd07 IS NOT NULL AND NEW.extendd07 <> v_na_date AND NEW.extendd07 < v_least_date4 THEN
		SET v_least_date4 = NEW.extendd07;
	END IF;
	IF NEW.extendd08 IS NOT NULL AND NEW.extendd08 <> v_na_date AND NEW.extendd08 < v_least_date4 THEN
		SET v_least_date4 = NEW.extendd08;
	END IF;
	IF v_least_date4 = v_max_date THEN
		SET v_least_date4 =  NULL;
	END IF;	
	SET NEW.mocsigned = v_least_date4;

	-- 5 Earliest
	IF NEW.sarapprovedoptiona IS NOT NULL AND NEW.sarapprovedoptiona <> v_na_date AND NEW.sarapprovedoptiona < v_least_date5 THEN
		SET v_least_date5 = NEW.sarapprovedoptiona;
	END IF;
	IF NEW.sarapprovedoptionb IS NOT NULL AND NEW.sarapprovedoptionb <> v_na_date AND NEW.sarapprovedoptionb < v_least_date5 THEN
		SET v_least_date5 = NEW.sarapprovedoptionb;
	END IF;
	IF NEW.sarapprovedoptionc IS NOT NULL AND NEW.sarapprovedoptionc <> v_na_date AND NEW.sarapprovedoptionc < v_least_date5 THEN
		SET v_least_date5 = NEW.sarapprovedoptionc;
	END IF;
	IF NEW.sarapprovedoptiond IS NOT NULL AND NEW.sarapprovedoptiond <> v_na_date AND NEW.sarapprovedoptiond < v_least_date5 THEN
		SET v_least_date5 = NEW.sarapprovedoptiond;
	END IF;
	IF NEW.sarapprovedoptione IS NOT NULL AND NEW.sarapprovedoptione <> v_na_date AND NEW.sarapprovedoptione < v_least_date5 THEN
		SET v_least_date5 = NEW.sarapprovedoptione;
	END IF;
	IF NEW.sarapprovedoptionf IS NOT NULL AND NEW.sarapprovedoptionf <> v_na_date AND NEW.sarapprovedoptionf < v_least_date5 THEN
		SET v_least_date5 = NEW.sarapprovedoptionf;
	END IF;
	IF NEW.extendd04 IS NOT NULL AND NEW.extendd04 <> v_na_date AND NEW.extendd04 < v_least_date5 THEN
		SET v_least_date5 = NEW.extendd04;
	END IF;
	IF NEW.extendd05 IS NOT NULL AND NEW.extendd05 <> v_na_date AND NEW.extendd05 < v_least_date5 THEN
		SET v_least_date5 = NEW.extendd05;
	END IF;
	IF NEW.extendd06 IS NOT NULL AND NEW.extendd06 <> v_na_date AND NEW.extendd06 < v_least_date5 THEN
		SET v_least_date5 = NEW.extendd06;
	END IF;
	IF v_least_date5 = v_max_date THEN
		SET v_least_date5 =  NULL;
	END IF;	
	SET NEW.sarapproved = v_least_date5;

	-- 11 Concatenation
	IF NEW.streetbuilding IS NOT NULL THEN
		IF v_str11 <> '' THEN
			SET v_str11 = concat(v_str11,',');
		END IF;
		SET v_str11 = concat(v_str11, NEW.streetbuilding);
	END IF;
	IF NEW.actbarangay IS NOT NULL THEN
		IF v_str11 <> '' THEN
			SET v_str11 = concat(v_str11,',');
		END IF;
		SET v_str11 = concat(v_str11, NEW.actbarangay);
	END IF;
	IF NEW.citymunicipality IS NOT NULL THEN
		IF v_str11 <> '' THEN
			SET v_str11 = concat(v_str11,',');
		END IF;
		SET v_str11 = concat(v_str11, NEW.citymunicipality);
	END IF;
	IF NEW.siprovince IS NOT NULL THEN
		IF v_str11 <> '' THEN
			SET v_str11 = concat(v_str11,',');
		END IF;
		SET v_str11 = concat(v_str11, NEW.siprovince);
	END IF;
	SET NEW.completesiteaddress = v_str11;

	-- 12 Latest AND
	IF NEW.tssrapproved IS NOT NULL AND NEW.sbtsireportapproved IS NOT NULL THEN
		IF NEW.tssrapproved <> v_na_date AND NEW.tssrapproved > v_latest_date12 THEN
			SET v_latest_date12 = NEW.tssrapproved;
		END IF;
		IF NEW.sbtsireportapproved <> v_na_date AND NEW.sbtsireportapproved > v_latest_date12 THEN
			SET v_latest_date12 = NEW.sbtsireportapproved;
		END IF;
		IF v_latest_date12 = v_min_date THEN
			SET v_latest_date12 =  NULL;
		END IF;
	ELSE
		SET v_latest_date12 =  NULL;
	END IF;
	SET NEW.sbtsitssrapproved = v_latest_date12;

	-- 13 Latest AND
	IF NEW.nrafapproved IS NOT NULL AND NEW.brsecured IS NOT NULL AND NEW.rfpapproved IS NOT NULL AND NEW.cwdddapproved IS NOT NULL THEN
		IF NEW.nrafapproved <> v_na_date AND NEW.nrafapproved > v_latest_date13 THEN
			SET v_latest_date13 = NEW.nrafapproved;
		END IF;
		IF NEW.brsecured <> v_na_date AND NEW.brsecured > v_latest_date13 THEN
			SET v_latest_date13 = NEW.brsecured;
		END IF;
		IF NEW.rfpapproved <> v_na_date AND NEW.rfpapproved > v_latest_date13 THEN
			SET v_latest_date13 = NEW.rfpapproved;
		END IF;
		IF NEW.cwdddapproved <> v_na_date AND NEW.cwdddapproved > v_latest_date13 THEN
			SET v_latest_date13 = NEW.cwdddapproved;
		END IF;
		IF v_latest_date13 = v_min_date THEN
			SET v_latest_date13 =  NULL;
		END IF;
	ELSE
		SET v_latest_date13 =  NULL;
	END IF;
	SET NEW.rtb1 = v_latest_date13;

	-- 14 Earliest
	IF NEW.tpcaspca IS NOT NULL AND NEW.tpcaspca <> v_na_date AND NEW.tpcaspca < v_least_date14 THEN
		SET v_least_date14 = NEW.tpcaspca;
	END IF;
	IF NEW.tempopowerwithcoop IS NOT NULL AND NEW.tempopowerwithcoop <> v_na_date AND NEW.tempopowerwithcoop < v_least_date14 THEN
		SET v_least_date14 = NEW.tempopowerwithcoop;
	END IF;
	IF NEW.surveydoneplan IS NOT NULL AND NEW.surveydoneplan <> v_na_date AND NEW.surveydoneplan < v_least_date14 THEN
		SET v_least_date14 = NEW.surveydoneplan;
	END IF;
	IF v_least_date14 = v_max_date THEN
		SET v_least_date14 =  NULL;
	END IF;	
	SET NEW.tempopowerconnected = v_least_date14;

	-- 15 Earliest
	IF NEW.l700submitted IS NOT NULL AND NEW.l700submitted <> v_na_date AND NEW.l700submitted < v_least_date15 THEN
		SET v_least_date15 = NEW.l700submitted;
	END IF;
	IF NEW.l2100submitted IS NOT NULL AND NEW.l2100submitted <> v_na_date AND NEW.l2100submitted < v_least_date15 THEN
		SET v_least_date15 = NEW.l2100submitted;
	END IF;
	IF NEW.l2600submitted IS NOT NULL AND NEW.l2600submitted <> v_na_date AND NEW.l2600submitted < v_least_date15 THEN
		SET v_least_date15 = NEW.l2600submitted;
	END IF;
	IF NEW.nrsubmitted IS NOT NULL AND NEW.nrsubmitted <> v_na_date AND NEW.nrsubmitted < v_least_date15 THEN
		SET v_least_date15 = NEW.nrsubmitted;
	END IF;
	IF v_least_date15 = v_max_date THEN
		SET v_least_date15 =  NULL;
	END IF;	
	SET NEW.enbpppsubmitted = v_least_date15;

	-- 16 Earliest
	IF NEW.l700applied IS NOT NULL AND NEW.l700applied <> v_na_date AND NEW.l700applied < v_least_date16 THEN
		SET v_least_date16 = NEW.l700applied;
	END IF;
	IF NEW.l2100applied IS NOT NULL AND NEW.l2100applied <> v_na_date AND NEW.l2100applied < v_least_date16 THEN
		SET v_least_date16 = NEW.l2100applied;
	END IF;
	IF NEW.l2600applied IS NOT NULL AND NEW.l2600applied <> v_na_date AND NEW.l2600applied < v_least_date16 THEN
		SET v_least_date16 = NEW.l2600applied;
	END IF;
	IF NEW.nrapplied IS NOT NULL AND NEW.nrapplied <> v_na_date AND NEW.nrapplied < v_least_date16 THEN
		SET v_least_date16 = NEW.nrapplied;
	END IF;
	IF v_least_date16 = v_max_date THEN
		SET v_least_date16 =  NULL;
	END IF;	
	SET NEW.enbpppapplied = v_least_date16;

	-- 17 Earliest
	IF NEW.l700permitreceived IS NOT NULL AND NEW.l700permitreceived <> v_na_date AND NEW.l700permitreceived < v_least_date17 THEN
		SET v_least_date17 = NEW.l700permitreceived;
	END IF;
	IF NEW.l2100permitreceived IS NOT NULL AND NEW.l2100permitreceived <> v_na_date AND NEW.l2100permitreceived < v_least_date17 THEN
		SET v_least_date17 = NEW.l2100permitreceived;
	END IF;
	IF NEW.l2600permitreceived IS NOT NULL AND NEW.l2600permitreceived <> v_na_date AND NEW.l2600permitreceived < v_least_date17 THEN
		SET v_least_date17 = NEW.l2600permitreceived;
	END IF;
	IF NEW.nrpermitreceived IS NOT NULL AND NEW.nrpermitreceived <> v_na_date AND NEW.nrpermitreceived < v_least_date17 THEN
		SET v_least_date17 = NEW.nrpermitreceived;
	END IF;
	IF v_least_date17 = v_max_date THEN
		SET v_least_date17 =  NULL;
	END IF;	
	SET NEW.enbpppreceived = v_least_date17;

	-- 18 Earliest
	IF NEW.sarsubmittedplan IS NOT NULL AND NEW.sarsubmittedplan <> v_na_date AND NEW.sarsubmittedplan < v_least_date18 THEN
		SET v_least_date18 = NEW.sarsubmittedplan;
	END IF;
	IF NEW.sarapprovedplan IS NOT NULL AND NEW.sarapprovedplan <> v_na_date AND NEW.sarapprovedplan < v_least_date18 THEN
		SET v_least_date18 = NEW.sarapprovedplan;
	END IF;
	IF NEW.mocsignedplan IS NOT NULL AND NEW.mocsignedplan <> v_na_date AND NEW.mocsignedplan < v_least_date18 THEN
		SET v_least_date18 = NEW.mocsignedplan;
	END IF;
	IF NEW.mocapprovedplan IS NOT NULL AND NEW.mocapprovedplan <> v_na_date AND NEW.mocapprovedplan < v_least_date18 THEN
		SET v_least_date18 = NEW.mocapprovedplan;
	END IF;
	IF v_least_date18 = v_max_date THEN
		SET v_least_date18 =  NULL;
	END IF;	
	SET NEW.nrafapprovedplan = v_least_date18;

	-- 19 Earliest
	IF NEW.brappliedplan IS NOT NULL AND NEW.brappliedplan <> v_na_date AND NEW.brappliedplan < v_least_date19 THEN
		SET v_least_date19 = NEW.brappliedplan;
	END IF;
	IF NEW.bcsecuredplan IS NOT NULL AND NEW.bcsecuredplan <> v_na_date AND NEW.bcsecuredplan < v_least_date19 THEN
		SET v_least_date19 = NEW.bcsecuredplan;
	END IF;
	IF NEW.propdocsstartedplan IS NOT NULL AND NEW.propdocsstartedplan <> v_na_date AND NEW.propdocsstartedplan < v_least_date19 THEN
		SET v_least_date19 = NEW.propdocsstartedplan;
	END IF;
	IF NEW.propdocsdoneplan IS NOT NULL AND NEW.propdocsdoneplan <> v_na_date AND NEW.propdocsdoneplan < v_least_date19 THEN
		SET v_least_date19 = NEW.propdocsdoneplan;
	END IF;
	IF v_least_date19 = v_max_date THEN
		SET v_least_date19 =  NULL;
	END IF;	
	SET NEW.draftcolplan = v_least_date19;

	-- 20 Earliest
	IF NEW.colsignedplan IS NOT NULL AND NEW.colsignedplan <> v_na_date AND NEW.colsignedplan < v_least_date20 THEN
		SET v_least_date20 = NEW.colsignedplan;
	END IF;
	IF NEW.rentalpaidplan IS NOT NULL AND NEW.rentalpaidplan <> v_na_date AND NEW.rentalpaidplan < v_least_date20 THEN
		SET v_least_date20 = NEW.rentalpaidplan;
	END IF;
	IF NEW.sbtsidoneplan IS NOT NULL AND NEW.sbtsidoneplan <> v_na_date AND NEW.sbtsidoneplan < v_least_date20 THEN
		SET v_least_date20 = NEW.sbtsidoneplan;
	END IF;
	IF NEW.sbtsireportplan IS NOT NULL AND NEW.sbtsireportplan <> v_na_date AND NEW.sbtsireportplan < v_least_date20 THEN
		SET v_least_date20 = NEW.sbtsireportplan;
	END IF;
	IF v_least_date20 = v_max_date THEN
		SET v_least_date20 =  NULL;
	END IF;	
	SET NEW.sbtsipresubmitted = v_least_date20;

	-- 21 Latest
	IF NEW.ipraninstalled IS NOT NULL AND NEW.ipraninstalled <> v_na_date AND NEW.ipraninstalled > v_latest_date21 THEN
		SET v_latest_date21 = NEW.ipraninstalled;
	END IF;
	IF NEW.mwinstalled IS NOT NULL AND NEW.mwinstalled <> v_na_date AND NEW.mwinstalled > v_latest_date21 THEN
		SET v_latest_date21 = NEW.mwinstalled;
	END IF;
	IF v_latest_date21 = v_min_date THEN
		SET v_latest_date21 =  NULL;
	END IF;	
	SET NEW.txinstalled = v_latest_date21;

	-- 22 Latest
	IF NEW.materialspartialdelivered IS NOT NULL AND NEW.materialspartialdelivered <> v_na_date AND NEW.materialspartialdelivered > v_latest_date22 THEN
		SET v_latest_date22 = NEW.materialspartialdelivered;
	END IF;
	IF NEW.materialsfulldelivered IS NOT NULL AND NEW.materialsfulldelivered <> v_na_date AND NEW.materialsfulldelivered > v_latest_date22 THEN
		SET v_latest_date22 = NEW.materialsfulldelivered;
	END IF;
	IF v_latest_date22 = v_min_date THEN
		SET v_latest_date22 =  NULL;
	END IF;	
	SET NEW.mos = v_latest_date22;

	-- 23 Latest
	IF NEW.tssdoneplan IS NOT NULL AND NEW.tssdoneplan <> v_na_date AND NEW.tssdoneplan > v_latest_date23 THEN
		SET v_latest_date23 = NEW.tssdoneplan;
	END IF;
	IF NEW.tssrsubmittedplan IS NOT NULL AND NEW.tssrsubmittedplan <> v_na_date AND NEW.tssrsubmittedplan > v_latest_date23 THEN
		SET v_latest_date23 = NEW.tssrsubmittedplan;
	END IF;
	IF NEW.pretssrsubmitted IS NOT NULL AND NEW.pretssrsubmitted <> v_na_date AND NEW.pretssrsubmitted > v_latest_date23 THEN
		SET v_latest_date23 = NEW.pretssrsubmitted;
	END IF;
	IF NEW.mwpretssrsubmitted IS NOT NULL AND NEW.mwpretssrsubmitted <> v_na_date AND NEW.mwpretssrsubmitted > v_latest_date23 THEN
		SET v_latest_date23 = NEW.mwpretssrsubmitted;
	END IF;
	IF v_latest_date23 = v_min_date THEN
		SET v_latest_date23 =  NULL;
	END IF;	
	SET NEW.btsinstallation = v_latest_date23;

	-- 24 Latest
	IF NEW.mobilizationplan IS NOT NULL AND NEW.mobilizationplan <> v_na_date AND NEW.mobilizationplan > v_latest_date24 THEN
		SET v_latest_date24 = NEW.mobilizationplan;
	END IF;
	IF NEW.excavationplan IS NOT NULL AND NEW.excavationplan <> v_na_date AND NEW.excavationplan > v_latest_date24 THEN
		SET v_latest_date24 = NEW.excavationplan;
	END IF;
	IF NEW.foundationpitrepairplan IS NOT NULL AND NEW.foundationpitrepairplan <> v_na_date AND NEW.foundationpitrepairplan > v_latest_date24 THEN
		SET v_latest_date24 = NEW.foundationpitrepairplan;
	END IF;
	IF NEW.rebarpreparationplan IS NOT NULL AND NEW.rebarpreparationplan <> v_na_date AND NEW.rebarpreparationplan > v_latest_date24 THEN
		SET v_latest_date24 = NEW.rebarpreparationplan;
	END IF;
	IF v_latest_date24 = v_min_date THEN
		SET v_latest_date24 =  NULL;
	END IF;	
	SET NEW.ssvapproved = v_latest_date24;

	--
	SET NEW.vatamount = CONCAT(ROUND(CONVERT(NEW.monthlyrent,SIGNED)*0.12,0),'');
	SET NEW.whtamount = CONCAT(ROUND(CONVERT(NEW.monthlyrent,SIGNED)*0.05,0),'');
END;