HA$PBExportHeader$pfc_n_cst_linkageattrib.sru
$PBExportComments$PFC Attributes for DataWindow Linkage service
forward
global type pfc_n_cst_linkageattrib from n_cst_baseattrib
end type
end forward

global type pfc_n_cst_linkageattrib from n_cst_baseattrib autoinstantiate
end type

type variables
Public:
string	is_mastercolarg[]
string 	is_detailcolarg[]
end variables

on pfc_n_cst_linkageattrib.create
call super::create
end on

on pfc_n_cst_linkageattrib.destroy
call super::destroy
end on

