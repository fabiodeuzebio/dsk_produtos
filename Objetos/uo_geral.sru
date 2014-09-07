HA$PBExportHeader$uo_geral.sru
forward
global type uo_geral from nonvisualobject
end type
end forward

global type uo_geral from nonvisualobject
end type
global uo_geral uo_geral

type variables
n_cryptoapi in_crypto

end variables
forward prototypes
public function boolean of_autenticacao (string aslogin, string assenha)
end prototypes

public function boolean of_autenticacao (string aslogin, string assenha);long llExiste
String lsSenha

lsSenha = in_crypto.of_Encrypt(asSenha, "dsk_produtos")

SELECT 1 INTO :llExiste
  FROM dba.usuarios
WHERE user_login = :asLogin 
    AND senha = :lsSenha;

if isnull(llExiste) or llExiste <= 0 then
	return false
end if

return true
end function

on uo_geral.create
call super::create
TriggerEvent( this, "constructor" )
end on

on uo_geral.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;// update settings
in_crypto.iCryptoProvider		= "Microsoft Strong Cryptographic Provider"
in_crypto.iProviderType			= in_crypto.PROV_RSA_FULL
in_crypto.iEncryptAlgorithm	= in_crypto.CALG_RC4
in_crypto.iHashAlgorithm		= in_crypto.CALG_MD5
end event

