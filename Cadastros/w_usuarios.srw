HA$PBExportHeader$w_usuarios.srw
forward
global type w_usuarios from w_generica_cad
end type
end forward

global type w_usuarios from w_generica_cad
end type
global w_usuarios w_usuarios

on w_usuarios.create
call super::create
end on

on w_usuarios.destroy
call super::destroy
end on

type cb_4 from w_generica_cad`cb_4 within w_usuarios
end type

type cb_3 from w_generica_cad`cb_3 within w_usuarios
end type

type cb_2 from w_generica_cad`cb_2 within w_usuarios
end type

type cb_1 from w_generica_cad`cb_1 within w_usuarios
end type

type cb_gravar from w_generica_cad`cb_gravar within w_usuarios
end type

type cb_selecionar from w_generica_cad`cb_selecionar within w_usuarios
end type

type cb_excluir from w_generica_cad`cb_excluir within w_usuarios
end type

type dw_1 from w_generica_cad`dw_1 within w_usuarios
string dataobject = "dw_usuarios"
boolean vscrollbar = false
boolean border = false
borderstyle borderstyle = stylebox!
end type

