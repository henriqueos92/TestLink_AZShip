TYPE=VIEW
query=select `nhtcv`.`parent_id` AS `testcase_id`,`nhtcv`.`id` AS `id` from `testlink`.`nodes_hierarchy` `nhtcv` where `nhtcv`.`node_type_id` = 4 and !exists(select 1 from `testlink`.`testcase_keywords` `tck` where `tck`.`tcversion_id` = `nhtcv`.`id` limit 1)
md5=ec7f67a04991b7da7323b234ae67d697
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2025-02-21 11:03:01
create-version=2
source=SELECT\n   NHTCV.parent_id AS testcase_id,\n   NHTCV.id AS id\nFROM /*prefix*/nodes_hierarchy NHTCV \nWHERE NHTCV.node_type_id = 4 AND\nNOT(EXISTS(SELECT 1 FROM /*prefix*/testcase_keywords TCK \n           WHERE TCK.tcversion_id = NHTCV.id))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `nhtcv`.`parent_id` AS `testcase_id`,`nhtcv`.`id` AS `id` from `testlink`.`nodes_hierarchy` `nhtcv` where `nhtcv`.`node_type_id` = 4 and !exists(select 1 from `testlink`.`testcase_keywords` `tck` where `tck`.`tcversion_id` = `nhtcv`.`id` limit 1)
mariadb-version=100425
