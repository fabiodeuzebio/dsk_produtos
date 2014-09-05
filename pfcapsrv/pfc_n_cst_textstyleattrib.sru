HA$PBExportHeader$pfc_n_cst_textstyleattrib.sru
$PBExportComments$PFC Text Style attributes
forward
global type pfc_n_cst_textstyleattrib from n_cst_baseattrib
end type
end forward

global type pfc_n_cst_textstyleattrib from n_cst_baseattrib autoinstantiate
end type

type variables
Public:
boolean	ib_bold
boolean	ib_italic
boolean	ib_strikeout
boolean	ib_subscript
boolean	ib_superscript
boolean	ib_underlined

end variables

on pfc_n_cst_textstyleattrib.create
call super::create
end on

on pfc_n_cst_textstyleattrib.destroy
call super::destroy
end on

