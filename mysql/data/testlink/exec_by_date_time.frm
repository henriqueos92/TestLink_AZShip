TYPE=VIEW
query=(select `nhtpl`.`name` AS `testplan_name`,date_format(`e`.`execution_ts`,\'%Y-%m-%d\') AS `yyyy_mm_dd`,date_format(`e`.`execution_ts`,\'%Y-%m\') AS `yyyy_mm`,date_format(`e`.`execution_ts`,\'%H\') AS `hh`,date_format(`e`.`execution_ts`,\'%k\') AS `hour`,`e`.`id` AS `id`,`e`.`build_id` AS `build_id`,`e`.`tester_id` AS `tester_id`,`e`.`execution_ts` AS `execution_ts`,`e`.`status` AS `status`,`e`.`testplan_id` AS `testplan_id`,`e`.`tcversion_id` AS `tcversion_id`,`e`.`tcversion_number` AS `tcversion_number`,`e`.`platform_id` AS `platform_id`,`e`.`execution_type` AS `execution_type`,`e`.`execution_duration` AS `execution_duration`,`e`.`notes` AS `notes` from ((`testlink`.`executions` `e` join `testlink`.`testplans` `tpl` on(`tpl`.`id` = `e`.`testplan_id`)) join `testlink`.`nodes_hierarchy` `nhtpl` on(`nhtpl`.`id` = `tpl`.`id`)))
md5=6c1efe5a28e0c26075d8e46106a97a60
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2025-02-21 11:03:01
create-version=2
source=(\nSELECT NHTPL.name AS testplan_name, \nDATE_FORMAT(E.execution_ts, \'%Y-%m-%d\') AS yyyy_mm_dd,\nDATE_FORMAT(E.execution_ts, \'%Y-%m\') AS yyyy_mm,\nDATE_FORMAT(E.execution_ts, \'%H\') AS hh,\nDATE_FORMAT(E.execution_ts, \'%k\') AS hour,\nE.* FROM /*prefix*/executions E\nJOIN /*prefix*/testplans TPL on TPL.id=E.testplan_id\nJOIN /*prefix*/nodes_hierarchy NHTPL on NHTPL.id = TPL.id)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=(select `nhtpl`.`name` AS `testplan_name`,date_format(`e`.`execution_ts`,\'%Y-%m-%d\') AS `yyyy_mm_dd`,date_format(`e`.`execution_ts`,\'%Y-%m\') AS `yyyy_mm`,date_format(`e`.`execution_ts`,\'%H\') AS `hh`,date_format(`e`.`execution_ts`,\'%k\') AS `hour`,`e`.`id` AS `id`,`e`.`build_id` AS `build_id`,`e`.`tester_id` AS `tester_id`,`e`.`execution_ts` AS `execution_ts`,`e`.`status` AS `status`,`e`.`testplan_id` AS `testplan_id`,`e`.`tcversion_id` AS `tcversion_id`,`e`.`tcversion_number` AS `tcversion_number`,`e`.`platform_id` AS `platform_id`,`e`.`execution_type` AS `execution_type`,`e`.`execution_duration` AS `execution_duration`,`e`.`notes` AS `notes` from ((`testlink`.`executions` `e` join `testlink`.`testplans` `tpl` on(`tpl`.`id` = `e`.`testplan_id`)) join `testlink`.`nodes_hierarchy` `nhtpl` on(`nhtpl`.`id` = `tpl`.`id`)))
mariadb-version=100425
