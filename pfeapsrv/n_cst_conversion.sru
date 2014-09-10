HA$PBExportHeader$n_cst_conversion.sru
$PBExportComments$Extension Conversion service
forward
global type n_cst_conversion from pfc_n_cst_conversion
end type
end forward

global type n_cst_conversion from pfc_n_cst_conversion
end type

on n_cst_conversion.create
call super::create
end on

on n_cst_conversion.destroy
call super::destroy
end on

