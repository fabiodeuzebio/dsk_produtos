HA$PBExportHeader$uo_geral.sru
forward
global type uo_geral from nonvisualobject
end type
end forward

global type uo_geral from nonvisualobject
end type
global uo_geral uo_geral

type variables
long		il_cd_usuario

string		is_nm_usuario
end variables
forward prototypes
public function boolean of_autenticacao (string as_email, string as_senha)
public function string of_permissao_usuario ()
end prototypes

public function boolean of_autenticacao (string as_email, string as_senha);long		ll_usuario

string	ls_nome 	

SELECT cd_usuario,nm_usuario
  INTO :ll_usuario,:ls_nome
  FROM usuario
 WHERE email = :as_email 
    AND senha = :as_senha;

if isnull(ll_usuario) or ll_usuario <= 0 or isnull(ls_nome) or trim(ls_nome) = '' then
	return false
end if

this.il_cd_usuario   = ll_usuario
this.is_nm_usuario = ls_nome

return true
end function

public function string of_permissao_usuario ();string	ls_permissao

SELECT in_permissao
  INTO :ls_permissao
  FROM usuario
 WHERE email = :gs_email_usuario
   AND senha = :gs_senha_usuario;

return ls_permissao
end function

on uo_geral.create
call super::create
TriggerEvent( this, "constructor" )
end on

on uo_geral.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

