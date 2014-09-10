HA$PBExportHeader$n_cst_stack.sru
$PBExportComments$Extension Stack List service
forward
global type n_cst_stack from pfc_n_cst_stack
end type
end forward

global type n_cst_stack from pfc_n_cst_stack
end type

on n_cst_stack.create
call super::create
end on

on n_cst_stack.destroy
call super::destroy
end on

