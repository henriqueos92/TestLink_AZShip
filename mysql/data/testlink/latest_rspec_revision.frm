TYPE=VIEW
query=select `rsr`.`parent_id` AS `req_spec_id`,`rs`.`testproject_id` AS `testproject_id`,max(`rsr`.`revision`) AS `revision` from (`testlink`.`req_specs_revisions` `rsr` join `testlink`.`req_specs` `rs` on(`rs`.`id` = `rsr`.`parent_id`)) group by `rsr`.`parent_id`,`rs`.`testproject_id`
md5=873c66eb159f3a7e3cc497b4aceab12e
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2025-02-21 11:03:01
create-version=2
source=SELECT RSR.parent_id AS req_spec_id, RS.testproject_id AS testproject_id,\nMAX(RSR.revision) AS revision \nFROM /*prefix*/req_specs_revisions RSR \nJOIN /*prefix*/req_specs RS \nON RS.id = RSR.parent_id\nGROUP BY RSR.parent_id,RS.testproject_id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `rsr`.`parent_id` AS `req_spec_id`,`rs`.`testproject_id` AS `testproject_id`,max(`rsr`.`revision`) AS `revision` from (`testlink`.`req_specs_revisions` `rsr` join `testlink`.`req_specs` `rs` on(`rs`.`id` = `rsr`.`parent_id`)) group by `rsr`.`parent_id`,`rs`.`testproject_id`
mariadb-version=100425
