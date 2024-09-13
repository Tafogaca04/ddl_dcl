create database empresa_db;
create user 'funcionario'@'localhost'identified by '123';
grant select ON empresa_db.* to 'funcionario'@'localhost';
show grants  for 'funcionario'@'localhost';

create user 'gerente'@'localhost'identified by '321';
grant select ON empresa_db.* to 'gerente'@'localhost';
grant insert ON empresa_db.* to 'gerente'@'localhost';
grant update ON empresa_db.* to 'funcionario'@'localhost';
show grants  for 'gerente'@'localhost';

create user 'admin'@'localhost'identified by '321';
grant all privileges ON empresa_db to 'admin'@'localhost';
revoke select ON  empresa_db.* from 'gerente'@'localhost'; 
rename user 'funcionario'@'localhost' to 'assistente'@'localhost';
alter user 'gerente'@'localhost' identified by ' nova_senha_forte';
show grants  for 'assistente'@'localhost';
show grants  for 'gerente'@'localhost';
show grants  for 'admin'@'localhost';
drop user 'assistente'@'localhost';