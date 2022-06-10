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
	IF v_latest_date23 = v_min_date THEN
		SET v_latest_date23 =  NULL;
	END IF;	
	SET NEW.btsinstallation = v_latest_date23;
END;