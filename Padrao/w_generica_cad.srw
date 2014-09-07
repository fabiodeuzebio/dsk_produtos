HA$PBExportHeader$w_generica_cad.srw
forward
global type w_generica_cad from w_main
end type
type cb_2 from uo_botao within w_generica_cad
end type
type cb_1 from uo_botao within w_generica_cad
end type
type dw_1 from uo_datawindow within w_generica_cad
end type
end forward

global type w_generica_cad from w_main
integer width = 2277
integer height = 1192
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_generica_cad w_generica_cad

on w_generica_cad.create
int iCurrent
call super::create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_2
this.Control[iCurrent+2]=this.cb_1
this.Control[iCurrent+3]=this.dw_1
end on

on w_generica_cad.destroy
call super::destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

type cb_2 from uo_botao within w_generica_cad
integer x = 1417
integer y = 940
integer taborder = 20
end type

type cb_1 from uo_botao within w_generica_cad
integer x = 1819
integer y = 936
integer taborder = 20
end type

type dw_1 from uo_datawindow within w_generica_cad
integer x = 37
integer y = 36
integer width = 2162
integer height = 848
integer taborder = 10
end type

