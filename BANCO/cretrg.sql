/* Owner paras tabelas de uso interno */
GRANT CONNECT TO admin IDENTIFIED BY "fabiomarceltagnerdskprodutos";
GRANT DBA TO admin;
GRANT RESOURCE TO admin
;
if exists(select 1 from sys.systable where table_type ='BASE' and table_name = 'usuarios') then
   drop table dba.usuarios;
end if
;
/* Tabela de Usuarios */
create table dba.usuarios (
i_usuario integer not null,
nome varchar(100) not null,
dt_cadastro date not null default now(),
email varchar(50) default null,
user_login varchar(50) not null,
senha varchar(200) not null,
primary key (i_usuario)
)
;
/* usuario padrão com senha cryptografada */
Insert into dba.usuarios(i_usuario,nome,dt_cadastro,email,user_login,senha) on existing update values(1,'admin','2014-09-07',null,'admin','ÐY+Ûa')
;
commit
; 
