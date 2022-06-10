DROP INDEX i_yc_site_1 on yc_site;
DROP INDEX i_yc_site_2 on yc_site;
DROP INDEX i_yc_site_3 on yc_site;
DROP INDEX i_yc_site_4 on yc_site;
DROP INDEX i_yc_site_column_1 on yc_site_column;
DROP INDEX i_yc_site_column_2 on yc_site_column;
DROP INDEX i_yc_site_column_3 on yc_site_column;
DROP INDEX i_yc_role_field_1 on yc_role_field;
DROP INDEX i_yc_miles_opera_1 on yc_miles_opera;
DROP INDEX i_yc_miles_opera_2 on yc_miles_opera;
DROP INDEX i_yc_notify_1 on yc_notify;
DROP INDEX i_yc_site_dir_1 on yc_site_dir;

--------------------------------------------------------------------------------
CREATE UNIQUE INDEX i_yc_site_1 ON yc_site (physicalplansiteid);
CREATE INDEX i_yc_site_2 ON yc_site (saqvendor);
CREATE INDEX i_yc_site_3 ON yc_site (tssdddvendor);
CREATE INDEX i_yc_site_4 ON yc_site (cmevendor);
CREATE UNIQUE INDEX i_yc_site_column_1 ON yc_site_column (column_name);
CREATE UNIQUE INDEX i_yc_site_column_2 ON yc_site_column (attr_name);
CREATE UNIQUE INDEX i_yc_site_column_3 ON yc_site_column (show_name);
CREATE INDEX i_yc_role_field_1 ON yc_role_field (role_code);
CREATE INDEX i_yc_miles_opera_1 ON yc_miles_opera (site_id, column_id);
CREATE INDEX i_yc_miles_opera_2 ON yc_miles_opera (column_id, flow_sort);
CREATE INDEX i_yc_notify_1 ON yc_notify (notify_user_code);

CREATE UNIQUE INDEX i_yc_site_dir_1 ON yc_site_dir (dir_name);
