HA$PBExportHeader$pfc_n_cst_aboutattrib.sru
$PBExportComments$PFC About window attributes
forward
global type pfc_n_cst_aboutattrib from n_cst_baseattrib
end type
end forward

global type pfc_n_cst_aboutattrib from n_cst_baseattrib autoinstantiate
end type

type variables
string	is_application		//The application name
string	is_logo			//The logo
string	is_version			//The application version
string	is_copyright		//A copyright message

end variables

on pfc_n_cst_aboutattrib.create
call super::create
end on

on pfc_n_cst_aboutattrib.destroy
call super::destroy
end on

