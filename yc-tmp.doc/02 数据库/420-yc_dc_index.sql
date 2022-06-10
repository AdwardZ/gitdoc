DROP INDEX i_ycdc_site_1 on ycdc_site;
DROP INDEX i_ycdc_site_2 on ycdc_site;
DROP INDEX i_ycdc_site_3 on ycdc_site;
DROP INDEX i_ycdc_site_4 on ycdc_site;
DROP INDEX i_ycdc_site_column_1 on ycdc_site_column;
DROP INDEX i_ycdc_site_column_2 on ycdc_site_column;
DROP INDEX i_ycdc_site_column_3 on ycdc_site_column;
DROP INDEX i_ycdc_role_field_1 on ycdc_role_field;
DROP INDEX i_ycdc_miles_opera_1 on ycdc_miles_opera;
DROP INDEX i_ycdc_miles_opera_2 on ycdc_miles_opera;

--------------------------------------------------------------------------------
CREATE UNIQUE INDEX i_ycdc_site_1 ON ycdc_site (physicalplansiteid);
CREATE INDEX i_ycdc_site_2 ON ycdc_site (saqvendor);
CREATE INDEX i_ycdc_site_3 ON ycdc_site (tssdddvendor);
CREATE INDEX i_ycdc_site_4 ON ycdc_site (cmevendor);
CREATE UNIQUE INDEX i_ycdc_site_column_1 ON ycdc_site_column (column_name);
CREATE UNIQUE INDEX i_ycdc_site_column_2 ON ycdc_site_column (attr_name);
CREATE UNIQUE INDEX i_ycdc_site_column_3 ON ycdc_site_column (show_name);
CREATE INDEX i_ycdc_role_field_1 ON ycdc_role_field (role_code);
CREATE INDEX i_ycdc_miles_opera_1 ON ycdc_miles_opera (site_id, column_id);
CREATE INDEX i_ycdc_miles_opera_2 ON ycdc_miles_opera (column_id, flow_sort);
