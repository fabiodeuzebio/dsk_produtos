HA$PBExportHeader$pfc_nvo_principal.sru
forward
global type pfc_nvo_principal from n_cst_appmanager
end type
end forward

global type pfc_nvo_principal from n_cst_appmanager
end type
global pfc_nvo_principal pfc_nvo_principal

event pfc_open;call super::pfc_open;integer	li_return
string	ls_inifile

// Display the Splash window
this.of_Splash(1)

// Initialize the various functionality of this service
this.of_SetTrRegistration(TRUE)
this.of_SetError(TRUE)
inv_error.of_SetPredefinedSource(SQLCA)

// Connect to database
ls_inifile = gnv_app.of_GetAppIniFile()
IF SQLCA.of_Init(ls_inifile, "Database") = -1 THEN
	this.inv_error.of_message(gnv_app.iapp_object.DisplayName, + &
			"Error initializing connection information, .INI file not found.")
ELSE
	IF SQLCA.of_Connect() = -1 THEN
		this.inv_error.of_message(gnv_app.iapp_object.DisplayName, + &
				"Error connecting to Database.", StopSign!, OK!)
	ELSE
		Open(w_principal)
	END IF 
END IF
end event

on pfc_nvo_principal.create
call super::create
end on

on pfc_nvo_principal.destroy
call super::destroy
end on

event constructor;call super::constructor;ContextInformation lcx_key
int li_major, li_minor
date ld_now

ld_now = Today ( )

/*  Get PB Version.    */
GetContextService ( "ContextInformation", lcx_key)
lcx_key.GetMajorVersion ( li_major )
lcx_key.GetMinorVersion ( li_minor )

// Set the default information needed for this application
iapp_object.DisplayName = "Aqui vamos colocar o nome do projejto"
this.of_SetCopyright("Copyright (c) 2014-" + String ( Year ( ld_now ), "0000" ) + " All rights reserved.")
this.of_SetLogo("peat.bmp")
this.of_SetVersion("Version " + String ( li_major ) + "." + String ( li_minor ) + ".00")
this.of_SetAppIniFile("Sys.ini")



end event

