HA$PBExportHeader$n_cryptoapi.sru
$PBExportComments$Crypto API
forward
global type n_cryptoapi from nonvisualobject
end type
end forward

global type n_cryptoapi from nonvisualobject autoinstantiate
end type

type prototypes
Function ulong GetLastError ( &
	) Library "kernel32.dll"

Function ulong FormatMessage( &
	ulong dwFlags, &
	ulong lpSource, &
	ulong dwMessageId, &
	ulong dwLanguageId, &
	Ref string lpBuffer, &
	ulong nSize, &
	ulong Arguments &
	) Library "kernel32.dll" Alias For "FormatMessageW"

Function boolean CryptAcquireContext ( &
	Ref ulong phProv, &
	string pszContainer, &
	string pszProvider, &
	ulong dwProvType, &
	ulong dwFlags &
	) Library "advapi32.dll" Alias For "CryptAcquireContextW"

Function boolean CryptReleaseContext ( &
	ulong hProv, &
	ulong dwFlags &
	) Library "advapi32.dll"

Function boolean CryptCreateHash ( &
	ulong hProv, &
	uint Algid, &
	ulong hKey, &
	ulong dwFlags, &
	Ref ulong phHash &
	) Library "advapi32.dll"

Function boolean CryptHashData ( &
	ulong hHash, &
	blob pbData, &
	ulong dwDataLen, &
	ulong dwFlags &
	) Library "advapi32.dll"

Function boolean CryptDestroyHash ( &
	ulong hHash &
	) Library "advapi32.dll"

Function boolean CryptDestroyKey ( &
	ulong hKey &
	) Library "advapi32.dll" Alias For "CryptDestroyKey"

Function boolean CryptGetHashParam ( &
	ulong hHash, &
	ulong dwParam, &
	ref blob pbData, &
	ref ulong pdwDataLen, &
	ulong dwFlags &
	) Library "advapi32.dll"

Function boolean CryptDeriveKey ( &
	ulong hProv, &
	ulong Algid, &
	ulong hBaseData, &
	ulong dwFlags, &
	Ref ulong phKey &
	) Library "advapi32.dll" Alias For "CryptDeriveKey"

Function boolean CryptDecrypt ( &
	ulong hKey, &
	ulong hHash, &
	boolean Final, &
	ulong dwFlags, &
	Ref blob pbData, &
	Ref ulong pdwDataLen &
	) Library "advapi32.dll" Alias For "CryptDecrypt"

Function boolean CryptEncrypt ( &
	ulong hKey, &
	ulong hHash, &
	boolean Final, &
	ulong dwFlags, &
	Ref blob pbData, &
	Ref ulong pdwDataLen, &
	ulong dwBufLen &
	) Library "advapi32.dll" Alias For "CryptEncrypt"

Function boolean CryptGetDefaultProvider ( &
	ulong dwProvType, &
	ulong pdwReserved, &
	ulong dwFlags, &
	Ref string pszProvName, &
	Ref ulong pcbProvName &
	) Library "advapi32.dll" Alias For "CryptGetDefaultProviderW"

Function boolean CryptEnumProviders ( &
	ulong dwIndex, &
	ulong pdwReserved, &
	ulong dwFlags, &
	Ref ulong pdwProvType, &
	Ref string pszProvName, &
	Ref ulong pcbProvName &
	) Library "advapi32.dll" Alias For "CryptEnumProvidersW"

Function boolean CryptEnumProviders ( &
	ulong dwIndex, &
	ulong pdwReserved, &
	ulong dwFlags, &
	Ref ulong pdwProvType, &
	ulong pszProvName, &
	Ref ulong pcbProvName &
	) Library "advapi32.dll" Alias For "CryptEnumProvidersW"

Function boolean CryptBinaryToString ( &
	Blob pbBinary, &
	ulong cbBinary, &
	ulong dwFlags, &
	Ref string pszString, &
	Ref ulong pcchString &
	) Library "crypt32.dll" Alias For "CryptBinaryToStringW"

Function boolean CryptStringToBinary ( &
	string pszString, &
	ulong cchString, &
	ulong dwFlags, &
	Ref blob pbBinary, &
	Ref ulong pcbBinary, &
	Ref ulong pdwSkip, &
	Ref ulong pdwFlags &
	) Library "crypt32.dll" Alias For "CryptStringToBinaryW"

