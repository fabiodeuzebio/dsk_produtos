//Owner paras tabelas de uso interno
GRANT CONNECT TO admin IDENTIFIED BY "fabiomarceltagnerdskprodutos";
GRANT DBA TO admin;
GRANT RESOURCE TO admin
;
if exists(select 1 from sys.systable where table_type ='BASE' and table_name = 'usuarios') then
   drop table dba.usuarios;
end if
;
create table dba.usuarios (
i_usuario integer not null default null,
nome varchar(100) not null default null,
dt_cadastro date not null default null,
email varchar(50) not null default null,
senha varchar(50) not null default null,
primary key (i_usuario)
);