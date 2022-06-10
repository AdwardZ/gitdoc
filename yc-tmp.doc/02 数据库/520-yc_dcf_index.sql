DROP INDEX i_ycdcf_site_1 on ycdcf_site;
DROP INDEX i_ycdcf_db_column_1 on ycdcf_db_column;

--------------------------------------------------------------------------------
CREATE INDEX i_ycdcf_site_1 ON ycdcf_site (menu_id, phsiteid);
CREATE UNIQUE INDEX i_ycdcf_db_column_1 ON ycdcf_db_column (menu_id, site_column_id);