end prototypes

type variables
Private:

// general constants
Constant ULong ERROR_MORE_DATA	= 234
Constant ULong CRYPT_VERIFYCONTEXT	= 4026531840
Constant ULong CRYPT_NEWKEYSET		= 8
Constant ULong CRYPT_MACHINE_KEYSET = 32
Constant ULong CRYPT_DELETEKEYSET	= 16
Constant ULong CRYPT_SILENT			= 64
Constant ULong CRYPT_STRING_BASE64	= 1

Public:

// Cryptographic Provider Names
Constant String MS_DEF_DH_SCHANNEL_PROV	= "Microsoft DH Schannel Cryptographic Provider" 
Constant String MS_DEF_DSS_DH_PROV			= "Microsoft Base DSS and Diffie-Hellman Cryptographic Provider" 
Constant String MS_DEF_DSS_PROV				= "Microsoft Base DSS Cryptographic Provider" 
Constant String MS_DEF_PROV					= "Microsoft Base Cryptographic Provider v1.0" 
Constant String MS_DEF_RSA_SCHANNEL_PROV	= "Microsoft RSA Schannel Cryptographic Provider" 
Constant String MS_DEF_RSA_SIG_PROV			= "Microsoft RSA Signature Cryptographic Provider" 
Constant String MS_ENH_DSS_DH_PROV			= "Microsoft Enhanced DSS and Diffie-Hellman Cryptographic Provider" 
Constant String MS_ENH_RSA_AES_PROV			= "Microsoft Enhanced RSA and AES Cryptographic Provider" 
Constant String MS_ENHANCED_PROV				= "Microsoft Enhanced Cryptographic Provider v1.0" 
Constant String MS_SCARD_PROV					= "Microsoft Base Smart Card Crypto Provider" 
Constant String MS_STRONG_PROV				= "Microsoft Strong Cryptographic Provider" 

// Provider Types
Constant ULong PROV_RSA_FULL			= 1
Constant ULong PROV_RSA_SIG			= 2
Constant ULong PROV_DSS					= 3
Constant ULong PROV_FORTEZZA			= 4
Constant ULong PROV_MS_EXCHANGE		= 5
Constant ULong PROV_SSL					= 6
Constant ULong PROV_RSA_SCHANNEL		= 12
Constant ULong PROV_DSS_DH				= 13
Constant ULong PROV_EC_ECDSA_SIG		= 14
Constant ULong PROV_EC_ECNRA_SIG		= 15
Constant ULong PROV_EC_ECDSA_FULL	= 16
Constant ULong PROV_EC_ECNRA_FULL	= 17
Constant ULong PROV_DH_SCHANNEL		= 18
Constant ULong PROV_SPYRUS_LYNKS		= 20
Constant ULong PROV_RNG					= 21
Constant ULong PROV_INTEL_SEC			= 22
Constant ULong PROV_REPLACE_OWF		= 23
Constant ULong PROV_RSA_AES			= 24

// Encryption Algorithms
Constant ULong CALG_3DES			= 26115
Constant ULong CALG_3DES_112		= 26121
Constant ULong CALG_AES				= 26129
Constant ULong CALG_AES_128		= 26126
Constant ULong CALG_AES_192		= 26127
Constant ULong CALG_AES_256		= 26128
Constant ULong CALG_CYLINK_MEK	= 26124
Constant ULong CALG_DES				= 26113
Constant ULong CALG_DESX			= 26116
Constant ULong CALG_DH_EPHEM		= 43522
Constant ULong CALG_DH_SF			= 43521
Constant ULong CALG_DSS_SIGN		= 8704
Constant ULong CALG_RC2				= 26114
Constant ULong CALG_RC4				= 26625
Constant ULong CALG_RC5				= 26125
Constant ULong CALG_RSA_KEYX		= 41984
Constant ULong CALG_RSA_SIGN		= 9216

