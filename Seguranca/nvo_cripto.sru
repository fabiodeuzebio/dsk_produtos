HA$PBExportHeader$nvo_cripto.sru
forward
global type nvo_cripto from nonvisualobject
end type
end forward

global type nvo_cripto from nonvisualobject
end type
global nvo_cripto nvo_cripto

forward prototypes
public function string of_encripta (string as_cripto)
public function string of_descripta (string as_cripto)
end prototypes

public function string of_encripta (string as_cripto);integer ll_cont
integer ll_tam
string  ls_encchar
string  ls_temp
string  ls_ret = ""
String  ls_var
boolean lb_ok = true
CONSTANT string CRYPT_KEY = "9%#2!@%&!3%@&*5"

debugbreak() 

ll_tam = len(as_cripto)
FOR ll_cont = 1 TO ll_tam
    ls_ret += mid(CRYPT_KEY , mod(ll_cont,12) + 1, 1)
    ls_ret += String(Char(255 - Asc(Mid(as_cripto, ll_cont, 1))))
NEXT 

// Retorna o texto encripytado 

RETURN ls_ret

//mid(CRYPT_KEY, Mod(ll_cont / 2, 10) + 1, 1) <> ls_encchar THEN
end function

public function string of_descripta (string as_cripto);//    DESCRIPTA: 
//
//    AUTOR: RENATO SABINO - www.sabsoft.com.br
// 
//		Descri$$HEX2$$e700e300$$ENDHEX$$o: Decritar o que foi criptografado		
//



// Declare a fun$$HEX2$$e700e300$$ENDHEX$$o of_descripta 
integer ll_cont
integer ll_tam
string  ls_encchar
string  ls_temp
string  ls_ret = "Erro na Criptografia"
boolean lb_ok = true
CONSTANT string CRYPT_KEY = "9%#2!@%&!3%@&*5"

debugbreak() 

ll_tam = len(as_cripto)

IF NOT Mod(ll_tam, 2) = 1 THEN
   ls_temp = ""
   FOR ll_cont = 2 TO (ll_tam + 1) STEP 2
      ls_encchar = Mid(as_cripto, ll_cont - 1, 1)
      IF mid(CRYPT_KEY, Mod(ll_cont / 2, 12) + 1, 1) <> ls_encchar THEN
        lb_ok = FALSE
        EXIT
      END IF     
      ls_encchar = Mid(as_cripto, ll_cont, 1)
      ls_temp += string(char(255 - asc(ls_encchar)))
   NEXT
END IF

IF lb_ok THEN ls_ret = ls_temp 

// Retorna o texto decryptado

RETURN ls_ret




end function

on nvo_cripto.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nvo_cripto.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

