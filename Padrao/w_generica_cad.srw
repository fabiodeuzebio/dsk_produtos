HA$PBExportHeader$w_generica_cad.srw
forward
global type w_generica_cad from w_main
end type
type cb_gravar from uo_botao within w_generica_cad
end type
type cb_selecionar from uo_botao within w_generica_cad
end type
type cb_excluir from uo_botao within w_generica_cad
end type
type dw_1 from uo_datawindow within w_generica_cad
end type
end forward

global type w_generica_cad from w_main
integer width = 2277
integer height = 1192
cb_gravar cb_gravar
cb_selecionar cb_selecionar
cb_excluir cb_excluir
dw_1 dw_1
end type
global w_generica_cad w_generica_cad

on w_generica_cad.create
int iCurrent
call super::create
this.cb_gravar=create cb_gravar
this.cb_selecionar=create cb_selecionar
this.cb_excluir=create cb_excluir
this.dw_1=create dw_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_gravar
this.Control[iCurrent+2]=this.cb_selecionar
this.Control[iCurrent+3]=this.cb_excluir
this.Control[iCurrent+4]=this.dw_1
end on

on w_generica_cad.destroy
call super::destroy
destroy(this.cb_gravar)
destroy(this.cb_selecionar)
destroy(this.cb_excluir)
destroy(this.dw_1)
end on

event open;call super::open;dw_1.Event pfc_InsertRow()
end event

type cb_gravar from uo_botao within w_generica_cad
integer x = 1038
integer y = 936
integer taborder = 30
string text = "&Gravar"
end type

event clicked;call super::clicked;dw_1.event pfc_update(true,true) 
end event

type cb_selecionar from uo_botao within w_generica_cad
integer x = 1440
integer y = 936
integer taborder = 20
string text = "&Selecionar"
end type

type cb_excluir from uo_botao within w_generica_cad
integer x = 1838
integer y = 936
integer taborder = 20
string text = "E&xcluir"
end type

event clicked;call super::clicked;dw_1.event pfc_deleterow()
end event

type dw_1 from uo_datawindow within w_generica_cad
integer x = 37
integer y = 36
integer width = 2162
integer height = 848
integer taborder = 10
end type