// Hashing Algorithms
Constant UInt CALG_HUGHES_MD5	= 40963
Constant UInt CALG_HMAC			= 32777
Constant UInt CALG_MAC			= 32773
Constant UInt CALG_MD2			= 32769
Constant UInt CALG_MD5			= 32771
Constant UInt CALG_SHA			= 32772
Constant UInt CALG_SHA1			= 32772
Constant UInt CALG_SHA_256		= 32780
Constant UInt CALG_SHA_384		= 32781
Constant UInt CALG_SHA_512		= 32782

// Current settings
String iCryptoProvider		= MS_DEF_PROV		// current Crypto Provider
ULong iProviderType			= PROV_RSA_FULL	// current Provider Type
ULong iEncryptAlgorithm		= CALG_RC4			// current Encryption Algorithm
ULong iHashAlgorithm			= CALG_MD5			// current Hash Algorithm

end variables

forward prototypes
public subroutine of_getlasterror (ref unsignedlong aul_error, ref string as_msgtext)
public function string of_blob2hex (blob ablob_data)
public function string of_getdefaultprovider ()
public function integer of_enumproviders (ref string as_provider[])
private function blob of_encryptdecrypt (blob ablob_data, string as_password, boolean ab_encrypt)
public function blob of_decode64 (string as_encoded)
public function string of_encode64 (blob ablob_data)
public function string of_replaceall (string as_oldstring, string as_findstr, string as_replace)
public function blob of_decrypt (blob ablob_data, string as_password)
public function blob of_encrypt (blob ablob_data, string as_password)
public function string of_encrypt (string as_data, string as_password)
public function string of_decrypt (string as_data, string as_password)
public function string of_gethashvalue (blob ablob_data)
public function string of_gethashvalue (string as_data)
end prototypes

public subroutine of_getlasterror (ref unsignedlong aul_error, ref string as_msgtext);// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_GetLastError
//
// PURPOSE:    This function returns the most recent API error message.
//
// ARGUMENTS:  aul_error	- The error number ( by ref )
//					as_msgtext	- The error text ( by ref )
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Constant ULong FORMAT_MESSAGE_FROM_SYSTEM = 4096
Constant ULong LANG_NEUTRAL = 0
ULong lul_rtn, lul_Size = 255

aul_error = GetLastError()

as_msgtext = Space(lul_Size)

lul_rtn = FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM, 0, &
					aul_error, LANG_NEUTRAL, as_msgtext, lul_Size, 0)

end subroutine

public function string of_blob2hex (blob ablob_data);// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_Blob2Hex
//
// PURPOSE:    This function converts a blob to a hex string.
//
// ARGUMENTS:  ablob_data	- The blob data
//
// RETURN:		String representing the blob in hex
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Char HexDigits[0 TO 15] = &
			{'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'}
Integer li_idx, li_max, li_byte, li_right, li_left
Blob lblob_byte
String ls_result

li_max = Len(ablob_data)
For li_idx = 1 To li_max
	lblob_byte = BlobMid(ablob_data, li_idx, 1)
	li_byte = AscA(String(lblob_byte, EncodingAnsi!))
	li_left  = li_byte / 16
	li_right = Mod(li_byte, 16)
	ls_result += HexDigits[li_left] + HexDigits[li_right]
Next

Return ls_result

end function

public function string of_getdefaultprovider ();// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_GetDefaultProvider
//
// PURPOSE:    This function will return the name of the default provider.
//
// RETURN:		String containing CSP name
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// 05/25/2012	RolandS		Changed to use Machine Default provider
// -----------------------------------------------------------------------------

Constant ULong CRYPT_MACHINE_DEFAULT = 1
Constant ULong CRYPT_USER_DEFAULT = 2
String ls_provider, ls_msgtext
ULong lul_error, lul_datalen = 256

ls_provider = Space(lul_datalen)

If Not CryptGetDefaultProvider(iProviderType, &
					0, CRYPT_MACHINE_DEFAULT, ls_provider, lul_datalen) Then
	of_GetLastError(lul_error, ls_msgtext)
	SignalError(lul_error, "CryptGetDefaultProvider:~r~n~r~n" + ls_msgtext)
End If

Return ls_provider

end function

public function integer of_enumproviders (ref string as_provider[]);// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_EnumProviders
//
// PURPOSE:    This function will return a list of providers
//
// ARGUMENTS:  as_Provider	- Array of providers ( by ref )
//
// RETURN:		The number of returned providers
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// -----------------------------------------------------------------------------

