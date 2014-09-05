HA$PBExportHeader$pfc_n_cst_dssrv_multitableattrib.sru
$PBExportComments$PFC Datastore Multiple Table attributes
forward
global type pfc_n_cst_dssrv_multitableattrib from n_cst_baseattrib
end type
end forward

global type pfc_n_cst_dssrv_multitableattrib from n_cst_baseattrib autoinstantiate
end type

type variables
Public:
string		s_updatetable
integer		i_whereoption
boolean		b_keyupdateinplace
string		s_updatecolumns[]
string		s_keycolumns[]
end variables

on pfc_n_cst_dssrv_multitableattrib.create
call super::create
end on

on pfc_n_cst_dssrv_multitableattrib.destroy
call super::destroy
end on

