HA$PBExportHeader$w_generica_cad_tabpg.srw
forward
global type w_generica_cad_tabpg from w_generica_cad
end type
end forward

global type w_generica_cad_tabpg from w_generica_cad
end type
global w_generica_cad_tabpg w_generica_cad_tabpg

on w_generica_cad_tabpg.create
call super::create
end on

on w_generica_cad_tabpg.destroy
call super::destroy
end on

type cb_2 from w_generica_cad`cb_2 within w_generica_cad_tabpg
end type

type cb_1 from w_generica_cad`cb_1 within w_generica_cad_tabpg
end type

type dw_1 from w_generica_cad`dw_1 within w_generica_cad_tabpg
integer x = 1563
integer y = 184
integer width = 192
integer height = 180
end type

