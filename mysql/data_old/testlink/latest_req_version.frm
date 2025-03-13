TYPE=VIEW
query=select `rq`.`id` AS `req_id`,max(`rqv`.`version`) AS `version` from ((`testlink`.`nodes_hierarchy` `nhrqv` join `testlink`.`requirements` `rq` on(`rq`.`id` = `nhrqv`.`parent_id`)) join `testlink`.`req_versions` `rqv` on(`rqv`.`id` = `nhrqv`.`id`)) group by `rq`.`id`
md5=2017850b529c0594a3540383f4dd661f
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2025-02-21 11:03:01
create-version=2
source=SELECT RQ.id AS req_id,max(RQV.version) AS version \nFROM /*prefix*/nodes_hierarchy NHRQV \nJOIN /*prefix*/requirements RQ \nON RQ.id = NHRQV.parent_id \nJOIN /*prefix*/req_versions RQV \nON RQV.id = NHRQV.id\nGROUP BY RQ.id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `rq`.`id` AS `req_id`,max(`rqv`.`version`) AS `version` from ((`testlink`.`nodes_hierarchy` `nhrqv` join `testlink`.`requirements` `rq` on(`rq`.`id` = `nhrqv`.`parent_id`)) join `testlink`.`req_versions` `rqv` on(`rqv`.`id` = `nhrqv`.`id`)) group by `rq`.`id`
mariadb-version=100425
