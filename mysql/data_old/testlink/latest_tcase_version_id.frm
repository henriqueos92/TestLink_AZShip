TYPE=VIEW
query=select `ltcvn`.`testcase_id` AS `testcase_id`,`ltcvn`.`version` AS `version`,`tcv`.`id` AS `tcversion_id` from ((`testlink`.`latest_tcase_version_number` `ltcvn` join `testlink`.`nodes_hierarchy` `nhtcv` on(`nhtcv`.`parent_id` = `ltcvn`.`testcase_id`)) join `testlink`.`tcversions` `tcv` on(`tcv`.`id` = `nhtcv`.`id` and `tcv`.`version` = `ltcvn`.`version`))
md5=6e60ec6c0a14d7b7c795dc899d795518
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2025-02-21 11:03:01
create-version=2
source=SELECT\n   LTCVN.testcase_id AS testcase_id,\n   LTCVN.version AS version,\n   TCV.id AS tcversion_id\nFROM /*prefix*/latest_tcase_version_number LTCVN \njoin /*prefix*/nodes_hierarchy NHTCV \non NHTCV.parent_id = LTCVN.testcase_id \njoin /*prefix*/tcversions TCV \non TCV.id = NHTCV.id \nand TCV.version = LTCVN.version
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `ltcvn`.`testcase_id` AS `testcase_id`,`ltcvn`.`version` AS `version`,`tcv`.`id` AS `tcversion_id` from ((`testlink`.`latest_tcase_version_number` `ltcvn` join `testlink`.`nodes_hierarchy` `nhtcv` on(`nhtcv`.`parent_id` = `ltcvn`.`testcase_id`)) join `testlink`.`tcversions` `tcv` on(`tcv`.`id` = `nhtcv`.`id` and `tcv`.`version` = `ltcvn`.`version`))
mariadb-version=100425
