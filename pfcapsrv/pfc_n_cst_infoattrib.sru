HA$PBExportHeader$pfc_n_cst_infoattrib.sru
$PBExportComments$PFC Informational attributes
forward
global type pfc_n_cst_infoattrib from n_cst_baseattrib
end type
end forward

global type pfc_n_cst_infoattrib from n_cst_baseattrib autoinstantiate
end type

type variables
Public:

string	is_name
string	is_description

end variables

on pfc_n_cst_infoattrib.create
call super::create
end on

on pfc_n_cst_infoattrib.destroy
call super::destroy
end on

