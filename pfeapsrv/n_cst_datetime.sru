HA$PBExportHeader$n_cst_datetime.sru
$PBExportComments$Extension Date and/or Datetime service
forward
global type n_cst_datetime from pfc_n_cst_datetime
end type
end forward

global type n_cst_datetime from pfc_n_cst_datetime
end type

on n_cst_datetime.create
call super::create
end on

on n_cst_datetime.destroy
call super::destroy
end on

