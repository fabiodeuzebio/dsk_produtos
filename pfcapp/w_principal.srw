HA$PBExportHeader$w_principal.srw
forward
global type w_principal from w_frame
end type
end forward

global type w_principal from w_frame
integer x = 107
string title = "X Cobran$$HEX1$$e700$$ENDHEX$$as"
string menuname = "m_principal"
windowstate windowstate = maximized!
end type
global w_principal w_principal

on w_principal.create
call super::create
if IsValid(this.MenuID) then destroy(this.MenuID)
if this.MenuName = "m_principal" then this.MenuID = create m_principal
end on

on w_principal.destroy
call super::destroy
if IsValid(MenuID) then destroy(MenuID)
end on

event open;call super::open;Integer liReturn

liReturn = gnv_app.of_LogonDlg( )

IF liReturn = 1 THEN
	this.SetMicroHelp("Login efetuado com sucesso ")
	
	// Display the Splash window
    gnv_app.of_Splash(1)
ELSE
	MessageBox("Logon", "Falha no Login")
	Close(this)
END IF

end event

event pfc_messagerouter;call super::pfc_messagerouter;Choose case as_Message
	case "pfc_usuarios"
		OpenSheet(w_usuarios, this, 1,original!)
end choose

return 1
end event

