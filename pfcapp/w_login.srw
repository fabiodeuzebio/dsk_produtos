HA$PBExportHeader$w_login.srw
forward
global type w_login from w_logon
end type
end forward

global type w_login from w_logon
string title = "Tela de Login"
end type
global w_login w_login

on w_login.create
call super::create
end on

on w_login.destroy
call super::destroy
end on

type p_logo from w_logon`p_logo within w_login
end type

type st_help from w_logon`st_help within w_login
string text = "Entre com usu$$HEX1$$e100$$ENDHEX$$rio e senha para acesso ao sistema"
end type

type cb_ok from w_logon`cb_ok within w_login
integer y = 24
end type

type cb_cancel from w_logon`cb_cancel within w_login
end type

type sle_userid from w_logon`sle_userid within w_login
end type

type sle_password from w_logon`sle_password within w_login
end type

type st_2 from w_logon`st_2 within w_login
string text = "Login:"
end type

type st_3 from w_logon`st_3 within w_login
string text = "Senha"
end type

