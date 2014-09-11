HA$PBExportHeader$pfc_n_cst_calculatorattrib.sru
$PBExportComments$PFC Calculator constructor attributes
forward
global type pfc_n_cst_calculatorattrib from n_cst_baseattrib
end type
end forward

global type pfc_n_cst_calculatorattrib from n_cst_baseattrib autoinstantiate
end type

type variables
Public:

boolean 	ib_dropdown = False
end variables

on pfc_n_cst_calculatorattrib.create
call super::create
end on

on pfc_n_cst_calculatorattrib.destroy
call super::destroy
end on