ULong lul_dwIndex, lul_dwType, lul_cbName
String ls_provider, ls_msgtext
Integer li_index
ULong lul_error

lul_dwIndex = 0
do while CryptEnumProviders(lul_dwIndex, 0, 0, &
							lul_dwType, 0, lul_cbName)
	ls_provider = Space(lul_cbName)
	If CryptEnumProviders(lul_dwIndex, 0, 0, &
						lul_dwType, ls_provider, lul_cbName) Then
		If lul_dwType = iProviderType Then
			li_index = UpperBound(as_provider) + 1
			as_Provider[li_index] = ls_provider
		End If
	Else
		of_GetLastError(lul_error, ls_msgtext)
		SignalError(lul_error, &
			"CryptEnumProviders:~r~n~r~n" + ls_msgtext)
	End If
	lul_dwIndex++
loop

Return UpperBound(as_provider)

end function

private function blob of_encryptdecrypt (blob ablob_data, string as_password, boolean ab_encrypt);// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_EncryptDecrypt
//
// PURPOSE:    This function will encrypt/decrypt the blob passed to it. Both
//					encrypt/decrypt have the same api calls except one so they
//					are combined to save coding.
//
// ARGUMENTS:  ablob_data	- The blob to be decrypted
//					as_password	- The secret password
//
// RETURN:		Blob containing the decrypted data.
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// -----------------------------------------------------------------------------

ULong lul_hProv, lul_hHash, lul_hKey, lul_error, lul_DataLen, lul_BufLen
Blob lblob_data, lblob_buffer, lblob_result
String ls_null, ls_msgtext

// Get handle to a key container
SetNull(ls_null)
If Not CryptAcquireContext(lul_hProv, ls_null, iCryptoProvider, &
			iProviderType, CRYPT_VERIFYCONTEXT + CRYPT_MACHINE_KEYSET) Then
	of_GetLastError(lul_error, ls_msgtext)
	SignalError(lul_error, "CryptAcquireContext:~r~n~r~n" + ls_msgtext)
End If

// Create the hash object
If Not CryptCreateHash(lul_hProv, iHashAlgorithm, 0, 0, lul_hHash) Then
	of_GetLastError(lul_error, ls_msgtext)
   CryptReleaseContext(lul_hProv, 0)
	SignalError(lul_error, "CryptCreateHash:~r~n~r~n" + ls_msgtext)
End If

// Hash the password
lblob_data = Blob(as_password, EncodingAnsi!)
If Not CryptHashData(lul_hHash, lblob_data, Len(lblob_data), 0) Then
	of_GetLastError(lul_error, ls_msgtext)
   CryptDestroyHash(lul_hHash)
   CryptReleaseContext(lul_hProv, 0)
	SignalError(lul_error, "CryptHashData:~r~n~r~n" + ls_msgtext)
End If

// Derive a session key from the hash object
If Not CryptDeriveKey(lul_hProv, iEncryptAlgorithm, lul_hHash, 0, lul_hKey) Then
	of_GetLastError(lul_error, ls_msgtext)
   CryptDestroyHash(lul_hHash)
   CryptReleaseContext(lul_hProv, 0)
	SignalError(lul_error, "CryptDeriveKey:~r~n~r~n" + ls_msgtext)
End If

// allocate buffer space
lul_DataLen = Len(ablob_data)
lblob_buffer = ablob_data + Blob(Space(8))
lul_BufLen = Len(lblob_buffer)

If ab_encrypt Then
	// Encrypt data
	If CryptEncrypt(lul_hKey, 0, True, 0, &
				lblob_buffer, lul_DataLen, lul_BufLen) Then
		lblob_result = BlobMid(lblob_buffer, 1, lul_DataLen)
	Else
		of_GetLastError(lul_error, ls_msgtext)
		SignalError(lul_error, &
			"CryptEncrypt:~r~n~r~n" + ls_msgtext)
	End If
Else
	// Decrypt data
	If CryptDecrypt(lul_hKey, 0, True, 0, &
				lblob_buffer, lul_DataLen) Then
		lblob_result = BlobMid(lblob_buffer, 1, lul_DataLen)
	Else
		of_GetLastError(lul_error, ls_msgtext)
		SignalError(lul_error, &
			"CryptDecrypt:~r~n~r~n" + ls_msgtext)
	End If
