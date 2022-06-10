DROP INDEX i_ycosp_site_1 on ycosp_site;
DROP INDEX i_ycosp_site_2 on ycosp_site;
DROP INDEX i_ycosp_site_3 on ycosp_site;
DROP INDEX i_ycosp_site_4 on ycosp_site;
DROP INDEX i_ycosp_site_column_1 on ycosp_site_column;
DROP INDEX i_ycosp_site_column_2 on ycosp_site_column;
DROP INDEX i_ycosp_site_column_3 on ycosp_site_column;
DROP INDEX i_ycosp_role_field_1 on ycosp_role_field;
DROP INDEX i_ycosp_miles_opera_1 on ycosp_miles_opera;
DROP INDEX i_ycosp_miles_opera_2 on ycosp_miles_opera;
DROP INDEX i_ycosp_notify_1 on ycosp_notify;

--------------------------------------------------------------------------------
CREATE UNIQUE INDEX i_ycosp_site_1 ON ycosp_site (physicalplansiteid);
CREATE INDEX i_ycosp_site_2 ON ycosp_site (saqvendor);
CREATE INDEX i_ycosp_site_3 ON ycosp_site (tssdddvendor);
CREATE INDEX i_ycosp_site_4 ON ycosp_site (cmevendor);
CREATE UNIQUE INDEX i_ycosp_site_column_1 ON ycosp_site_column (column_name);
CREATE UNIQUE INDEX i_ycosp_site_column_2 ON ycosp_site_column (attr_name);
CREATE UNIQUE INDEX i_ycosp_site_column_3 ON ycosp_site_column (show_name);
CREATE INDEX i_ycosp_role_field_1 ON ycosp_role_field (role_code);
CREATE INDEX i_ycosp_miles_opera_1 ON ycosp_miles_opera (site_id, column_id);
CREATE INDEX i_ycosp_miles_opera_2 ON ycosp_miles_opera (column_id, flow_sort);
CREATE INDEX i_ycosp_notify_1 ON ycosp_notify (notify_user_code);
