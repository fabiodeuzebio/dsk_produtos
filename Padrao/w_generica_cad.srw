HA$PBExportHeader$w_generica_cad.srw
forward
global type w_generica_cad from w_main
end type
type cb_4 from uo_botao within w_generica_cad
end type
type cb_3 from uo_botao within w_generica_cad
end type
type cb_2 from uo_botao within w_generica_cad
end type
type cb_1 from uo_botao within w_generica_cad
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
event ue_novo_codigo ( )
event ue_chave_primaria ( )
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
cb_gravar cb_gravar
cb_selecionar cb_selecionar
cb_excluir cb_excluir
dw_1 dw_1
end type
global w_generica_cad w_generica_cad

type variables
String isTable, isKey
end variables

event ue_novo_codigo();string lsOwnerTable, lsCmd
double ldNovoCodigo

lsOwnerTable = dw_1.describe("#1.dbname")
lsCmd = "select max("+lsOwnerTable+") from "+isTable
				 
prepare SQLSA from :lsCmd;
DESCRIBE SQLSA INTO SQLDA;
declare proximaLinha dynamic cursor for sqlsa;
open dynamic proximaLinha;
fetch proximaLinha into :lsCmd;
close proximaLinha;

ldNovoCodigo = double(lsCmd)
if (Isnull(ldNovoCodigo)) or ldNovoCodigo< 0 then ldNovoCodigo = 0
ldNovoCodigo++
dw_1.Settext(string(ldNovoCodigo))
end event

event ue_chave_primaria();string lsColcount
integer llCont

isTable = dw_1.Describe("Datawindow.Table.UpdateTable")
lsColcount = dw_1.Describe("DataWindow.Column.Count")

for llCont = 1 to long(lsColCount)
	if dw_1.Describe('#'+string(llCont)+'.key') = 'yes' then
		isKey = dw_1.Describe('#'+string(llCont)+'.name')
		exit
	end if
next
end event

on w_generica_cad.create
int iCurrent
call super::create
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.cb_gravar=create cb_gravar
this.cb_selecionar=create cb_selecionar
this.cb_excluir=create cb_excluir
this.dw_1=create dw_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_4
this.Control[iCurrent+2]=this.cb_3
this.Control[iCurrent+3]=this.cb_2
this.Control[iCurrent+4]=this.cb_1
this.Control[iCurrent+5]=this.cb_gravar
this.Control[iCurrent+6]=this.cb_selecionar
this.Control[iCurrent+7]=this.cb_excluir
this.Control[iCurrent+8]=this.dw_1
end on

on w_generica_cad.destroy
call super::destroy
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.cb_gravar)
destroy(this.cb_selecionar)
destroy(this.cb_excluir)
destroy(this.dw_1)
end on

event open;call super::open;dw_1.SetTransObject(SQLCA)
dw_1.Event pfc_InsertRow()
this.triggerevent( "ue_novocodigo")
end event

type cb_4 from uo_botao within w_generica_cad
integer x = 1897
integer y = 48
integer width = 178
integer taborder = 50
string text = ">>|"
end type

event clicked;call super::clicked;dw_1.Event pfc_PreviousPage()
end event

type cb_3 from uo_botao within w_generica_cad
integer x = 1696
integer y = 48
integer width = 178
integer taborder = 40
string text = ">>"
end type

event clicked;call super::clicked;dw_1.event pfc_NextPage()
end event

type cb_2 from uo_botao within w_generica_cad
integer x = 1495
integer y = 48
integer width = 178
integer taborder = 30
string text = "<<"
end type

event clicked;call super::clicked;dw_1.Event pfc_LastPage()
end event

type cb_1 from uo_botao within w_generica_cad
integer x = 1294
integer y = 48
integer width = 178
integer taborder = 20
string text = "|<<"
end type

event clicked;call super::clicked;dw_1.event pfc_FirstPage()
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
integer y = 44
integer width = 2162
integer height = 840
integer taborder = 10
end type

