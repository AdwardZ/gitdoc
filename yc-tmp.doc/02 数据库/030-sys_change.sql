-- 文档上传增加字段
ALTER TABLE js_sys_file_upload ADD site_id VARCHAR(64) NULL COMMENT 'siteId' AFTER biz_type;
ALTER TABLE js_sys_file_upload ADD milestone_id VARCHAR(64) NULL COMMENT 'milestoneId' AFTER site_id;
ALTER TABLE js_sys_file_upload ADD milestone_type CHAR(1) NULL COMMENT 'milestoneType' AFTER milestone_id;

-- 文档上传增加索引
CREATE INDEX i_js_sys_file_upload_1 ON js_sys_file_upload (site_id);
CREATE INDEX i_js_sys_file_upload_2 ON js_sys_file_upload (milestone_type);

-- 文档上传增加TRIGGER
DROP TRIGGER t_js_sys_file_upload;
CREATE TRIGGER t_js_sys_file_upload BEFORE UPDATE
ON js_sys_file_upload FOR EACH ROW
BEGIN
	DECLARE v_site_id VARCHAR(64) character set utf8;
	DECLARE v_milestone_id VARCHAR(64) character set utf8;
	DECLARE v_milestone_type CHAR(1) character set utf8;
	DECLARE v_pos INTEGER;

	IF NEW.biz_key IS NOT NULL AND (OLD.biz_key IS NULL OR NEW.biz_key <> OLD.biz_key) THEN
		SET v_pos = INSTR(NEW.biz_key, '-');
		IF v_pos > 1 THEN
			SET NEW.site_id = SUBSTR(NEW.biz_key,1,v_pos-1);
			SET NEW.milestone_id = SUBSTR(NEW.biz_key,v_pos+1);
		END IF;
	END IF;
	IF NEW.biz_type IS NOT NULL AND (OLD.biz_type IS NULL OR NEW.biz_type <> OLD.biz_type) THEN
		if INSTR(NEW.biz_type, 'site_') = 1 THEN
			SET NEW.milestone_type = '1';
		ELSEIF INSTR(NEW.biz_type, 'osp_') = 1 THEN
			SET NEW.milestone_type = '2';
		ELSEIF INSTR(NEW.biz_type, 'dc_') = 1 THEN
			SET NEW.milestone_type = '3';
		ELSEIF INSTR(NEW.biz_type, 'siteDir_') = 1 THEN
			SET NEW.milestone_type = '4';
		ELSEIF INSTR(NEW.biz_type, 'ospissue_') = 1 THEN
			SET NEW.milestone_type = '5';
		ELSEIF INSTR(NEW.biz_type, 'acp_') = 1 THEN
			SET NEW.milestone_type = '6';		
		END IF;
	END IF;
END;





