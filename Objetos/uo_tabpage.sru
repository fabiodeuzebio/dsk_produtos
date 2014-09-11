HA$PBExportHeader$uo_tabpage.sru
forward
global type uo_tabpage from u_tab
end type
type tabpage_1 from u_tabpg within uo_tabpage
end type
type tabpage_1 from u_tabpg within uo_tabpage
end type
end forward

global type uo_tabpage from u_tab
tabpage_1 tabpage_1
end type
global uo_tabpage uo_tabpage

on uo_tabpage.create
this.tabpage_1=create tabpage_1
int iCurrent
call super::create
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.tabpage_1
end on

on uo_tabpage.destroy
call super::destroy
destroy(this.tabpage_1)
end on

type tabpage_1 from u_tabpg within uo_tabpage
integer x = 18
integer y = 100
integer width = 859
integer height = 496
string text = "none"
end type

event dragdrop;call super::dragdrop;return 1
end event

