TYPE=VIEW
query=select `lrqvn`.`req_id` AS `req_id`,`lrqvn`.`version` AS `version`,`reqv`.`id` AS `req_version_id` from ((`testlink`.`latest_req_version` `lrqvn` join `testlink`.`nodes_hierarchy` `nhrqv` on(`nhrqv`.`parent_id` = `lrqvn`.`req_id`)) join `testlink`.`req_versions` `reqv` on(`reqv`.`id` = `nhrqv`.`id` and `reqv`.`version` = `lrqvn`.`version`))
md5=6ec5a1a76663d031a7b95eec75b8f90e
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2025-02-21 11:03:01
create-version=2
source=SELECT\n   LRQVN.req_id AS req_id,\n   LRQVN.version AS version,\n   REQV.id AS req_version_id\nFROM /*prefix*/latest_req_version LRQVN \nJOIN /*prefix*/nodes_hierarchy NHRQV\nON NHRQV.parent_id = LRQVN.req_id \nJOIN /*prefix*/req_versions REQV \nON REQV.id = NHRQV.id AND REQV.version = LRQVN.version
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `lrqvn`.`req_id` AS `req_id`,`lrqvn`.`version` AS `version`,`reqv`.`id` AS `req_version_id` from ((`testlink`.`latest_req_version` `lrqvn` join `testlink`.`nodes_hierarchy` `nhrqv` on(`nhrqv`.`parent_id` = `lrqvn`.`req_id`)) join `testlink`.`req_versions` `reqv` on(`reqv`.`id` = `nhrqv`.`id` and `reqv`.`version` = `lrqvn`.`version`))
mariadb-version=100425