End If

// Release crypto objects
CryptDestroyKey(lul_hKey)
CryptDestroyHash(lul_hHash)
CryptReleaseContext(lul_hProv, 0)

Return lblob_result

end function

public function blob of_decode64 (string as_encoded);// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_Decode64
//
// PURPOSE:    This function converts a Base64 encoded string to binary.
//
//					Note: Requires Windows XP or Server 2003
//
// ARGUMENTS:  as_encoded - String containing encoded data
//
// RETURN:     Blob containing decoded data
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblob_data
ULong lul_len, lul_buflen, lul_skip, lul_pflags
Boolean lb_rtn

lul_len = Len(as_encoded)
lul_buflen = lul_len
lblob_data = Blob(Space(lul_len))

lb_rtn = CryptStringToBinary(as_encoded, &
					lul_len, CRYPT_STRING_BASE64, lblob_data, &
					lul_buflen, lul_skip, lul_pflags)

Return BlobMid(lblob_data, 1, lul_buflen)

end function

public function string of_encode64 (blob ablob_data);// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_Encode64
//
// PURPOSE:    This function converts binary data to a Base64 encoded string.
//
//					Note: Requires Windows XP or Server 2003
//
// ARGUMENTS:  ablob_data - Blob containing data
//
// RETURN:     String containing encoded data
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// -----------------------------------------------------------------------------

String ls_encoded
ULong lul_len, lul_buflen
Boolean lb_rtn

lul_len = Len(ablob_data)

lul_buflen = lul_len * 2

ls_encoded = Space(lul_buflen)

lb_rtn = CryptBinaryToString(ablob_data, &
				lul_len, CRYPT_STRING_BASE64, &
				ls_encoded, lul_buflen)

If lb_rtn Then
	ls_encoded = of_ReplaceAll(ls_encoded, "~r~n", "")
Else
	ls_encoded = ""
End If

Return ls_encoded

end function

public function string of_replaceall (string as_oldstring, string as_findstr, string as_replace);// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_ReplaceAll
//
// PURPOSE:    This function replaces all occurrences of a string in another.
//
// ARGUMENTS:  as_oldstring	- The string to update
//					as_findstr		- The string to look for
//					as_replace		- The string to replace with
//
// RETURN:     The updated string
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// -----------------------------------------------------------------------------

String ls_newstring
Long ll_findstr, ll_replace, ll_pos

// get length of strings
ll_findstr = Len(as_findstr)
ll_replace = Len(as_replace)

// find first occurrence
ls_newstring = as_oldstring
ll_pos = Pos(ls_newstring, as_findstr)

Do While ll_pos > 0
	// replace old with new
	ls_newstring = Replace(ls_newstring, ll_pos, ll_findstr, as_replace)
	// find next occurrence
	ll_pos = Pos(ls_newstring, as_findstr, (ll_pos + ll_replace))
Loop

Return ls_newstring

end function

public function blob of_decrypt (blob ablob_data, string as_password);// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_Decrypt
//
// PURPOSE:    This function will decrypt the blob passed to it.
//
// ARGUMENTS:  ablob_data	- The blob to be decrypted
//					as_password	- The secret password
//
// RETURN:		Blob containing the decrypted data.
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblob_decrypted

// decrypt the data
lblob_decrypted = this.of_EncryptDecrypt( &
								ablob_data, as_password, False)

Return lblob_decrypted

end function

public function blob of_encrypt (blob ablob_data, string as_password);// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_Encrypt
//
// PURPOSE:    This function will encrypt the blob passed to it.
//
// ARGUMENTS:  ablob_data	- The blob to be encrypted
//					as_password	- The secret password
//
// RETURN:		Blob containing the encrypted data.
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblob_encrypted

// encrypt the data
lblob_encrypted = this.of_EncryptDecrypt( &
								ablob_data, as_password, True)

Return lblob_encrypted

end function

public function string of_encrypt (string as_data, string as_password);// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_Encrypt
//
// PURPOSE:    This function will encrypt the string passed to it.
//
// ARGUMENTS:  as_data		- The string to be encrypted
//					as_password	- The secret password
//
// RETURN:		String containing the encrypted data.
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblob_data, lblob_encrypted

