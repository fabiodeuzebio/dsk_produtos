HA$PBExportHeader$n_cst_metaclass.sru
$PBExportComments$Extension Metaclass service
forward
global type n_cst_metaclass from pfc_n_cst_metaclass
end type
end forward

global type n_cst_metaclass from pfc_n_cst_metaclass
end type

on n_cst_metaclass.create
call super::create
end on

on n_cst_metaclass.destroy
call super::destroy
end on

