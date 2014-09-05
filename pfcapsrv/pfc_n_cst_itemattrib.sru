HA$PBExportHeader$pfc_n_cst_itemattrib.sru
$PBExportComments$PFC Item attributes.
forward
global type pfc_n_cst_itemattrib from n_cst_baseattrib
end type
end forward

global type pfc_n_cst_itemattrib from n_cst_baseattrib autoinstantiate
end type

type variables
Public:
integer	ii_index
string	is_itemtext
end variables

on pfc_n_cst_itemattrib.create
call super::create
end on

on pfc_n_cst_itemattrib.destroy
call super::destroy
end on

