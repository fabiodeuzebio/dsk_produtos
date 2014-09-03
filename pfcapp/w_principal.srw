HA$PBExportHeader$w_principal.srw
forward
global type w_principal from w_frame
end type
end forward

global type w_principal from w_frame
integer x = 107
string title = "X Cobran$$HEX1$$e700$$ENDHEX$$as"
windowstate windowstate = maximized!
end type
global w_principal w_principal

on w_principal.create
call super::create
end on

on w_principal.destroy
call super::destroy
if IsValid(MenuID) then destroy(MenuID)
end on

