TYPE=VIEW
query=select `tprj`.`prefix` AS `prefix`,`nhtprj`.`name` AS `testproject_name`,`nhts_l1`.`name` AS `level1_name`,`nhts_l2`.`name` AS `level2_name`,`nhtprj`.`id` AS `testproject_id`,`nhts_l1`.`id` AS `level1_id`,`nhts_l2`.`id` AS `level2_id` from (((`testlink`.`testprojects` `tprj` join `testlink`.`nodes_hierarchy` `nhtprj` on(`tprj`.`id` = `nhtprj`.`id`)) left join `testlink`.`nodes_hierarchy` `nhts_l1` on(`nhts_l1`.`parent_id` = `nhtprj`.`id`)) left join `testlink`.`nodes_hierarchy` `nhts_l2` on(`nhts_l2`.`parent_id` = `nhts_l1`.`id`)) where `nhtprj`.`node_type_id` = 1 and `nhts_l1`.`node_type_id` = 2 and `nhts_l2`.`node_type_id` = 2
md5=7a7e6d85c29c659964f474678438dea4
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2025-02-21 11:03:01
create-version=2
source=SELECT TPRJ.prefix,\nNHTPRJ.name AS testproject_name,    \nNHTS_L1.name AS level1_name,\nNHTS_L2.name AS level2_name,\nNHTPRJ.id AS testproject_id, \nNHTS_L1.id AS level1_id, \nNHTS_L2.id AS level2_id \nFROM /*prefix*/testprojects TPRJ \nJOIN /*prefix*/nodes_hierarchy NHTPRJ \nON TPRJ.id = NHTPRJ.id\nLEFT OUTER JOIN /*prefix*/nodes_hierarchy NHTS_L1 \nON NHTS_L1.parent_id = NHTPRJ.id\nLEFT OUTER JOIN /*prefix*/nodes_hierarchy NHTS_L2\nON NHTS_L2.parent_id = NHTS_L1.id \nWHERE NHTPRJ.node_type_id = 1 \nAND NHTS_L1.node_type_id = 2\nAND NHTS_L2.node_type_id = 2
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `tprj`.`prefix` AS `prefix`,`nhtprj`.`name` AS `testproject_name`,`nhts_l1`.`name` AS `level1_name`,`nhts_l2`.`name` AS `level2_name`,`nhtprj`.`id` AS `testproject_id`,`nhts_l1`.`id` AS `level1_id`,`nhts_l2`.`id` AS `level2_id` from (((`testlink`.`testprojects` `tprj` join `testlink`.`nodes_hierarchy` `nhtprj` on(`tprj`.`id` = `nhtprj`.`id`)) left join `testlink`.`nodes_hierarchy` `nhts_l1` on(`nhts_l1`.`parent_id` = `nhtprj`.`id`)) left join `testlink`.`nodes_hierarchy` `nhts_l2` on(`nhts_l2`.`parent_id` = `nhts_l1`.`id`)) where `nhtprj`.`node_type_id` = 1 and `nhts_l1`.`node_type_id` = 2 and `nhts_l2`.`node_type_id` = 2
mariadb-version=100425