lblob_data = Blob(as_data, EncodingAnsi!)

// encrypt the data
lblob_encrypted = this.of_EncryptDecrypt( &
								lblob_data, as_password, True)

Return String(lblob_encrypted, EncodingAnsi!)

end function

public function string of_decrypt (string as_data, string as_password);// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_Decrypt
//
// PURPOSE:    This function will decrypt the string passed to it.
//
// ARGUMENTS:  as_data		- The string to be decrypted
//					as_password	- The secret password
//
// RETURN:		String containing the decrypted data.
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblob_data, lblob_decrypted

lblob_data = Blob(as_data, EncodingAnsi!)

// encrypt the data
lblob_decrypted = this.of_EncryptDecrypt( &
								lblob_data, as_password, False)

Return String(lblob_decrypted, EncodingAnsi!)

end function

public function string of_gethashvalue (blob ablob_data);// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_GetHashValue
//
// PURPOSE:    This function calculates the hash of a blob.
//
// ARGUMENTS:  ablob_data	- The blob to generate the hash for
//
// RETURN:		String representing the hash in hex
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Constant ulong HP_ALGID		= 1
Constant ulong HP_HASHVAL	= 2
Constant ulong HP_HASHSIZE = 4
ULong lul_hProv, lul_hHash, lul_error, lul_DataLen
Blob{20} lblob_hash
Blob lblob_result
String ls_msgtext, ls_null

// Get handle to a key container
SetNull(ls_null)
If Not CryptAcquireContext(lul_hProv, ls_null, iCryptoProvider, &
			iProviderType, CRYPT_VERIFYCONTEXT + CRYPT_MACHINE_KEYSET) Then
	of_GetLastError(lul_error, ls_msgtext)
	SignalError(lul_error, "CryptAcquireContext:~r~n~r~n" + ls_msgtext)
End If

// Create the hash object
If Not CryptCreateHash(lul_hProv, iHashAlgorithm, 0, 0, lul_hHash) Then
	of_GetLastError(lul_error, ls_msgtext)
   CryptReleaseContext(lul_hProv, 0)
	SignalError(lul_error, "CryptCreateHash:~r~n~r~n" + ls_msgtext)
End If

// Add data to the hash object
If Not CryptHashData(lul_hHash, ablob_data, Len(ablob_data), 0) Then
	of_GetLastError(lul_error, ls_msgtext)
   CryptDestroyHash(lul_hHash)
   CryptReleaseContext(lul_hProv, 0)
	SignalError(lul_error, "CryptHashData:~r~n~r~n" + ls_msgtext)
End If

// Get the hash value
lul_DataLen = Len(lblob_hash)
If Not CryptGetHashParam(lul_hHash, HP_HASHVAL, lblob_hash, lul_DataLen, 0) Then
	of_GetLastError(lul_error, ls_msgtext)
   CryptDestroyHash(lul_hHash)
   CryptReleaseContext(lul_hProv, 0)
	SignalError(lul_error, "CryptGetHashParam:~r~n~r~n" + ls_msgtext)
End If
lblob_result = BlobMid(lblob_hash, 1, lul_DataLen)

// Release crypto objects
CryptDestroyHash(lul_hHash)
CryptReleaseContext(lul_hProv, 0)

// return the result in hex
Return of_Blob2Hex(lblob_result)

end function

public function string of_gethashvalue (string as_data);// -----------------------------------------------------------------------------
// SCRIPT:     n_cryptoapi.of_GetHashValue
//
// PURPOSE:    This function calculates the hash of a string.
//
// ARGUMENTS:  ablob_data	- The blob to generate the hash for
//
// RETURN:		String representing the hash in hex
//
// DATE        PROG/ID		DESCRIPTION OF CHANGE / REASON
// ----------  --------		-----------------------------------------------------
// 01/18/2011	RolandS		Initial Coding
// -----------------------------------------------------------------------------

Blob lblob_data

lblob_data = Blob(as_data, EncodingAnsi!)

Return of_GetHashValue(lblob_data)

end function

on n_cryptoapi.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cryptoapi.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

