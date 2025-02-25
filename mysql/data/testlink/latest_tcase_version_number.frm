TYPE=VIEW
query=select `nh_tc`.`id` AS `testcase_id`,max(`tcv`.`version`) AS `version` from ((`testlink`.`nodes_hierarchy` `nh_tc` join `testlink`.`nodes_hierarchy` `nh_tcv` on(`nh_tcv`.`parent_id` = `nh_tc`.`id`)) join `testlink`.`tcversions` `tcv` on(`nh_tcv`.`id` = `tcv`.`id`)) group by `nh_tc`.`id`
md5=911e8366bf8ffaf4cd446dde39c20001
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2025-02-21 11:03:01
create-version=2
source=SELECT NH_TC.id AS testcase_id,max(TCV.version) AS version \nFROM /*prefix*/nodes_hierarchy NH_TC \nJOIN /*prefix*/nodes_hierarchy NH_TCV \nON NH_TCV.parent_id = NH_TC.id\nJOIN /*prefix*/tcversions TCV \nON NH_TCV.id = TCV.id \nGROUP BY testcase_id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `nh_tc`.`id` AS `testcase_id`,max(`tcv`.`version`) AS `version` from ((`testlink`.`nodes_hierarchy` `nh_tc` join `testlink`.`nodes_hierarchy` `nh_tcv` on(`nh_tcv`.`parent_id` = `nh_tc`.`id`)) join `testlink`.`tcversions` `tcv` on(`nh_tcv`.`id` = `tcv`.`id`)) group by `nh_tc`.`id`
mariadb-version=100425
