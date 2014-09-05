HA$PBExportHeader$n_cst_sql.sru
$PBExportComments$Extension SQL Service service
forward
global type n_cst_sql from pfc_n_cst_sql
end type
end forward

global type n_cst_sql from pfc_n_cst_sql
end type

on n_cst_sql.create
call super::create
end on

on n_cst_sql.destroy
call super::destroy
end on

