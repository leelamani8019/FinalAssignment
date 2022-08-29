À
oD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\AccessDenied.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{ 
public 

class 
AccessDeniedModel "
:# $
	PageModel% .
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} ˇ
oD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\ConfirmEmail.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{ 
public 

class 
ConfirmEmailModel "
:# $
	PageModel% .
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
ConfirmEmailModel  
(  !
UserManager! ,
<, -
IdentityUser- 9
>9 :
userManager; F
)F G
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public   
async   
Task   
<   
IActionResult   '
>  ' (

OnGetAsync  ) 3
(  3 4
string  4 :
userId  ; A
,  A B
string  C I
code  J N
)  N O
{!! 	
if"" 
("" 
userId"" 
=="" 
null"" 
||"" !
code""" &
==""' )
null""* .
)"". /
{## 
return$$ 
RedirectToPage$$ %
($$% &
$str$$& .
)$$. /
;$$/ 0
}%% 
var'' 
user'' 
='' 
await'' 
_userManager'' )
.'') *
FindByIdAsync''* 7
(''7 8
userId''8 >
)''> ?
;''? @
if(( 
((( 
user(( 
==(( 
null(( 
)(( 
{)) 
return** 
NotFound** 
(**  
$"**  "
$str**" ?
{**? @
userId**@ F
}**F G
$str**G I
"**I J
)**J K
;**K L
}++ 
code-- 
=-- 
Encoding-- 
.-- 
UTF8--  
.--  !
	GetString--! *
(--* +
WebEncoders--+ 6
.--6 7
Base64UrlDecode--7 F
(--F G
code--G K
)--K L
)--L M
;--M N
var.. 
result.. 
=.. 
await.. 
_userManager.. +
...+ ,
ConfirmEmailAsync.., =
(..= >
user..> B
,..B C
code..D H
)..H I
;..I J
StatusMessage// 
=// 
result// "
.//" #
	Succeeded//# ,
?//- .
$str/// U
://V W
$str//X v
;//v w
return00 
Page00 
(00 
)00 
;00 
}11 	
}22 
}33 ∆#
uD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\ConfirmEmailChange.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{ 
public 

class #
ConfirmEmailChangeModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public #
ConfirmEmailChangeModel &
(& '
UserManager' 2
<2 3
IdentityUser3 ?
>? @
userManagerA L
,L M
SignInManagerN [
<[ \
IdentityUser\ h
>h i
signInManagerj w
)w x
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
TempData	 
] 
public   
string   
StatusMessage   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (

OnGetAsync"") 3
(""3 4
string""4 :
userId""; A
,""A B
string""C I
email""J O
,""O P
string""Q W
code""X \
)""\ ]
{## 	
if$$ 
($$ 
userId$$ 
==$$ 
null$$ 
||$$ !
email$$" '
==$$( *
null$$+ /
||$$0 2
code$$3 7
==$$8 :
null$$; ?
)$$? @
{%% 
return&& 
RedirectToPage&& %
(&&% &
$str&&& .
)&&. /
;&&/ 0
}'' 
var)) 
user)) 
=)) 
await)) 
_userManager)) )
.))) *
FindByIdAsync))* 7
())7 8
userId))8 >
)))> ?
;))? @
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
return,, 
NotFound,, 
(,,  
$",,  "
$str,," ?
{,,? @
userId,,@ F
},,F G
$str,,G I
",,I J
),,J K
;,,K L
}-- 
code// 
=// 
Encoding// 
.// 
UTF8//  
.//  !
	GetString//! *
(//* +
WebEncoders//+ 6
.//6 7
Base64UrlDecode//7 F
(//F G
code//G K
)//K L
)//L M
;//M N
var00 
result00 
=00 
await00 
_userManager00 +
.00+ ,
ChangeEmailAsync00, <
(00< =
user00= A
,00A B
email00C H
,00H I
code00J N
)00N O
;00O P
if11 
(11 
!11 
result11 
.11 
	Succeeded11 !
)11! "
{22 
StatusMessage33 
=33 
$str33  7
;337 8
return44 
Page44 
(44 
)44 
;44 
}55 
var99 
setUserNameResult99 !
=99" #
await99$ )
_userManager99* 6
.996 7
SetUserNameAsync997 G
(99G H
user99H L
,99L M
email99N S
)99S T
;99T U
if:: 
(:: 
!:: 
setUserNameResult:: "
.::" #
	Succeeded::# ,
)::, -
{;; 
StatusMessage<< 
=<< 
$str<<  ;
;<<; <
return== 
Page== 
(== 
)== 
;== 
}>> 
await@@ 
_signInManager@@  
.@@  !
RefreshSignInAsync@@! 3
(@@3 4
user@@4 8
)@@8 9
;@@9 :
StatusMessageAA 
=AA 
$strAA I
;AAI J
returnBB 
PageBB 
(BB 
)BB 
;BB 
}CC 	
}DD 
}EE Õå
pD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\ExternalLogin.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{ 
[ 
AllowAnonymous 
] 
public 

class 
ExternalLoginModel #
:$ %
	PageModel& /
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 

IUserStore #
<# $
IdentityUser$ 0
>0 1

_userStore2 <
;< =
private 
readonly 
IUserEmailStore (
<( )
IdentityUser) 5
>5 6
_emailStore7 B
;B C
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
private 
readonly 
ILogger  
<  !
ExternalLoginModel! 3
>3 4
_logger5 <
;< =
public!! 
ExternalLoginModel!! !
(!!! "
SignInManager"" 
<"" 
IdentityUser"" &
>""& '
signInManager""( 5
,""5 6
UserManager## 
<## 
IdentityUser## $
>##$ %
userManager##& 1
,##1 2

IUserStore$$ 
<$$ 
IdentityUser$$ #
>$$# $
	userStore$$% .
,$$. /
ILogger%% 
<%% 
ExternalLoginModel%% &
>%%& '
logger%%( .
,%%. /
IEmailSender&& 
emailSender&& $
)&&$ %
{'' 	
_signInManager(( 
=(( 
signInManager(( *
;((* +
_userManager)) 
=)) 
userManager)) &
;))& '

_userStore** 
=** 
	userStore** "
;**" #
_emailStore++ 
=++ 
GetEmailStore++ '
(++' (
)++( )
;++) *
_logger,, 
=,, 
logger,, 
;,, 
_emailSender-- 
=-- 
emailSender-- &
;--& '
}.. 	
[44 	
BindProperty44	 
]44 
public55 

InputModel55 
Input55 
{55  !
get55" %
;55% &
set55' *
;55* +
}55, -
public;; 
string;; 
ProviderDisplayName;; )
{;;* +
get;;, /
;;;/ 0
set;;1 4
;;;4 5
};;6 7
publicAA 
stringAA 
	ReturnUrlAA 
{AA  !
getAA" %
;AA% &
setAA' *
;AA* +
}AA, -
[GG 	
TempDataGG	 
]GG 
publicHH 
stringHH 
ErrorMessageHH "
{HH# $
getHH% (
;HH( )
setHH* -
;HH- .
}HH/ 0
publicNN 
classNN 

InputModelNN 
{OO 	
[TT 
RequiredTT 
]TT 
[UU 
EmailAddressUU 
]UU 
publicVV 
stringVV 
EmailVV 
{VV  !
getVV" %
;VV% &
setVV' *
;VV* +
}VV, -
}WW 	
publicYY 
IActionResultYY 
OnGetYY "
(YY" #
)YY# $
=>YY% '
RedirectToPageYY( 6
(YY6 7
$strYY7 @
)YY@ A
;YYA B
public[[ 
IActionResult[[ 
OnPost[[ #
([[# $
string[[$ *
provider[[+ 3
,[[3 4
string[[5 ;
	returnUrl[[< E
=[[F G
null[[H L
)[[L M
{\\ 	
var^^ 
redirectUrl^^ 
=^^ 
Url^^ !
.^^! "
Page^^" &
(^^& '
$str^^' 8
,^^8 9
pageHandler^^: E
:^^E F
$str^^G Q
,^^Q R
values^^S Y
:^^Y Z
new^^[ ^
{^^_ `
	returnUrl^^a j
}^^k l
)^^l m
;^^m n
var__ 

properties__ 
=__ 
_signInManager__ +
.__+ ,5
)ConfigureExternalAuthenticationProperties__, U
(__U V
provider__V ^
,__^ _
redirectUrl__` k
)__k l
;__l m
return`` 
new`` 
ChallengeResult`` &
(``& '
provider``' /
,``/ 0

properties``1 ;
)``; <
;``< =
}aa 	
publiccc 
asynccc 
Taskcc 
<cc 
IActionResultcc '
>cc' (
OnGetCallbackAsynccc) ;
(cc; <
stringcc< B
	returnUrlccC L
=ccM N
nullccO S
,ccS T
stringccU [
remoteErrorcc\ g
=cch i
nullccj n
)ccn o
{dd 	
	returnUrlee 
=ee 
	returnUrlee !
??ee" $
Urlee% (
.ee( )
Contentee) 0
(ee0 1
$stree1 5
)ee5 6
;ee6 7
ifff 
(ff 
remoteErrorff 
!=ff 
nullff #
)ff# $
{gg 
ErrorMessagehh 
=hh 
$"hh !
$strhh! ?
{hh? @
remoteErrorhh@ K
}hhK L
"hhL M
;hhM N
returnii 
RedirectToPageii %
(ii% &
$strii& /
,ii/ 0
newii1 4
{ii5 6
	ReturnUrlii7 @
=iiA B
	returnUrliiC L
}iiM N
)iiN O
;iiO P
}jj 
varkk 
infokk 
=kk 
awaitkk 
_signInManagerkk +
.kk+ ,%
GetExternalLoginInfoAsynckk, E
(kkE F
)kkF G
;kkG H
ifll 
(ll 
infoll 
==ll 
nullll 
)ll 
{mm 
ErrorMessagenn 
=nn 
$strnn J
;nnJ K
returnoo 
RedirectToPageoo %
(oo% &
$stroo& /
,oo/ 0
newoo1 4
{oo5 6
	ReturnUrloo7 @
=ooA B
	returnUrlooC L
}ooM N
)ooN O
;ooO P
}pp 
varss 
resultss 
=ss 
awaitss 
_signInManagerss -
.ss- .$
ExternalLoginSignInAsyncss. F
(ssF G
infossG K
.ssK L
LoginProviderssL Y
,ssY Z
infoss[ _
.ss_ `
ProviderKeyss` k
,ssk l
isPersistentssm y
:ssy z
false	ss{ Ä
,
ssÄ Å
bypassTwoFactor
ssÇ ë
:
ssë í
true
ssì ó
)
ssó ò
;
ssò ô
iftt 
(tt 
resulttt 
.tt 
	Succeededtt  
)tt  !
{uu 
_loggervv 
.vv 
LogInformationvv &
(vv& '
$strvv' X
,vvX Y
infovvZ ^
.vv^ _
	Principalvv_ h
.vvh i
Identityvvi q
.vvq r
Namevvr v
,vvv w
infovvx |
.vv| }
LoginProvider	vv} ä
)
vvä ã
;
vvã å
returnww 
LocalRedirectww $
(ww$ %
	returnUrlww% .
)ww. /
;ww/ 0
}xx 
ifyy 
(yy 
resultyy 
.yy 
IsLockedOutyy "
)yy" #
{zz 
return{{ 
RedirectToPage{{ %
({{% &
$str{{& 1
){{1 2
;{{2 3
}|| 
else}} 
{~~ 
	ReturnUrl
ÄÄ 
=
ÄÄ 
	returnUrl
ÄÄ %
;
ÄÄ% &!
ProviderDisplayName
ÅÅ #
=
ÅÅ$ %
info
ÅÅ& *
.
ÅÅ* +!
ProviderDisplayName
ÅÅ+ >
;
ÅÅ> ?
if
ÇÇ 
(
ÇÇ 
info
ÇÇ 
.
ÇÇ 
	Principal
ÇÇ "
.
ÇÇ" #
HasClaim
ÇÇ# +
(
ÇÇ+ ,
c
ÇÇ, -
=>
ÇÇ. 0
c
ÇÇ1 2
.
ÇÇ2 3
Type
ÇÇ3 7
==
ÇÇ8 :

ClaimTypes
ÇÇ; E
.
ÇÇE F
Email
ÇÇF K
)
ÇÇK L
)
ÇÇL M
{
ÉÉ 
Input
ÑÑ 
=
ÑÑ 
new
ÑÑ 

InputModel
ÑÑ  *
{
ÖÖ 
Email
ÜÜ 
=
ÜÜ 
info
ÜÜ  $
.
ÜÜ$ %
	Principal
ÜÜ% .
.
ÜÜ. /
FindFirstValue
ÜÜ/ =
(
ÜÜ= >

ClaimTypes
ÜÜ> H
.
ÜÜH I
Email
ÜÜI N
)
ÜÜN O
}
áá 
;
áá 
}
àà 
return
ââ 
Page
ââ 
(
ââ 
)
ââ 
;
ââ 
}
ää 
}
ãã 	
public
çç 
async
çç 
Task
çç 
<
çç 
IActionResult
çç '
>
çç' (%
OnPostConfirmationAsync
çç) @
(
çç@ A
string
ççA G
	returnUrl
ççH Q
=
ççR S
null
ççT X
)
ççX Y
{
éé 	
	returnUrl
èè 
=
èè 
	returnUrl
èè !
??
èè" $
Url
èè% (
.
èè( )
Content
èè) 0
(
èè0 1
$str
èè1 5
)
èè5 6
;
èè6 7
var
ëë 
info
ëë 
=
ëë 
await
ëë 
_signInManager
ëë +
.
ëë+ ,'
GetExternalLoginInfoAsync
ëë, E
(
ëëE F
)
ëëF G
;
ëëG H
if
íí 
(
íí 
info
íí 
==
íí 
null
íí 
)
íí 
{
ìì 
ErrorMessage
îî 
=
îî 
$str
îî ^
;
îî^ _
return
ïï 
RedirectToPage
ïï %
(
ïï% &
$str
ïï& /
,
ïï/ 0
new
ïï1 4
{
ïï5 6
	ReturnUrl
ïï7 @
=
ïïA B
	returnUrl
ïïC L
}
ïïM N
)
ïïN O
;
ïïO P
}
ññ 
if
òò 
(
òò 

ModelState
òò 
.
òò 
IsValid
òò "
)
òò" #
{
ôô 
var
öö 
user
öö 
=
öö 

CreateUser
öö %
(
öö% &
)
öö& '
;
öö' (
await
úú 

_userStore
úú  
.
úú  !
SetUserNameAsync
úú! 1
(
úú1 2
user
úú2 6
,
úú6 7
Input
úú8 =
.
úú= >
Email
úú> C
,
úúC D
CancellationToken
úúE V
.
úúV W
None
úúW [
)
úú[ \
;
úú\ ]
await
ùù 
_emailStore
ùù !
.
ùù! "
SetEmailAsync
ùù" /
(
ùù/ 0
user
ùù0 4
,
ùù4 5
Input
ùù6 ;
.
ùù; <
Email
ùù< A
,
ùùA B
CancellationToken
ùùC T
.
ùùT U
None
ùùU Y
)
ùùY Z
;
ùùZ [
var
üü 
result
üü 
=
üü 
await
üü "
_userManager
üü# /
.
üü/ 0
CreateAsync
üü0 ;
(
üü; <
user
üü< @
)
üü@ A
;
üüA B
if
†† 
(
†† 
result
†† 
.
†† 
	Succeeded
†† $
)
††$ %
{
°° 
result
¢¢ 
=
¢¢ 
await
¢¢ "
_userManager
¢¢# /
.
¢¢/ 0
AddLoginAsync
¢¢0 =
(
¢¢= >
user
¢¢> B
,
¢¢B C
info
¢¢D H
)
¢¢H I
;
¢¢I J
if
££ 
(
££ 
result
££ 
.
££ 
	Succeeded
££ (
)
££( )
{
§§ 
_logger
•• 
.
••  
LogInformation
••  .
(
••. /
$str
••/ _
,
••_ `
info
••a e
.
••e f
LoginProvider
••f s
)
••s t
;
••t u
var
ßß 
userId
ßß "
=
ßß# $
await
ßß% *
_userManager
ßß+ 7
.
ßß7 8
GetUserIdAsync
ßß8 F
(
ßßF G
user
ßßG K
)
ßßK L
;
ßßL M
var
®® 
code
®®  
=
®®! "
await
®®# (
_userManager
®®) 5
.
®®5 61
#GenerateEmailConfirmationTokenAsync
®®6 Y
(
®®Y Z
user
®®Z ^
)
®®^ _
;
®®_ `
code
©© 
=
©© 
WebEncoders
©© *
.
©©* +
Base64UrlEncode
©©+ :
(
©©: ;
Encoding
©©; C
.
©©C D
UTF8
©©D H
.
©©H I
GetBytes
©©I Q
(
©©Q R
code
©©R V
)
©©V W
)
©©W X
;
©©X Y
var
™™ 
callbackUrl
™™ '
=
™™( )
Url
™™* -
.
™™- .
Page
™™. 2
(
™™2 3
$str
´´ 3
,
´´3 4
pageHandler
¨¨ '
:
¨¨' (
null
¨¨) -
,
¨¨- .
values
≠≠ "
:
≠≠" #
new
≠≠$ '
{
≠≠( )
area
≠≠* .
=
≠≠/ 0
$str
≠≠1 ;
,
≠≠; <
userId
≠≠= C
=
≠≠D E
userId
≠≠F L
,
≠≠L M
code
≠≠N R
=
≠≠S T
code
≠≠U Y
}
≠≠Z [
,
≠≠[ \
protocol
ÆÆ $
:
ÆÆ$ %
Request
ÆÆ& -
.
ÆÆ- .
Scheme
ÆÆ. 4
)
ÆÆ4 5
;
ÆÆ5 6
await
∞∞ 
_emailSender
∞∞ *
.
∞∞* +
SendEmailAsync
∞∞+ 9
(
∞∞9 :
Input
∞∞: ?
.
∞∞? @
Email
∞∞@ E
,
∞∞E F
$str
∞∞G [
,
∞∞[ \
$"
±± 
$str
±± F
{
±±F G
HtmlEncoder
±±G R
.
±±R S
Default
±±S Z
.
±±Z [
Encode
±±[ a
(
±±a b
callbackUrl
±±b m
)
±±m n
}
±±n o
$str±±o É
"±±É Ñ
)±±Ñ Ö
;±±Ö Ü
if
¥¥ 
(
¥¥ 
_userManager
¥¥ (
.
¥¥( )
Options
¥¥) 0
.
¥¥0 1
SignIn
¥¥1 7
.
¥¥7 8%
RequireConfirmedAccount
¥¥8 O
)
¥¥O P
{
µµ 
return
∂∂ "
RedirectToPage
∂∂# 1
(
∂∂1 2
$str
∂∂2 J
,
∂∂J K
new
∂∂L O
{
∂∂P Q
Email
∂∂R W
=
∂∂X Y
Input
∂∂Z _
.
∂∂_ `
Email
∂∂` e
}
∂∂f g
)
∂∂g h
;
∂∂h i
}
∑∑ 
await
ππ 
_signInManager
ππ ,
.
ππ, -
SignInAsync
ππ- 8
(
ππ8 9
user
ππ9 =
,
ππ= >
isPersistent
ππ? K
:
ππK L
false
ππM R
,
ππR S
info
ππT X
.
ππX Y
LoginProvider
ππY f
)
ππf g
;
ππg h
return
∫∫ 
LocalRedirect
∫∫ ,
(
∫∫, -
	returnUrl
∫∫- 6
)
∫∫6 7
;
∫∫7 8
}
ªª 
}
ºº 
foreach
ΩΩ 
(
ΩΩ 
var
ΩΩ 
error
ΩΩ "
in
ΩΩ# %
result
ΩΩ& ,
.
ΩΩ, -
Errors
ΩΩ- 3
)
ΩΩ3 4
{
ææ 

ModelState
øø 
.
øø 
AddModelError
øø ,
(
øø, -
string
øø- 3
.
øø3 4
Empty
øø4 9
,
øø9 :
error
øø; @
.
øø@ A
Description
øøA L
)
øøL M
;
øøM N
}
¿¿ 
}
¡¡ !
ProviderDisplayName
√√ 
=
√√  !
info
√√" &
.
√√& '!
ProviderDisplayName
√√' :
;
√√: ;
	ReturnUrl
ƒƒ 
=
ƒƒ 
	returnUrl
ƒƒ !
;
ƒƒ! "
return
≈≈ 
Page
≈≈ 
(
≈≈ 
)
≈≈ 
;
≈≈ 
}
∆∆ 	
private
»» 
IdentityUser
»» 

CreateUser
»» '
(
»»' (
)
»»( )
{
…… 	
try
   
{
ÀÀ 
return
ÃÃ 
	Activator
ÃÃ  
.
ÃÃ  !
CreateInstance
ÃÃ! /
<
ÃÃ/ 0
IdentityUser
ÃÃ0 <
>
ÃÃ< =
(
ÃÃ= >
)
ÃÃ> ?
;
ÃÃ? @
}
ÕÕ 
catch
ŒŒ 
{
œœ 
throw
–– 
new
–– '
InvalidOperationException
–– 3
(
––3 4
$"
––4 6
$str
––6 S
{
––S T
nameof
––T Z
(
––Z [
IdentityUser
––[ g
)
––g h
}
––h i
$str
––i l
"
––l m
+
––n o
$"
—— 
$str
—— #
{
——# $
nameof
——$ *
(
——* +
IdentityUser
——+ 7
)
——7 8
}
——8 9
$str——9 ä
"——ä ã
+——å ç
$"
““ 
$str
““ l
"
““l m
)
““m n
;
““n o
}
”” 
}
‘‘ 	
private
÷÷ 
IUserEmailStore
÷÷ 
<
÷÷  
IdentityUser
÷÷  ,
>
÷÷, -
GetEmailStore
÷÷. ;
(
÷÷; <
)
÷÷< =
{
◊◊ 	
if
ÿÿ 
(
ÿÿ 
!
ÿÿ 
_userManager
ÿÿ 
.
ÿÿ 
SupportsUserEmail
ÿÿ /
)
ÿÿ/ 0
{
ŸŸ 
throw
⁄⁄ 
new
⁄⁄ #
NotSupportedException
⁄⁄ /
(
⁄⁄/ 0
$str
⁄⁄0 j
)
⁄⁄j k
;
⁄⁄k l
}
€€ 
return
‹‹ 
(
‹‹ 
IUserEmailStore
‹‹ #
<
‹‹# $
IdentityUser
‹‹$ 0
>
‹‹0 1
)
‹‹1 2

_userStore
‹‹2 <
;
‹‹< =
}
›› 	
}
ﬁﬁ 
}ﬂﬂ å#
qD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\ForgotPassword.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{ 
public 

class 
ForgotPasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
ForgotPasswordModel "
(" #
UserManager# .
<. /
IdentityUser/ ;
>; <
userManager= H
,H I
IEmailSenderJ V
emailSenderW b
)b c
{ 	
_userManager 
= 
userManager &
;& '
_emailSender 
= 
emailSender &
;& '
} 	
["" 	
BindProperty""	 
]"" 
public## 

InputModel## 
Input## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
public)) 
class)) 

InputModel)) 
{** 	
[// 
Required// 
]// 
[00 
EmailAddress00 
]00 
public11 
string11 
Email11 
{11  !
get11" %
;11% &
set11' *
;11* +
}11, -
}22 	
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (
OnPostAsync44) 4
(444 5
)445 6
{55 	
if66 
(66 

ModelState66 
.66 
IsValid66 "
)66" #
{77 
var88 
user88 
=88 
await88  
_userManager88! -
.88- .
FindByEmailAsync88. >
(88> ?
Input88? D
.88D E
Email88E J
)88J K
;88K L
if99 
(99 
user99 
==99 
null99  
||99! #
!99$ %
(99% &
await99& +
_userManager99, 8
.998 9!
IsEmailConfirmedAsync999 N
(99N O
user99O S
)99S T
)99T U
)99U V
{:: 
return<< 
RedirectToPage<< )
(<<) *
$str<<* H
)<<H I
;<<I J
}== 
varAA 
codeAA 
=AA 
awaitAA  
_userManagerAA! -
.AA- .+
GeneratePasswordResetTokenAsyncAA. M
(AAM N
userAAN R
)AAR S
;AAS T
codeBB 
=BB 
WebEncodersBB "
.BB" #
Base64UrlEncodeBB# 2
(BB2 3
EncodingBB3 ;
.BB; <
UTF8BB< @
.BB@ A
GetBytesBBA I
(BBI J
codeBBJ N
)BBN O
)BBO P
;BBP Q
varCC 
callbackUrlCC 
=CC  !
UrlCC" %
.CC% &
PageCC& *
(CC* +
$strDD ,
,DD, -
pageHandlerEE 
:EE  
nullEE! %
,EE% &
valuesFF 
:FF 
newFF 
{FF  !
areaFF" &
=FF' (
$strFF) 3
,FF3 4
codeFF5 9
}FF: ;
,FF; <
protocolGG 
:GG 
RequestGG %
.GG% &
SchemeGG& ,
)GG, -
;GG- .
awaitII 
_emailSenderII "
.II" #
SendEmailAsyncII# 1
(II1 2
InputJJ 
.JJ 
EmailJJ 
,JJ  
$strKK $
,KK$ %
$"LL 
$strLL =
{LL= >
HtmlEncoderLL> I
.LLI J
DefaultLLJ Q
.LLQ R
EncodeLLR X
(LLX Y
callbackUrlLLY d
)LLd e
}LLe f
$strLLf z
"LLz {
)LL{ |
;LL| }
returnNN 
RedirectToPageNN %
(NN% &
$strNN& D
)NND E
;NNE F
}OO 
returnQQ 
PageQQ 
(QQ 
)QQ 
;QQ 
}RR 	
}SS 
}TT ú
}D:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\ForgotPasswordConfirmation.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{		 
[ 
AllowAnonymous 
] 
public 

class &
ForgotPasswordConfirmation +
:, -
	PageModel. 7
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} ˚
jD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Lockout.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{		 
[ 
AllowAnonymous 
] 
public 

class 
LockoutModel 
: 
	PageModel  )
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} ≈:
hD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{ 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
SignInManager &
<& '
CustomFields' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
public 

LoginModel 
( 
SignInManager '
<' (
CustomFields( 4
>4 5
signInManager6 C
,C D
ILoggerE L
<L M

LoginModelM W
>W X
loggerY _
)_ `
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[$$ 	
BindProperty$$	 
]$$ 
public%% 

InputModel%% 
Input%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
public++ 
IList++ 
<++  
AuthenticationScheme++ )
>++) *
ExternalLogins+++ 9
{++: ;
get++< ?
;++? @
set++A D
;++D E
}++F G
public11 
string11 
	ReturnUrl11 
{11  !
get11" %
;11% &
set11' *
;11* +
}11, -
[77 	
TempData77	 
]77 
public88 
string88 
ErrorMessage88 "
{88# $
get88% (
;88( )
set88* -
;88- .
}88/ 0
public>> 
class>> 

InputModel>> 
{?? 	
[DD 
RequiredDD 
]DD 
[EE 
EmailAddressEE 
]EE 
publicFF 
stringFF 
EmailFF 
{FF  !
getFF" %
;FF% &
setFF' *
;FF* +
}FF, -
[LL 
RequiredLL 
]LL 
[MM 
DataTypeMM 
(MM 
DataTypeMM 
.MM 
PasswordMM '
)MM' (
]MM( )
publicNN 
stringNN 
PasswordNN "
{NN# $
getNN% (
;NN( )
setNN* -
;NN- .
}NN/ 0
[TT 
DisplayTT 
(TT 
NameTT 
=TT 
$strTT *
)TT* +
]TT+ ,
publicUU 
boolUU 

RememberMeUU "
{UU# $
getUU% (
;UU( )
setUU* -
;UU- .
}UU/ 0
}VV 	
publicXX 
asyncXX 
TaskXX 

OnGetAsyncXX $
(XX$ %
stringXX% +
	returnUrlXX, 5
=XX6 7
nullXX8 <
)XX< =
{YY 	
if\\ 
(\\ 
!\\ 
string\\ 
.\\ 
IsNullOrEmpty\\ %
(\\% &
ErrorMessage\\& 2
)\\2 3
)\\3 4
{]] 

ModelState^^ 
.^^ 
AddModelError^^ (
(^^( )
string^^) /
.^^/ 0
Empty^^0 5
,^^5 6
ErrorMessage^^7 C
)^^C D
;^^D E
}__ 
	returnUrlaa 
??=aa 
Urlaa 
.aa 
Contentaa %
(aa% &
$straa& *
)aa* +
;aa+ ,
awaitdd 
HttpContextdd 
.dd 
SignOutAsyncdd *
(dd* +
IdentityConstantsdd+ <
.dd< =
ExternalSchemedd= K
)ddK L
;ddL M
ExternalLoginsff 
=ff 
(ff 
awaitff #
_signInManagerff$ 2
.ff2 31
%GetExternalAuthenticationSchemesAsyncff3 X
(ffX Y
)ffY Z
)ffZ [
.ff[ \
ToListff\ b
(ffb c
)ffc d
;ffd e
	ReturnUrlhh 
=hh 
	returnUrlhh !
;hh! "
}ii 	
publickk 
asynckk 
Taskkk 
<kk 
IActionResultkk '
>kk' (
OnPostAsynckk) 4
(kk4 5
stringkk5 ;
	returnUrlkk< E
=kkF G
nullkkH L
)kkL M
{ll 	
	returnUrlmm 
??=mm 
Urlmm 
.mm 
Contentmm %
(mm% &
$strmm& *
)mm* +
;mm+ ,
ExternalLoginsoo 
=oo 
(oo 
awaitoo #
_signInManageroo$ 2
.oo2 31
%GetExternalAuthenticationSchemesAsyncoo3 X
(ooX Y
)ooY Z
)ooZ [
.oo[ \
ToListoo\ b
(oob c
)ooc d
;ood e
ifqq 
(qq 

ModelStateqq 
.qq 
IsValidqq "
)qq" #
{rr 
varuu 
resultuu 
=uu 
awaituu "
_signInManageruu# 1
.uu1 2
PasswordSignInAsyncuu2 E
(uuE F
InputuuF K
.uuK L
EmailuuL Q
,uuQ R
InputuuS X
.uuX Y
PassworduuY a
,uua b
Inputuuc h
.uuh i

RememberMeuui s
,uus t
lockoutOnFailure	uuu Ö
:
uuÖ Ü
false
uuá å
)
uuå ç
;
uuç é
ifvv 
(vv 
resultvv 
.vv 
	Succeededvv $
)vv$ %
{ww 
_loggerxx 
.xx 
LogInformationxx *
(xx* +
$strxx+ <
)xx< =
;xx= >
returnyy 
LocalRedirectyy (
(yy( )
	returnUrlyy) 2
)yy2 3
;yy3 4
}zz 
if{{ 
({{ 
result{{ 
.{{ 
RequiresTwoFactor{{ ,
){{, -
{|| 
return}} 
RedirectToPage}} )
(}}) *
$str}}* :
,}}: ;
new}}< ?
{}}@ A
	ReturnUrl}}B K
=}}L M
	returnUrl}}N W
,}}W X

RememberMe}}Y c
=}}d e
Input}}f k
.}}k l

RememberMe}}l v
}}}w x
)}}x y
;}}y z
}~~ 
if 
( 
result 
. 
IsLockedOut &
)& '
{
ÄÄ 
_logger
ÅÅ 
.
ÅÅ 

LogWarning
ÅÅ &
(
ÅÅ& '
$str
ÅÅ' A
)
ÅÅA B
;
ÅÅB C
return
ÇÇ 
RedirectToPage
ÇÇ )
(
ÇÇ) *
$str
ÇÇ* 5
)
ÇÇ5 6
;
ÇÇ6 7
}
ÉÉ 
else
ÑÑ 
{
ÖÖ 

ModelState
ÜÜ 
.
ÜÜ 
AddModelError
ÜÜ ,
(
ÜÜ, -
string
ÜÜ- 3
.
ÜÜ3 4
Empty
ÜÜ4 9
,
ÜÜ9 :
$str
ÜÜ; S
)
ÜÜS T
;
ÜÜT U
return
áá 
Page
áá 
(
áá  
)
áá  !
;
áá! "
}
àà 
}
ââ 
return
åå 
Page
åå 
(
åå 
)
åå 
;
åå 
}
çç 	
}
éé 
}èè Ä?
oD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\LoginWith2fa.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{ 
public 

class 
LoginWith2faModel "
:# $
	PageModel% .
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
LoginWith2faModel! 2
>2 3
_logger4 ;
;; <
public 
LoginWith2faModel  
(  !
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
LoginWith2faModel %
>% &
logger' -
)- .
{ 	
_signInManager 
= 
signInManager *
;* +
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[%% 	
BindProperty%%	 
]%% 
public&& 

InputModel&& 
Input&& 
{&&  !
get&&" %
;&&% &
set&&' *
;&&* +
}&&, -
public,, 
bool,, 

RememberMe,, 
{,,  
get,,! $
;,,$ %
set,,& )
;,,) *
},,+ ,
public22 
string22 
	ReturnUrl22 
{22  !
get22" %
;22% &
set22' *
;22* +
}22, -
public88 
class88 

InputModel88 
{99 	
[>> 
Required>> 
]>> 
[?? 
StringLength?? 
(?? 
$num?? 
,?? 
ErrorMessage?? )
=??* +
$str??, j
,??j k
MinimumLength??l y
=??z {
$num??| }
)??} ~
]??~ 
[@@ 
DataType@@ 
(@@ 
DataType@@ 
.@@ 
Text@@ #
)@@# $
]@@$ %
[AA 
DisplayAA 
(AA 
NameAA 
=AA 
$strAA 0
)AA0 1
]AA1 2
publicBB 
stringBB 
TwoFactorCodeBB '
{BB( )
getBB* -
;BB- .
setBB/ 2
;BB2 3
}BB4 5
[HH 
DisplayHH 
(HH 
NameHH 
=HH 
$strHH 3
)HH3 4
]HH4 5
publicII 
boolII 
RememberMachineII '
{II( )
getII* -
;II- .
setII/ 2
;II2 3
}II4 5
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (

OnGetAsyncLL) 3
(LL3 4
boolLL4 8

rememberMeLL9 C
,LLC D
stringLLE K
	returnUrlLLL U
=LLV W
nullLLX \
)LL\ ]
{MM 	
varOO 
userOO 
=OO 
awaitOO 
_signInManagerOO +
.OO+ ,/
#GetTwoFactorAuthenticationUserAsyncOO, O
(OOO P
)OOP Q
;OOQ R
ifQQ 
(QQ 
userQQ 
==QQ 
nullQQ 
)QQ 
{RR 
throwSS 
newSS %
InvalidOperationExceptionSS 3
(SS3 4
$"SS4 6
$strSS6 d
"SSd e
)SSe f
;SSf g
}TT 
	ReturnUrlVV 
=VV 
	returnUrlVV !
;VV! "

RememberMeWW 
=WW 

rememberMeWW #
;WW# $
returnYY 
PageYY 
(YY 
)YY 
;YY 
}ZZ 	
public\\ 
async\\ 
Task\\ 
<\\ 
IActionResult\\ '
>\\' (
OnPostAsync\\) 4
(\\4 5
bool\\5 9

rememberMe\\: D
,\\D E
string\\F L
	returnUrl\\M V
=\\W X
null\\Y ]
)\\] ^
{]] 	
if^^ 
(^^ 
!^^ 

ModelState^^ 
.^^ 
IsValid^^ #
)^^# $
{__ 
return`` 
Page`` 
(`` 
)`` 
;`` 
}aa 
	returnUrlcc 
=cc 
	returnUrlcc !
??cc" $
Urlcc% (
.cc( )
Contentcc) 0
(cc0 1
$strcc1 5
)cc5 6
;cc6 7
varee 
useree 
=ee 
awaitee 
_signInManageree +
.ee+ ,/
#GetTwoFactorAuthenticationUserAsyncee, O
(eeO P
)eeP Q
;eeQ R
ifff 
(ff 
userff 
==ff 
nullff 
)ff 
{gg 
throwhh 
newhh %
InvalidOperationExceptionhh 3
(hh3 4
$"hh4 6
$strhh6 d
"hhd e
)hhe f
;hhf g
}ii 
varkk 
authenticatorCodekk !
=kk" #
Inputkk$ )
.kk) *
TwoFactorCodekk* 7
.kk7 8
Replacekk8 ?
(kk? @
$strkk@ C
,kkC D
stringkkE K
.kkK L
EmptykkL Q
)kkQ R
.kkR S
ReplacekkS Z
(kkZ [
$strkk[ ^
,kk^ _
stringkk` f
.kkf g
Emptykkg l
)kkl m
;kkm n
varmm 
resultmm 
=mm 
awaitmm 
_signInManagermm -
.mm- .-
!TwoFactorAuthenticatorSignInAsyncmm. O
(mmO P
authenticatorCodemmP a
,mma b

rememberMemmc m
,mmm n
Inputmmo t
.mmt u
RememberMachine	mmu Ñ
)
mmÑ Ö
;
mmÖ Ü
varoo 
userIdoo 
=oo 
awaitoo 
_userManageroo +
.oo+ ,
GetUserIdAsyncoo, :
(oo: ;
useroo; ?
)oo? @
;oo@ A
ifqq 
(qq 
resultqq 
.qq 
	Succeededqq  
)qq  !
{rr 
_loggerss 
.ss 
LogInformationss &
(ss& '
$strss' T
,ssT U
userssV Z
.ssZ [
Idss[ ]
)ss] ^
;ss^ _
returntt 
LocalRedirecttt $
(tt$ %
	returnUrltt% .
)tt. /
;tt/ 0
}uu 
elsevv 
ifvv 
(vv 
resultvv 
.vv 
IsLockedOutvv '
)vv' (
{ww 
_loggerxx 
.xx 

LogWarningxx "
(xx" #
$strxx# P
,xxP Q
userxxR V
.xxV W
IdxxW Y
)xxY Z
;xxZ [
returnyy 
RedirectToPageyy %
(yy% &
$stryy& 1
)yy1 2
;yy2 3
}zz 
else{{ 
{|| 
_logger}} 
.}} 

LogWarning}} "
(}}" #
$str}}# d
,}}d e
user}}f j
.}}j k
Id}}k m
)}}m n
;}}n o

ModelState~~ 
.~~ 
AddModelError~~ (
(~~( )
string~~) /
.~~/ 0
Empty~~0 5
,~~5 6
$str~~7 T
)~~T U
;~~U V
return 
Page 
( 
) 
; 
}
ÄÄ 
}
ÅÅ 	
}
ÇÇ 
}ÉÉ °5
xD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\LoginWithRecoveryCode.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{ 
public 

class &
LoginWithRecoveryCodeModel +
:, -
	PageModel. 7
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !&
LoginWithRecoveryCodeModel! ;
>; <
_logger= D
;D E
public &
LoginWithRecoveryCodeModel )
() *
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< &
LoginWithRecoveryCodeModel .
>. /
logger0 6
)6 7
{ 	
_signInManager 
= 
signInManager *
;* +
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public** 
string** 
	ReturnUrl** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public00 
class00 

InputModel00 
{11 	
[66 
BindProperty66 
]66 
[77 
Required77 
]77 
[88 
DataType88 
(88 
DataType88 
.88 
Text88 #
)88# $
]88$ %
[99 
Display99 
(99 
Name99 
=99 
$str99 +
)99+ ,
]99, -
public:: 
string:: 
RecoveryCode:: &
{::' (
get::) ,
;::, -
set::. 1
;::1 2
}::3 4
};; 	
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (

OnGetAsync==) 3
(==3 4
string==4 :
	returnUrl==; D
===E F
null==G K
)==K L
{>> 	
var@@ 
user@@ 
=@@ 
await@@ 
_signInManager@@ +
.@@+ ,/
#GetTwoFactorAuthenticationUserAsync@@, O
(@@O P
)@@P Q
;@@Q R
ifAA 
(AA 
userAA 
==AA 
nullAA 
)AA 
{BB 
throwCC 
newCC %
InvalidOperationExceptionCC 3
(CC3 4
$"CC4 6
$strCC6 d
"CCd e
)CCe f
;CCf g
}DD 
	ReturnUrlFF 
=FF 
	returnUrlFF !
;FF! "
returnHH 
PageHH 
(HH 
)HH 
;HH 
}II 	
publicKK 
asyncKK 
TaskKK 
<KK 
IActionResultKK '
>KK' (
OnPostAsyncKK) 4
(KK4 5
stringKK5 ;
	returnUrlKK< E
=KKF G
nullKKH L
)KKL M
{LL 	
ifMM 
(MM 
!MM 

ModelStateMM 
.MM 
IsValidMM #
)MM# $
{NN 
returnOO 
PageOO 
(OO 
)OO 
;OO 
}PP 
varRR 
userRR 
=RR 
awaitRR 
_signInManagerRR +
.RR+ ,/
#GetTwoFactorAuthenticationUserAsyncRR, O
(RRO P
)RRP Q
;RRQ R
ifSS 
(SS 
userSS 
==SS 
nullSS 
)SS 
{TT 
throwUU 
newUU %
InvalidOperationExceptionUU 3
(UU3 4
$"UU4 6
$strUU6 d
"UUd e
)UUe f
;UUf g
}VV 
varXX 
recoveryCodeXX 
=XX 
InputXX $
.XX$ %
RecoveryCodeXX% 1
.XX1 2
ReplaceXX2 9
(XX9 :
$strXX: =
,XX= >
stringXX? E
.XXE F
EmptyXXF K
)XXK L
;XXL M
varZZ 
resultZZ 
=ZZ 
awaitZZ 
_signInManagerZZ -
.ZZ- .,
 TwoFactorRecoveryCodeSignInAsyncZZ. N
(ZZN O
recoveryCodeZZO [
)ZZ[ \
;ZZ\ ]
var\\ 
userId\\ 
=\\ 
await\\ 
_userManager\\ +
.\\+ ,
GetUserIdAsync\\, :
(\\: ;
user\\; ?
)\\? @
;\\@ A
if^^ 
(^^ 
result^^ 
.^^ 
	Succeeded^^  
)^^  !
{__ 
_logger`` 
.`` 
LogInformation`` &
(``& '
$str``' `
,``` a
user``b f
.``f g
Id``g i
)``i j
;``j k
returnaa 
LocalRedirectaa $
(aa$ %
	returnUrlaa% .
??aa/ 1
Urlaa2 5
.aa5 6
Contentaa6 =
(aa= >
$straa> B
)aaB C
)aaC D
;aaD E
}bb 
ifcc 
(cc 
resultcc 
.cc 
IsLockedOutcc "
)cc" #
{dd 
_loggeree 
.ee 

LogWarningee "
(ee" #
$stree# =
)ee= >
;ee> ?
returnff 
RedirectToPageff %
(ff% &
$strff& 1
)ff1 2
;ff2 3
}gg 
elsehh 
{ii 
_loggerjj 
.jj 

LogWarningjj "
(jj" #
$strjj# _
,jj_ `
userjja e
.jje f
Idjjf h
)jjh i
;jji j

ModelStatekk 
.kk 
AddModelErrorkk (
(kk( )
stringkk) /
.kk/ 0
Emptykk0 5
,kk5 6
$strkk7 W
)kkW X
;kkX Y
returnll 
Pagell 
(ll 
)ll 
;ll 
}mm 
}nn 	
}oo 
}pp á
iD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Logout.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{ 
public 

class 
LogoutModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& '
CustomFields' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
LogoutModel! ,
>, -
_logger. 5
;5 6
public 
LogoutModel 
( 
SignInManager (
<( )
CustomFields) 5
>5 6
signInManager7 D
,D E
ILoggerF M
<M N
LogoutModelN Y
>Y Z
logger[ a
)a b
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
string0 6
	returnUrl7 @
=A B
nullC G
)G H
{ 	
await 
_signInManager  
.  !
SignOutAsync! -
(- .
). /
;/ 0
_logger 
. 
LogInformation "
(" #
$str# 5
)5 6
;6 7
if 
( 
	returnUrl 
!= 
null !
)! "
{   
return!! 
LocalRedirect!! $
(!!$ %
	returnUrl!!% .
)!!. /
;!!/ 0
}"" 
else## 
{$$ 
return'' 
RedirectToPage'' %
(''% &
)''& '
;''' (
}(( 
})) 	
}** 
}++ £>
xD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\ChangePassword.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
.8 9
Manage9 ?
{ 
public 

class 
ChangePasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
ChangePasswordModel! 4
>4 5
_logger6 =
;= >
public 
ChangePasswordModel "
(" #
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< 
ChangePasswordModel '
>' (
logger) /
)/ 0
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
[** 	
TempData**	 
]** 
public++ 
string++ 
StatusMessage++ #
{++$ %
get++& )
;++) *
set+++ .
;++. /
}++0 1
public11 
class11 

InputModel11 
{22 	
[77 
Required77 
]77 
[88 
DataType88 
(88 
DataType88 
.88 
Password88 '
)88' (
]88( )
[99 
Display99 
(99 
Name99 
=99 
$str99 .
)99. /
]99/ 0
public:: 
string:: 
OldPassword:: %
{::& '
get::( +
;::+ ,
set::- 0
;::0 1
}::2 3
[@@ 
Required@@ 
]@@ 
[AA 
StringLengthAA 
(AA 
$numAA 
,AA 
ErrorMessageAA +
=AA, -
$strAA. l
,AAl m
MinimumLengthAAn {
=AA| }
$numAA~ 
)	AA Ä
]
AAÄ Å
[BB 
DataTypeBB 
(BB 
DataTypeBB 
.BB 
PasswordBB '
)BB' (
]BB( )
[CC 
DisplayCC 
(CC 
NameCC 
=CC 
$strCC *
)CC* +
]CC+ ,
publicDD 
stringDD 
NewPasswordDD %
{DD& '
getDD( +
;DD+ ,
setDD- 0
;DD0 1
}DD2 3
[JJ 
DataTypeJJ 
(JJ 
DataTypeJJ 
.JJ 
PasswordJJ '
)JJ' (
]JJ( )
[KK 
DisplayKK 
(KK 
NameKK 
=KK 
$strKK 2
)KK2 3
]KK3 4
[LL 
CompareLL 
(LL 
$strLL "
,LL" #
ErrorMessageLL$ 0
=LL1 2
$strLL3 m
)LLm n
]LLn o
publicMM 
stringMM 
ConfirmPasswordMM )
{MM* +
getMM, /
;MM/ 0
setMM1 4
;MM4 5
}MM6 7
}NN 	
publicPP 
asyncPP 
TaskPP 
<PP 
IActionResultPP '
>PP' (

OnGetAsyncPP) 3
(PP3 4
)PP4 5
{QQ 	
varRR 
userRR 
=RR 
awaitRR 
_userManagerRR )
.RR) *
GetUserAsyncRR* 6
(RR6 7
UserRR7 ;
)RR; <
;RR< =
ifSS 
(SS 
userSS 
==SS 
nullSS 
)SS 
{TT 
returnUU 
NotFoundUU 
(UU  
$"UU  "
$strUU" ?
{UU? @
_userManagerUU@ L
.UUL M
	GetUserIdUUM V
(UUV W
UserUUW [
)UU[ \
}UU\ ]
$strUU] _
"UU_ `
)UU` a
;UUa b
}VV 
varXX 
hasPasswordXX 
=XX 
awaitXX #
_userManagerXX$ 0
.XX0 1
HasPasswordAsyncXX1 A
(XXA B
userXXB F
)XXF G
;XXG H
ifYY 
(YY 
!YY 
hasPasswordYY 
)YY 
{ZZ 
return[[ 
RedirectToPage[[ %
([[% &
$str[[& 5
)[[5 6
;[[6 7
}\\ 
return^^ 
Page^^ 
(^^ 
)^^ 
;^^ 
}__ 	
publicaa 
asyncaa 
Taskaa 
<aa 
IActionResultaa '
>aa' (
OnPostAsyncaa) 4
(aa4 5
)aa5 6
{bb 	
ifcc 
(cc 
!cc 

ModelStatecc 
.cc 
IsValidcc #
)cc# $
{dd 
returnee 
Pageee 
(ee 
)ee 
;ee 
}ff 
varhh 
userhh 
=hh 
awaithh 
_userManagerhh )
.hh) *
GetUserAsynchh* 6
(hh6 7
Userhh7 ;
)hh; <
;hh< =
ifii 
(ii 
userii 
==ii 
nullii 
)ii 
{jj 
returnkk 
NotFoundkk 
(kk  
$"kk  "
$strkk" ?
{kk? @
_userManagerkk@ L
.kkL M
	GetUserIdkkM V
(kkV W
UserkkW [
)kk[ \
}kk\ ]
$strkk] _
"kk_ `
)kk` a
;kka b
}ll 
varnn  
changePasswordResultnn $
=nn% &
awaitnn' ,
_userManagernn- 9
.nn9 :
ChangePasswordAsyncnn: M
(nnM N
usernnN R
,nnR S
InputnnT Y
.nnY Z
OldPasswordnnZ e
,nne f
Inputnng l
.nnl m
NewPasswordnnm x
)nnx y
;nny z
ifoo 
(oo 
!oo  
changePasswordResultoo %
.oo% &
	Succeededoo& /
)oo/ 0
{pp 
foreachqq 
(qq 
varqq 
errorqq "
inqq# % 
changePasswordResultqq& :
.qq: ;
Errorsqq; A
)qqA B
{rr 

ModelStatess 
.ss 
AddModelErrorss ,
(ss, -
stringss- 3
.ss3 4
Emptyss4 9
,ss9 :
errorss; @
.ss@ A
DescriptionssA L
)ssL M
;ssM N
}tt 
returnuu 
Pageuu 
(uu 
)uu 
;uu 
}vv 
awaitxx 
_signInManagerxx  
.xx  !
RefreshSignInAsyncxx! 3
(xx3 4
userxx4 8
)xx8 9
;xx9 :
_loggeryy 
.yy 
LogInformationyy "
(yy" #
$stryy# N
)yyN O
;yyO P
StatusMessagezz 
=zz 
$strzz =
;zz= >
return|| 
RedirectToPage|| !
(||! "
)||" #
;||# $
}}} 	
}~~ 
} …2
|D:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\DeletePersonalData.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
.8 9
Manage9 ?
{ 
public 

class #
DeletePersonalDataModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !#
DeletePersonalDataModel! 8
>8 9
_logger: A
;A B
public #
DeletePersonalDataModel &
(& '
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< #
DeletePersonalDataModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public** 
class** 

InputModel** 
{++ 	
[00 
Required00 
]00 
[11 
DataType11 
(11 
DataType11 
.11 
Password11 '
)11' (
]11( )
public22 
string22 
Password22 "
{22# $
get22% (
;22( )
set22* -
;22- .
}22/ 0
}33 	
public99 
bool99 
RequirePassword99 #
{99$ %
get99& )
;99) *
set99+ .
;99. /
}990 1
public;; 
async;; 
Task;; 
<;; 
IActionResult;; '
>;;' (
OnGet;;) .
(;;. /
);;/ 0
{<< 	
var== 
user== 
=== 
await== 
_userManager== )
.==) *
GetUserAsync==* 6
(==6 7
User==7 ;
)==; <
;==< =
if>> 
(>> 
user>> 
==>> 
null>> 
)>> 
{?? 
return@@ 
NotFound@@ 
(@@  
$"@@  "
$str@@" ?
{@@? @
_userManager@@@ L
.@@L M
	GetUserId@@M V
(@@V W
User@@W [
)@@[ \
}@@\ ]
$str@@] _
"@@_ `
)@@` a
;@@a b
}AA 
RequirePasswordCC 
=CC 
awaitCC #
_userManagerCC$ 0
.CC0 1
HasPasswordAsyncCC1 A
(CCA B
userCCB F
)CCF G
;CCG H
returnDD 
PageDD 
(DD 
)DD 
;DD 
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
OnPostAsyncGG) 4
(GG4 5
)GG5 6
{HH 	
varII 
userII 
=II 
awaitII 
_userManagerII )
.II) *
GetUserAsyncII* 6
(II6 7
UserII7 ;
)II; <
;II< =
ifJJ 
(JJ 
userJJ 
==JJ 
nullJJ 
)JJ 
{KK 
returnLL 
NotFoundLL 
(LL  
$"LL  "
$strLL" ?
{LL? @
_userManagerLL@ L
.LLL M
	GetUserIdLLM V
(LLV W
UserLLW [
)LL[ \
}LL\ ]
$strLL] _
"LL_ `
)LL` a
;LLa b
}MM 
RequirePasswordOO 
=OO 
awaitOO #
_userManagerOO$ 0
.OO0 1
HasPasswordAsyncOO1 A
(OOA B
userOOB F
)OOF G
;OOG H
ifPP 
(PP 
RequirePasswordPP 
)PP  
{QQ 
ifRR 
(RR 
!RR 
awaitRR 
_userManagerRR '
.RR' (
CheckPasswordAsyncRR( :
(RR: ;
userRR; ?
,RR? @
InputRRA F
.RRF G
PasswordRRG O
)RRO P
)RRP Q
{SS 

ModelStateTT 
.TT 
AddModelErrorTT ,
(TT, -
stringTT- 3
.TT3 4
EmptyTT4 9
,TT9 :
$strTT; P
)TTP Q
;TTQ R
returnUU 
PageUU 
(UU  
)UU  !
;UU! "
}VV 
}WW 
varYY 
resultYY 
=YY 
awaitYY 
_userManagerYY +
.YY+ ,
DeleteAsyncYY, 7
(YY7 8
userYY8 <
)YY< =
;YY= >
varZZ 
userIdZZ 
=ZZ 
awaitZZ 
_userManagerZZ +
.ZZ+ ,
GetUserIdAsyncZZ, :
(ZZ: ;
userZZ; ?
)ZZ? @
;ZZ@ A
if[[ 
([[ 
![[ 
result[[ 
.[[ 
	Succeeded[[ !
)[[! "
{\\ 
throw]] 
new]] %
InvalidOperationException]] 3
(]]3 4
$"]]4 6
$str]]6 ^
"]]^ _
)]]_ `
;]]` a
}^^ 
await`` 
_signInManager``  
.``  !
SignOutAsync``! -
(``- .
)``. /
;``/ 0
_loggerbb 
.bb 
LogInformationbb "
(bb" #
$strbb# P
,bbP Q
userIdbbR X
)bbX Y
;bbY Z
returndd 
Redirectdd 
(dd 
$strdd  
)dd  !
;dd! "
}ee 	
}ff 
}gg «$
tD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\Disable2fa.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
.8 9
Manage9 ?
{ 
public 

class 
Disable2faModel  
:! "
	PageModel# ,
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
Disable2faModel! 0
>0 1
_logger2 9
;9 :
public 
Disable2faModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
Disable2faModel #
># $
logger% +
)+ ,
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[ 	
TempData	 
] 
public   
string   
StatusMessage   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (
OnGet"") .
("". /
)""/ 0
{## 	
var$$ 
user$$ 
=$$ 
await$$ 
_userManager$$ )
.$$) *
GetUserAsync$$* 6
($$6 7
User$$7 ;
)$$; <
;$$< =
if%% 
(%% 
user%% 
==%% 
null%% 
)%% 
{&& 
return'' 
NotFound'' 
(''  
$"''  "
$str''" ?
{''? @
_userManager''@ L
.''L M
	GetUserId''M V
(''V W
User''W [
)''[ \
}''\ ]
$str''] _
"''_ `
)''` a
;''a b
}(( 
if** 
(** 
!** 
await** 
_userManager** #
.**# $$
GetTwoFactorEnabledAsync**$ <
(**< =
user**= A
)**A B
)**B C
{++ 
throw,, 
new,, %
InvalidOperationException,, 3
(,,3 4
$",,4 6
$str,,6 p
",,p q
),,q r
;,,r s
}-- 
return// 
Page// 
(// 
)// 
;// 
}00 	
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
OnPostAsync22) 4
(224 5
)225 6
{33 	
var44 
user44 
=44 
await44 
_userManager44 )
.44) *
GetUserAsync44* 6
(446 7
User447 ;
)44; <
;44< =
if55 
(55 
user55 
==55 
null55 
)55 
{66 
return77 
NotFound77 
(77  
$"77  "
$str77" ?
{77? @
_userManager77@ L
.77L M
	GetUserId77M V
(77V W
User77W [
)77[ \
}77\ ]
$str77] _
"77_ `
)77` a
;77a b
}88 
var:: 
disable2faResult::  
=::! "
await::# (
_userManager::) 5
.::5 6$
SetTwoFactorEnabledAsync::6 N
(::N O
user::O S
,::S T
false::U Z
)::Z [
;::[ \
if;; 
(;; 
!;; 
disable2faResult;; !
.;;! "
	Succeeded;;" +
);;+ ,
{<< 
throw== 
new== %
InvalidOperationException== 3
(==3 4
$"==4 6
$str==6 ^
"==^ _
)==_ `
;==` a
}>> 
_logger@@ 
.@@ 
LogInformation@@ "
(@@" #
$str@@# N
,@@N O
_userManager@@P \
.@@\ ]
	GetUserId@@] f
(@@f g
User@@g k
)@@k l
)@@l m
;@@m n
StatusMessageAA 
=AA 
$strAA m
;AAm n
returnBB 
RedirectToPageBB !
(BB! "
$strBB" =
)BB= >
;BB> ?
}CC 	
}DD 
}EE î*
~D:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\DownloadPersonalData.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
.8 9
Manage9 ?
{ 
public 

class %
DownloadPersonalDataModel *
:+ ,
	PageModel- 6
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !%
DownloadPersonalDataModel! :
>: ;
_logger< C
;C D
public %
DownloadPersonalDataModel (
(( )
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< %
DownloadPersonalDataModel -
>- .
logger/ 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
OnGet "
(" #
)# $
{   	
return!! 
NotFound!! 
(!! 
)!! 
;!! 
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
IActionResult$$ '
>$$' (
OnPostAsync$$) 4
($$4 5
)$$5 6
{%% 	
var&& 
user&& 
=&& 
await&& 
_userManager&& )
.&&) *
GetUserAsync&&* 6
(&&6 7
User&&7 ;
)&&; <
;&&< =
if'' 
('' 
user'' 
=='' 
null'' 
)'' 
{(( 
return)) 
NotFound)) 
())  
$"))  "
$str))" ?
{))? @
_userManager))@ L
.))L M
	GetUserId))M V
())V W
User))W [
)))[ \
}))\ ]
$str))] _
"))_ `
)))` a
;))a b
}** 
_logger,, 
.,, 
LogInformation,, "
(,," #
$str,,# [
,,,[ \
_userManager,,] i
.,,i j
	GetUserId,,j s
(,,s t
User,,t x
),,x y
),,y z
;,,z {
var// 
personalData// 
=// 
new// "

Dictionary//# -
<//- .
string//. 4
,//4 5
string//6 <
>//< =
(//= >
)//> ?
;//? @
var00 
personalDataProps00 !
=00" #
typeof00$ *
(00* +
IdentityUser00+ 7
)007 8
.008 9
GetProperties009 F
(00F G
)00G H
.00H I
Where00I N
(00N O
prop11  
=>11! #
	Attribute11$ -
.11- .
	IsDefined11. 7
(117 8
prop118 <
,11< =
typeof11> D
(11D E!
PersonalDataAttribute11E Z
)11Z [
)11[ \
)11\ ]
;11] ^
foreach22 
(22 
var22 
p22 
in22 
personalDataProps22 /
)22/ 0
{33 
personalData44 
.44 
Add44  
(44  !
p44! "
.44" #
Name44# '
,44' (
p44) *
.44* +
GetValue44+ 3
(443 4
user444 8
)448 9
?449 :
.44: ;
ToString44; C
(44C D
)44D E
??44F H
$str44I O
)44O P
;44P Q
}55 
var77 
logins77 
=77 
await77 
_userManager77 +
.77+ ,
GetLoginsAsync77, :
(77: ;
user77; ?
)77? @
;77@ A
foreach88 
(88 
var88 
l88 
in88 
logins88 $
)88$ %
{99 
personalData:: 
.:: 
Add::  
(::  !
$"::! #
{::# $
l::$ %
.::% &
LoginProvider::& 3
}::3 4
$str::4 P
"::P Q
,::Q R
l::S T
.::T U
ProviderKey::U `
)::` a
;::a b
};; 
personalData== 
.== 
Add== 
(== 
$"== 
$str== 0
"==0 1
,==1 2
await==3 8
_userManager==9 E
.==E F$
GetAuthenticatorKeyAsync==F ^
(==^ _
user==_ c
)==c d
)==d e
;==e f
Response?? 
.?? 
Headers?? 
.?? 
Add??  
(??  !
$str??! 6
,??6 7
$str??8 `
)??` a
;??a b
return@@ 
new@@ 
FileContentResult@@ (
(@@( )
JsonSerializer@@) 7
.@@7 8 
SerializeToUtf8Bytes@@8 L
(@@L M
personalData@@M Y
)@@Y Z
,@@Z [
$str@@\ n
)@@n o
;@@o p
}AA 	
}BB 
}CC √`
oD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\Email.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
.8 9
Manage9 ?
{ 
public 

class 

EmailModel 
: 
	PageModel '
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 

EmailModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
IEmailSender 
emailSender $
)$ %
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_emailSender 
= 
emailSender &
;& '
}   	
public&& 
string&& 
Email&& 
{&& 
get&& !
;&&! "
set&&# &
;&&& '
}&&( )
public,, 
bool,, 
IsEmailConfirmed,, $
{,,% &
get,,' *
;,,* +
set,,, /
;,,/ 0
},,1 2
[22 	
TempData22	 
]22 
public33 
string33 
StatusMessage33 #
{33$ %
get33& )
;33) *
set33+ .
;33. /
}330 1
[99 	
BindProperty99	 
]99 
public:: 

InputModel:: 
Input:: 
{::  !
get::" %
;::% &
set::' *
;::* +
}::, -
public@@ 
class@@ 

InputModel@@ 
{AA 	
[FF 
RequiredFF 
]FF 
[GG 
EmailAddressGG 
]GG 
[HH 
DisplayHH 
(HH 
NameHH 
=HH 
$strHH '
)HH' (
]HH( )
publicII 
stringII 
NewEmailII "
{II# $
getII% (
;II( )
setII* -
;II- .
}II/ 0
}JJ 	
privateLL 
asyncLL 
TaskLL 
	LoadAsyncLL $
(LL$ %
IdentityUserLL% 1
userLL2 6
)LL6 7
{MM 	
varNN 
emailNN 
=NN 
awaitNN 
_userManagerNN *
.NN* +
GetEmailAsyncNN+ 8
(NN8 9
userNN9 =
)NN= >
;NN> ?
EmailOO 
=OO 
emailOO 
;OO 
InputQQ 
=QQ 
newQQ 

InputModelQQ "
{RR 
NewEmailSS 
=SS 
emailSS  
,SS  !
}TT 
;TT 
IsEmailConfirmedVV 
=VV 
awaitVV $
_userManagerVV% 1
.VV1 2!
IsEmailConfirmedAsyncVV2 G
(VVG H
userVVH L
)VVL M
;VVM N
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY 
IActionResultYY '
>YY' (

OnGetAsyncYY) 3
(YY3 4
)YY4 5
{ZZ 	
var[[ 
user[[ 
=[[ 
await[[ 
_userManager[[ )
.[[) *
GetUserAsync[[* 6
([[6 7
User[[7 ;
)[[; <
;[[< =
if\\ 
(\\ 
user\\ 
==\\ 
null\\ 
)\\ 
{]] 
return^^ 
NotFound^^ 
(^^  
$"^^  "
$str^^" ?
{^^? @
_userManager^^@ L
.^^L M
	GetUserId^^M V
(^^V W
User^^W [
)^^[ \
}^^\ ]
$str^^] _
"^^_ `
)^^` a
;^^a b
}__ 
awaitaa 
	LoadAsyncaa 
(aa 
useraa  
)aa  !
;aa! "
returnbb 
Pagebb 
(bb 
)bb 
;bb 
}cc 	
publicee 
asyncee 
Taskee 
<ee 
IActionResultee '
>ee' ("
OnPostChangeEmailAsyncee) ?
(ee? @
)ee@ A
{ff 	
vargg 
usergg 
=gg 
awaitgg 
_userManagergg )
.gg) *
GetUserAsyncgg* 6
(gg6 7
Usergg7 ;
)gg; <
;gg< =
ifhh 
(hh 
userhh 
==hh 
nullhh 
)hh 
{ii 
returnjj 
NotFoundjj 
(jj  
$"jj  "
$strjj" ?
{jj? @
_userManagerjj@ L
.jjL M
	GetUserIdjjM V
(jjV W
UserjjW [
)jj[ \
}jj\ ]
$strjj] _
"jj_ `
)jj` a
;jja b
}kk 
ifmm 
(mm 
!mm 

ModelStatemm 
.mm 
IsValidmm #
)mm# $
{nn 
awaitoo 
	LoadAsyncoo 
(oo  
useroo  $
)oo$ %
;oo% &
returnpp 
Pagepp 
(pp 
)pp 
;pp 
}qq 
varss 
emailss 
=ss 
awaitss 
_userManagerss *
.ss* +
GetEmailAsyncss+ 8
(ss8 9
userss9 =
)ss= >
;ss> ?
iftt 
(tt 
Inputtt 
.tt 
NewEmailtt 
!=tt !
emailtt" '
)tt' (
{uu 
varvv 
userIdvv 
=vv 
awaitvv "
_userManagervv# /
.vv/ 0
GetUserIdAsyncvv0 >
(vv> ?
uservv? C
)vvC D
;vvD E
varww 
codeww 
=ww 
awaitww  
_userManagerww! -
.ww- .)
GenerateChangeEmailTokenAsyncww. K
(wwK L
userwwL P
,wwP Q
InputwwR W
.wwW X
NewEmailwwX `
)ww` a
;wwa b
codexx 
=xx 
WebEncodersxx "
.xx" #
Base64UrlEncodexx# 2
(xx2 3
Encodingxx3 ;
.xx; <
UTF8xx< @
.xx@ A
GetBytesxxA I
(xxI J
codexxJ N
)xxN O
)xxO P
;xxP Q
varyy 
callbackUrlyy 
=yy  !
Urlyy" %
.yy% &
Pageyy& *
(yy* +
$strzz 1
,zz1 2
pageHandler{{ 
:{{  
null{{! %
,{{% &
values|| 
:|| 
new|| 
{||  !
area||" &
=||' (
$str||) 3
,||3 4
userId||5 ;
=||< =
userId||> D
,||D E
email||F K
=||L M
Input||N S
.||S T
NewEmail||T \
,||\ ]
code||^ b
=||c d
code||e i
}||j k
,||k l
protocol}} 
:}} 
Request}} %
.}}% &
Scheme}}& ,
)}}, -
;}}- .
await~~ 
_emailSender~~ "
.~~" #
SendEmailAsync~~# 1
(~~1 2
Input 
. 
NewEmail "
," #
$str
ÄÄ (
,
ÄÄ( )
$"
ÅÅ 
$str
ÅÅ >
{
ÅÅ> ?
HtmlEncoder
ÅÅ? J
.
ÅÅJ K
Default
ÅÅK R
.
ÅÅR S
Encode
ÅÅS Y
(
ÅÅY Z
callbackUrl
ÅÅZ e
)
ÅÅe f
}
ÅÅf g
$str
ÅÅg {
"
ÅÅ{ |
)
ÅÅ| }
;
ÅÅ} ~
StatusMessage
ÉÉ 
=
ÉÉ 
$str
ÉÉ  b
;
ÉÉb c
return
ÑÑ 
RedirectToPage
ÑÑ %
(
ÑÑ% &
)
ÑÑ& '
;
ÑÑ' (
}
ÖÖ 
StatusMessage
áá 
=
áá 
$str
áá 6
;
áá6 7
return
àà 
RedirectToPage
àà !
(
àà! "
)
àà" #
;
àà# $
}
ââ 	
public
ãã 
async
ãã 
Task
ãã 
<
ãã 
IActionResult
ãã '
>
ãã' (.
 OnPostSendVerificationEmailAsync
ãã) I
(
ããI J
)
ããJ K
{
åå 	
var
çç 
user
çç 
=
çç 
await
çç 
_userManager
çç )
.
çç) *
GetUserAsync
çç* 6
(
çç6 7
User
çç7 ;
)
çç; <
;
çç< =
if
éé 
(
éé 
user
éé 
==
éé 
null
éé 
)
éé 
{
èè 
return
êê 
NotFound
êê 
(
êê  
$"
êê  "
$str
êê" ?
{
êê? @
_userManager
êê@ L
.
êêL M
	GetUserId
êêM V
(
êêV W
User
êêW [
)
êê[ \
}
êê\ ]
$str
êê] _
"
êê_ `
)
êê` a
;
êêa b
}
ëë 
if
ìì 
(
ìì 
!
ìì 

ModelState
ìì 
.
ìì 
IsValid
ìì #
)
ìì# $
{
îî 
await
ïï 
	LoadAsync
ïï 
(
ïï  
user
ïï  $
)
ïï$ %
;
ïï% &
return
ññ 
Page
ññ 
(
ññ 
)
ññ 
;
ññ 
}
óó 
var
ôô 
userId
ôô 
=
ôô 
await
ôô 
_userManager
ôô +
.
ôô+ ,
GetUserIdAsync
ôô, :
(
ôô: ;
user
ôô; ?
)
ôô? @
;
ôô@ A
var
öö 
email
öö 
=
öö 
await
öö 
_userManager
öö *
.
öö* +
GetEmailAsync
öö+ 8
(
öö8 9
user
öö9 =
)
öö= >
;
öö> ?
var
õõ 
code
õõ 
=
õõ 
await
õõ 
_userManager
õõ )
.
õõ) *1
#GenerateEmailConfirmationTokenAsync
õõ* M
(
õõM N
user
õõN R
)
õõR S
;
õõS T
code
úú 
=
úú 
WebEncoders
úú 
.
úú 
Base64UrlEncode
úú .
(
úú. /
Encoding
úú/ 7
.
úú7 8
UTF8
úú8 <
.
úú< =
GetBytes
úú= E
(
úúE F
code
úúF J
)
úúJ K
)
úúK L
;
úúL M
var
ùù 
callbackUrl
ùù 
=
ùù 
Url
ùù !
.
ùù! "
Page
ùù" &
(
ùù& '
$str
ûû '
,
ûû' (
pageHandler
üü 
:
üü 
null
üü !
,
üü! "
values
†† 
:
†† 
new
†† 
{
†† 
area
†† "
=
††# $
$str
††% /
,
††/ 0
userId
††1 7
=
††8 9
userId
††: @
,
††@ A
code
††B F
=
††G H
code
††I M
}
††N O
,
††O P
protocol
°° 
:
°° 
Request
°° !
.
°°! "
Scheme
°°" (
)
°°( )
;
°°) *
await
¢¢ 
_emailSender
¢¢ 
.
¢¢ 
SendEmailAsync
¢¢ -
(
¢¢- .
email
££ 
,
££ 
$str
§§ $
,
§§$ %
$"
•• 
$str
•• :
{
••: ;
HtmlEncoder
••; F
.
••F G
Default
••G N
.
••N O
Encode
••O U
(
••U V
callbackUrl
••V a
)
••a b
}
••b c
$str
••c w
"
••w x
)
••x y
;
••y z
StatusMessage
ßß 
=
ßß 
$str
ßß O
;
ßßO P
return
®® 
RedirectToPage
®® !
(
®®! "
)
®®" #
;
®®# $
}
©© 	
}
™™ 
}´´ åg
}D:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\EnableAuthenticator.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
.8 9
Manage9 ?
{ 
public 

class $
EnableAuthenticatorModel )
:* +
	PageModel, 5
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !$
EnableAuthenticatorModel! 9
>9 :
_logger; B
;B C
private 
readonly 

UrlEncoder #
_urlEncoder$ /
;/ 0
private 
const 
string "
AuthenticatorUriFormat 3
=4 5
$str6 m
;m n
public $
EnableAuthenticatorModel '
(' (
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< $
EnableAuthenticatorModel ,
>, -
logger. 4
,4 5

UrlEncoder 

urlEncoder !
)! "
{ 	
_userManager   
=   
userManager   &
;  & '
_logger!! 
=!! 
logger!! 
;!! 
_urlEncoder"" 
="" 

urlEncoder"" $
;""$ %
}## 	
public)) 
string)) 
	SharedKey)) 
{))  !
get))" %
;))% &
set))' *
;))* +
})), -
public// 
string// 
AuthenticatorUri// &
{//' (
get//) ,
;//, -
set//. 1
;//1 2
}//3 4
[55 	
TempData55	 
]55 
public66 
string66 
[66 
]66 
RecoveryCodes66 %
{66& '
get66( +
;66+ ,
set66- 0
;660 1
}662 3
[<< 	
TempData<<	 
]<< 
public== 
string== 
StatusMessage== #
{==$ %
get==& )
;==) *
set==+ .
;==. /
}==0 1
[CC 	
BindPropertyCC	 
]CC 
publicDD 

InputModelDD 
InputDD 
{DD  !
getDD" %
;DD% &
setDD' *
;DD* +
}DD, -
publicJJ 
classJJ 

InputModelJJ 
{KK 	
[PP 
RequiredPP 
]PP 
[QQ 
StringLengthQQ 
(QQ 
$numQQ 
,QQ 
ErrorMessageQQ )
=QQ* +
$strQQ, j
,QQj k
MinimumLengthQQl y
=QQz {
$numQQ| }
)QQ} ~
]QQ~ 
[RR 
DataTypeRR 
(RR 
DataTypeRR 
.RR 
TextRR #
)RR# $
]RR$ %
[SS 
DisplaySS 
(SS 
NameSS 
=SS 
$strSS /
)SS/ 0
]SS0 1
publicTT 
stringTT 
CodeTT 
{TT  
getTT! $
;TT$ %
setTT& )
;TT) *
}TT+ ,
}UU 	
publicWW 
asyncWW 
TaskWW 
<WW 
IActionResultWW '
>WW' (

OnGetAsyncWW) 3
(WW3 4
)WW4 5
{XX 	
varYY 
userYY 
=YY 
awaitYY 
_userManagerYY )
.YY) *
GetUserAsyncYY* 6
(YY6 7
UserYY7 ;
)YY; <
;YY< =
ifZZ 
(ZZ 
userZZ 
==ZZ 
nullZZ 
)ZZ 
{[[ 
return\\ 
NotFound\\ 
(\\  
$"\\  "
$str\\" ?
{\\? @
_userManager\\@ L
.\\L M
	GetUserId\\M V
(\\V W
User\\W [
)\\[ \
}\\\ ]
$str\\] _
"\\_ `
)\\` a
;\\a b
}]] 
await__ *
LoadSharedKeyAndQrCodeUriAsync__ 0
(__0 1
user__1 5
)__5 6
;__6 7
returnaa 
Pageaa 
(aa 
)aa 
;aa 
}bb 	
publicdd 
asyncdd 
Taskdd 
<dd 
IActionResultdd '
>dd' (
OnPostAsyncdd) 4
(dd4 5
)dd5 6
{ee 	
varff 
userff 
=ff 
awaitff 
_userManagerff )
.ff) *
GetUserAsyncff* 6
(ff6 7
Userff7 ;
)ff; <
;ff< =
ifgg 
(gg 
usergg 
==gg 
nullgg 
)gg 
{hh 
returnii 
NotFoundii 
(ii  
$"ii  "
$strii" ?
{ii? @
_userManagerii@ L
.iiL M
	GetUserIdiiM V
(iiV W
UseriiW [
)ii[ \
}ii\ ]
$strii] _
"ii_ `
)ii` a
;iia b
}jj 
ifll 
(ll 
!ll 

ModelStatell 
.ll 
IsValidll #
)ll# $
{mm 
awaitnn *
LoadSharedKeyAndQrCodeUriAsyncnn 4
(nn4 5
usernn5 9
)nn9 :
;nn: ;
returnoo 
Pageoo 
(oo 
)oo 
;oo 
}pp 
varss 
verificationCodess  
=ss! "
Inputss# (
.ss( )
Codess) -
.ss- .
Replacess. 5
(ss5 6
$strss6 9
,ss9 :
stringss; A
.ssA B
EmptyssB G
)ssG H
.ssH I
ReplacessI P
(ssP Q
$strssQ T
,ssT U
stringssV \
.ss\ ]
Emptyss] b
)ssb c
;ssc d
varuu 
is2faTokenValiduu 
=uu  !
awaituu" '
_userManageruu( 4
.uu4 5%
VerifyTwoFactorTokenAsyncuu5 N
(uuN O
uservv 
,vv 
_userManagervv "
.vv" #
Optionsvv# *
.vv* +
Tokensvv+ 1
.vv1 2&
AuthenticatorTokenProvidervv2 L
,vvL M
verificationCodevvN ^
)vv^ _
;vv_ `
ifxx 
(xx 
!xx 
is2faTokenValidxx  
)xx  !
{yy 

ModelStatezz 
.zz 
AddModelErrorzz (
(zz( )
$strzz) 5
,zz5 6
$strzz7 V
)zzV W
;zzW X
await{{ *
LoadSharedKeyAndQrCodeUriAsync{{ 4
({{4 5
user{{5 9
){{9 :
;{{: ;
return|| 
Page|| 
(|| 
)|| 
;|| 
}}} 
await 
_userManager 
. $
SetTwoFactorEnabledAsync 7
(7 8
user8 <
,< =
true> B
)B C
;C D
var
ÄÄ 
userId
ÄÄ 
=
ÄÄ 
await
ÄÄ 
_userManager
ÄÄ +
.
ÄÄ+ ,
GetUserIdAsync
ÄÄ, :
(
ÄÄ: ;
user
ÄÄ; ?
)
ÄÄ? @
;
ÄÄ@ A
_logger
ÅÅ 
.
ÅÅ 
LogInformation
ÅÅ "
(
ÅÅ" #
$str
ÅÅ# g
,
ÅÅg h
userId
ÅÅi o
)
ÅÅo p
;
ÅÅp q
StatusMessage
ÉÉ 
=
ÉÉ 
$str
ÉÉ G
;
ÉÉG H
if
ÖÖ 
(
ÖÖ 
await
ÖÖ 
_userManager
ÖÖ "
.
ÖÖ" #%
CountRecoveryCodesAsync
ÖÖ# :
(
ÖÖ: ;
user
ÖÖ; ?
)
ÖÖ? @
==
ÖÖA C
$num
ÖÖD E
)
ÖÖE F
{
ÜÜ 
var
áá 
recoveryCodes
áá !
=
áá" #
await
áá$ )
_userManager
áá* 6
.
áá6 74
&GenerateNewTwoFactorRecoveryCodesAsync
áá7 ]
(
áá] ^
user
áá^ b
,
ááb c
$num
áád f
)
ááf g
;
áág h
RecoveryCodes
àà 
=
àà 
recoveryCodes
àà  -
.
àà- .
ToArray
àà. 5
(
àà5 6
)
àà6 7
;
àà7 8
return
ââ 
RedirectToPage
ââ %
(
ââ% &
$str
ââ& ;
)
ââ; <
;
ââ< =
}
ää 
else
ãã 
{
åå 
return
çç 
RedirectToPage
çç %
(
çç% &
$str
çç& A
)
ççA B
;
ççB C
}
éé 
}
èè 	
private
ëë 
async
ëë 
Task
ëë ,
LoadSharedKeyAndQrCodeUriAsync
ëë 9
(
ëë9 :
IdentityUser
ëë: F
user
ëëG K
)
ëëK L
{
íí 	
var
îî 
unformattedKey
îî 
=
îî  
await
îî! &
_userManager
îî' 3
.
îî3 4&
GetAuthenticatorKeyAsync
îî4 L
(
îîL M
user
îîM Q
)
îîQ R
;
îîR S
if
ïï 
(
ïï 
string
ïï 
.
ïï 
IsNullOrEmpty
ïï $
(
ïï$ %
unformattedKey
ïï% 3
)
ïï3 4
)
ïï4 5
{
ññ 
await
óó 
_userManager
óó "
.
óó" #(
ResetAuthenticatorKeyAsync
óó# =
(
óó= >
user
óó> B
)
óóB C
;
óóC D
unformattedKey
òò 
=
òò  
await
òò! &
_userManager
òò' 3
.
òò3 4&
GetAuthenticatorKeyAsync
òò4 L
(
òòL M
user
òòM Q
)
òòQ R
;
òòR S
}
ôô 
	SharedKey
õõ 
=
õõ 
	FormatKey
õõ !
(
õõ! "
unformattedKey
õõ" 0
)
õõ0 1
;
õõ1 2
var
ùù 
email
ùù 
=
ùù 
await
ùù 
_userManager
ùù *
.
ùù* +
GetEmailAsync
ùù+ 8
(
ùù8 9
user
ùù9 =
)
ùù= >
;
ùù> ?
AuthenticatorUri
ûû 
=
ûû 
GenerateQrCodeUri
ûû 0
(
ûû0 1
email
ûû1 6
,
ûû6 7
unformattedKey
ûû8 F
)
ûûF G
;
ûûG H
}
üü 	
private
°° 
string
°° 
	FormatKey
°°  
(
°°  !
string
°°! '
unformattedKey
°°( 6
)
°°6 7
{
¢¢ 	
var
££ 
result
££ 
=
££ 
new
££ 
StringBuilder
££ *
(
££* +
)
££+ ,
;
££, -
int
§§ 
currentPosition
§§ 
=
§§  !
$num
§§" #
;
§§# $
while
•• 
(
•• 
currentPosition
•• "
+
••# $
$num
••% &
<
••' (
unformattedKey
••) 7
.
••7 8
Length
••8 >
)
••> ?
{
¶¶ 
result
ßß 
.
ßß 
Append
ßß 
(
ßß 
unformattedKey
ßß ,
.
ßß, -
AsSpan
ßß- 3
(
ßß3 4
currentPosition
ßß4 C
,
ßßC D
$num
ßßE F
)
ßßF G
)
ßßG H
.
ßßH I
Append
ßßI O
(
ßßO P
$char
ßßP S
)
ßßS T
;
ßßT U
currentPosition
®® 
+=
®®  "
$num
®®# $
;
®®$ %
}
©© 
if
™™ 
(
™™ 
currentPosition
™™ 
<
™™  !
unformattedKey
™™" 0
.
™™0 1
Length
™™1 7
)
™™7 8
{
´´ 
result
¨¨ 
.
¨¨ 
Append
¨¨ 
(
¨¨ 
unformattedKey
¨¨ ,
.
¨¨, -
AsSpan
¨¨- 3
(
¨¨3 4
currentPosition
¨¨4 C
)
¨¨C D
)
¨¨D E
;
¨¨E F
}
≠≠ 
return
ØØ 
result
ØØ 
.
ØØ 
ToString
ØØ "
(
ØØ" #
)
ØØ# $
.
ØØ$ %
ToLowerInvariant
ØØ% 5
(
ØØ5 6
)
ØØ6 7
;
ØØ7 8
}
∞∞ 	
private
≤≤ 
string
≤≤ 
GenerateQrCodeUri
≤≤ (
(
≤≤( )
string
≤≤) /
email
≤≤0 5
,
≤≤5 6
string
≤≤7 =
unformattedKey
≤≤> L
)
≤≤L M
{
≥≥ 	
return
¥¥ 
string
¥¥ 
.
¥¥ 
Format
¥¥  
(
¥¥  !
CultureInfo
µµ 
.
µµ 
InvariantCulture
µµ ,
,
µµ, -$
AuthenticatorUriFormat
∂∂ &
,
∂∂& '
_urlEncoder
∑∑ 
.
∑∑ 
Encode
∑∑ "
(
∑∑" #
$str
∑∑# E
)
∑∑E F
,
∑∑F G
_urlEncoder
∏∏ 
.
∏∏ 
Encode
∏∏ "
(
∏∏" #
email
∏∏# (
)
∏∏( )
,
∏∏) *
unformattedKey
ππ 
)
ππ 
;
ππ  
}
∫∫ 	
}
ªª 
}ºº µT
xD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\ExternalLogins.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
.8 9
Manage9 ?
{ 
public 

class 
ExternalLoginsModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 

IUserStore #
<# $
IdentityUser$ 0
>0 1

_userStore2 <
;< =
public 
ExternalLoginsModel "
(" #
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6

IUserStore 
< 
IdentityUser #
># $
	userStore% .
). /
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +

_userStore 
= 
	userStore "
;" #
} 	
public%% 
IList%% 
<%% 
UserLoginInfo%% "
>%%" #
CurrentLogins%%$ 1
{%%2 3
get%%4 7
;%%7 8
set%%9 <
;%%< =
}%%> ?
public++ 
IList++ 
<++  
AuthenticationScheme++ )
>++) *
OtherLogins+++ 6
{++7 8
get++9 <
;++< =
set++> A
;++A B
}++C D
public11 
bool11 
ShowRemoveButton11 $
{11% &
get11' *
;11* +
set11, /
;11/ 0
}111 2
[77 	
TempData77	 
]77 
public88 
string88 
StatusMessage88 #
{88$ %
get88& )
;88) *
set88+ .
;88. /
}880 1
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (

OnGetAsync::) 3
(::3 4
)::4 5
{;; 	
var<< 
user<< 
=<< 
await<< 
_userManager<< )
.<<) *
GetUserAsync<<* 6
(<<6 7
User<<7 ;
)<<; <
;<<< =
if== 
(== 
user== 
==== 
null== 
)== 
{>> 
return?? 
NotFound?? 
(??  
$"??  "
$str??" ?
{??? @
_userManager??@ L
.??L M
	GetUserId??M V
(??V W
User??W [
)??[ \
}??\ ]
$str??] _
"??_ `
)??` a
;??a b
}@@ 
CurrentLoginsBB 
=BB 
awaitBB !
_userManagerBB" .
.BB. /
GetLoginsAsyncBB/ =
(BB= >
userBB> B
)BBB C
;BBC D
OtherLoginsCC 
=CC 
(CC 
awaitCC  
_signInManagerCC! /
.CC/ 01
%GetExternalAuthenticationSchemesAsyncCC0 U
(CCU V
)CCV W
)CCW X
.DD 
WhereDD 
(DD 
authDD 
=>DD 
CurrentLoginsDD ,
.DD, -
AllDD- 0
(DD0 1
ulDD1 3
=>DD4 6
authDD7 ;
.DD; <
NameDD< @
!=DDA C
ulDDD F
.DDF G
LoginProviderDDG T
)DDT U
)DDU V
.EE 
ToListEE 
(EE 
)EE 
;EE 
stringGG 
passwordHashGG 
=GG  !
nullGG" &
;GG& '
ifHH 
(HH 

_userStoreHH 
isHH 
IUserPasswordStoreHH 0
<HH0 1
IdentityUserHH1 =
>HH= >
userPasswordStoreHH? P
)HHP Q
{II 
passwordHashJJ 
=JJ 
awaitJJ $
userPasswordStoreJJ% 6
.JJ6 7 
GetPasswordHashAsyncJJ7 K
(JJK L
userJJL P
,JJP Q
HttpContextJJR ]
.JJ] ^
RequestAbortedJJ^ l
)JJl m
;JJm n
}KK 
ShowRemoveButtonMM 
=MM 
passwordHashMM +
!=MM, .
nullMM/ 3
||MM4 6
CurrentLoginsMM7 D
.MMD E
CountMME J
>MMK L
$numMMM N
;MMN O
returnNN 
PageNN 
(NN 
)NN 
;NN 
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
IActionResultQQ '
>QQ' ("
OnPostRemoveLoginAsyncQQ) ?
(QQ? @
stringQQ@ F
loginProviderQQG T
,QQT U
stringQQV \
providerKeyQQ] h
)QQh i
{RR 	
varSS 
userSS 
=SS 
awaitSS 
_userManagerSS )
.SS) *
GetUserAsyncSS* 6
(SS6 7
UserSS7 ;
)SS; <
;SS< =
ifTT 
(TT 
userTT 
==TT 
nullTT 
)TT 
{UU 
returnVV 
NotFoundVV 
(VV  
$"VV  "
$strVV" ?
{VV? @
_userManagerVV@ L
.VVL M
	GetUserIdVVM V
(VVV W
UserVVW [
)VV[ \
}VV\ ]
$strVV] _
"VV_ `
)VV` a
;VVa b
}WW 
varYY 
resultYY 
=YY 
awaitYY 
_userManagerYY +
.YY+ ,
RemoveLoginAsyncYY, <
(YY< =
userYY= A
,YYA B
loginProviderYYC P
,YYP Q
providerKeyYYR ]
)YY] ^
;YY^ _
ifZZ 
(ZZ 
!ZZ 
resultZZ 
.ZZ 
	SucceededZZ !
)ZZ! "
{[[ 
StatusMessage\\ 
=\\ 
$str\\  E
;\\E F
return]] 
RedirectToPage]] %
(]]% &
)]]& '
;]]' (
}^^ 
await`` 
_signInManager``  
.``  !
RefreshSignInAsync``! 3
(``3 4
user``4 8
)``8 9
;``9 :
StatusMessageaa 
=aa 
$straa =
;aa= >
returnbb 
RedirectToPagebb !
(bb! "
)bb" #
;bb# $
}cc 	
publicee 
asyncee 
Taskee 
<ee 
IActionResultee '
>ee' ( 
OnPostLinkLoginAsyncee) =
(ee= >
stringee> D
providereeE M
)eeM N
{ff 	
awaithh 
HttpContexthh 
.hh 
SignOutAsynchh *
(hh* +
IdentityConstantshh+ <
.hh< =
ExternalSchemehh= K
)hhK L
;hhL M
varkk 
redirectUrlkk 
=kk 
Urlkk !
.kk! "
Pagekk" &
(kk& '
$strkk' 9
,kk9 :
pageHandlerkk; F
:kkF G
$strkkH [
)kk[ \
;kk\ ]
varll 

propertiesll 
=ll 
_signInManagerll +
.ll+ ,5
)ConfigureExternalAuthenticationPropertiesll, U
(llU V
providerllV ^
,ll^ _
redirectUrlll` k
,llk l
_userManagerllm y
.lly z
	GetUserId	llz É
(
llÉ Ñ
User
llÑ à
)
llà â
)
llâ ä
;
llä ã
returnmm 
newmm 
ChallengeResultmm &
(mm& '
providermm' /
,mm/ 0

propertiesmm1 ;
)mm; <
;mm< =
}nn 	
publicpp 
asyncpp 
Taskpp 
<pp 
IActionResultpp '
>pp' ('
OnGetLinkLoginCallbackAsyncpp) D
(ppD E
)ppE F
{qq 	
varrr 
userrr 
=rr 
awaitrr 
_userManagerrr )
.rr) *
GetUserAsyncrr* 6
(rr6 7
Userrr7 ;
)rr; <
;rr< =
ifss 
(ss 
userss 
==ss 
nullss 
)ss 
{tt 
returnuu 
NotFounduu 
(uu  
$"uu  "
$struu" ?
{uu? @
_userManageruu@ L
.uuL M
	GetUserIduuM V
(uuV W
UseruuW [
)uu[ \
}uu\ ]
$struu] _
"uu_ `
)uu` a
;uua b
}vv 
varxx 
userIdxx 
=xx 
awaitxx 
_userManagerxx +
.xx+ ,
GetUserIdAsyncxx, :
(xx: ;
userxx; ?
)xx? @
;xx@ A
varyy 
infoyy 
=yy 
awaityy 
_signInManageryy +
.yy+ ,%
GetExternalLoginInfoAsyncyy, E
(yyE F
userIdyyF L
)yyL M
;yyM N
ifzz 
(zz 
infozz 
==zz 
nullzz 
)zz 
{{{ 
throw|| 
new|| %
InvalidOperationException|| 3
(||3 4
$"||4 6
$str||6 l
"||l m
)||m n
;||n o
}}} 
var 
result 
= 
await 
_userManager +
.+ ,
AddLoginAsync, 9
(9 :
user: >
,> ?
info@ D
)D E
;E F
if
ÄÄ 
(
ÄÄ 
!
ÄÄ 
result
ÄÄ 
.
ÄÄ 
	Succeeded
ÄÄ !
)
ÄÄ! "
{
ÅÅ 
StatusMessage
ÇÇ 
=
ÇÇ 
$str
ÇÇ  |
;
ÇÇ| }
return
ÉÉ 
RedirectToPage
ÉÉ %
(
ÉÉ% &
)
ÉÉ& '
;
ÉÉ' (
}
ÑÑ 
await
áá 
HttpContext
áá 
.
áá 
SignOutAsync
áá *
(
áá* +
IdentityConstants
áá+ <
.
áá< =
ExternalScheme
áá= K
)
ááK L
;
ááL M
StatusMessage
ââ 
=
ââ 
$str
ââ ;
;
ââ; <
return
ää 
RedirectToPage
ää !
(
ää! "
)
ää" #
;
ää# $
}
ãã 	
}
åå 
}çç ª+
D:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\GenerateRecoveryCodes.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
.8 9
Manage9 ?
{ 
public 

class &
GenerateRecoveryCodesModel +
:, -
	PageModel. 7
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !&
GenerateRecoveryCodesModel! ;
>; <
_logger= D
;D E
public &
GenerateRecoveryCodesModel )
() *
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< &
GenerateRecoveryCodesModel .
>. /
logger0 6
)6 7
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[   	
TempData  	 
]   
public!! 
string!! 
[!! 
]!! 
RecoveryCodes!! %
{!!& '
get!!( +
;!!+ ,
set!!- 0
;!!0 1
}!!2 3
['' 	
TempData''	 
]'' 
public(( 
string(( 
StatusMessage(( #
{(($ %
get((& )
;(() *
set((+ .
;((. /
}((0 1
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (

OnGetAsync**) 3
(**3 4
)**4 5
{++ 	
var,, 
user,, 
=,, 
await,, 
_userManager,, )
.,,) *
GetUserAsync,,* 6
(,,6 7
User,,7 ;
),,; <
;,,< =
if-- 
(-- 
user-- 
==-- 
null-- 
)-- 
{.. 
return// 
NotFound// 
(//  
$"//  "
$str//" ?
{//? @
_userManager//@ L
.//L M
	GetUserId//M V
(//V W
User//W [
)//[ \
}//\ ]
$str//] _
"//_ `
)//` a
;//a b
}00 
var22 
isTwoFactorEnabled22 "
=22# $
await22% *
_userManager22+ 7
.227 8$
GetTwoFactorEnabledAsync228 P
(22P Q
user22Q U
)22U V
;22V W
if33 
(33 
!33 
isTwoFactorEnabled33 #
)33# $
{44 
throw55 
new55 %
InvalidOperationException55 3
(553 4
$"554 6
$str	556 É
"
55É Ñ
)
55Ñ Ö
;
55Ö Ü
}66 
return88 
Page88 
(88 
)88 
;88 
}99 	
public;; 
async;; 
Task;; 
<;; 
IActionResult;; '
>;;' (
OnPostAsync;;) 4
(;;4 5
);;5 6
{<< 	
var== 
user== 
=== 
await== 
_userManager== )
.==) *
GetUserAsync==* 6
(==6 7
User==7 ;
)==; <
;==< =
if>> 
(>> 
user>> 
==>> 
null>> 
)>> 
{?? 
return@@ 
NotFound@@ 
(@@  
$"@@  "
$str@@" ?
{@@? @
_userManager@@@ L
.@@L M
	GetUserId@@M V
(@@V W
User@@W [
)@@[ \
}@@\ ]
$str@@] _
"@@_ `
)@@` a
;@@a b
}AA 
varCC 
isTwoFactorEnabledCC "
=CC# $
awaitCC% *
_userManagerCC+ 7
.CC7 8$
GetTwoFactorEnabledAsyncCC8 P
(CCP Q
userCCQ U
)CCU V
;CCV W
varDD 
userIdDD 
=DD 
awaitDD 
_userManagerDD +
.DD+ ,
GetUserIdAsyncDD, :
(DD: ;
userDD; ?
)DD? @
;DD@ A
ifEE 
(EE 
!EE 
isTwoFactorEnabledEE #
)EE# $
{FF 
throwGG 
newGG %
InvalidOperationExceptionGG 3
(GG3 4
$"GG4 6
$strGG6 ~
"GG~ 
)	GG Ä
;
GGÄ Å
}HH 
varJJ 
recoveryCodesJJ 
=JJ 
awaitJJ  %
_userManagerJJ& 2
.JJ2 32
&GenerateNewTwoFactorRecoveryCodesAsyncJJ3 Y
(JJY Z
userJJZ ^
,JJ^ _
$numJJ` b
)JJb c
;JJc d
RecoveryCodesKK 
=KK 
recoveryCodesKK )
.KK) *
ToArrayKK* 1
(KK1 2
)KK2 3
;KK3 4
_loggerMM 
.MM 
LogInformationMM "
(MM" #
$strMM# b
,MMb c
userIdMMd j
)MMj k
;MMk l
StatusMessageNN 
=NN 
$strNN D
;NND E
returnOO 
RedirectToPageOO !
(OO! "
$strOO" 7
)OO7 8
;OO8 9
}PP 	
}QQ 
}RR ∑4
oD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\Index.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
.8 9
Manage9 ?
{ 
public 

class 

IndexModel 
: 
	PageModel '
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 

IndexModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
public   
string   
Username   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
[&& 	
TempData&&	 
]&& 
public'' 
string'' 
StatusMessage'' #
{''$ %
get''& )
;'') *
set''+ .
;''. /
}''0 1
[-- 	
BindProperty--	 
]-- 
public.. 

InputModel.. 
Input.. 
{..  !
get.." %
;..% &
set..' *
;..* +
}.., -
public44 
class44 

InputModel44 
{55 	
[:: 
Phone:: 
]:: 
[;; 
Display;; 
(;; 
Name;; 
=;; 
$str;; *
);;* +
];;+ ,
public<< 
string<< 
PhoneNumber<< %
{<<& '
get<<( +
;<<+ ,
set<<- 0
;<<0 1
}<<2 3
}== 	
private?? 
async?? 
Task?? 
	LoadAsync?? $
(??$ %
IdentityUser??% 1
user??2 6
)??6 7
{@@ 	
varAA 
userNameAA 
=AA 
awaitAA  
_userManagerAA! -
.AA- .
GetUserNameAsyncAA. >
(AA> ?
userAA? C
)AAC D
;AAD E
varBB 
phoneNumberBB 
=BB 
awaitBB #
_userManagerBB$ 0
.BB0 1
GetPhoneNumberAsyncBB1 D
(BBD E
userBBE I
)BBI J
;BBJ K
UsernameDD 
=DD 
userNameDD 
;DD  
InputFF 
=FF 
newFF 

InputModelFF "
{GG 
PhoneNumberHH 
=HH 
phoneNumberHH )
}II 
;II 
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (

OnGetAsyncLL) 3
(LL3 4
)LL4 5
{MM 	
varNN 
userNN 
=NN 
awaitNN 
_userManagerNN )
.NN) *
GetUserAsyncNN* 6
(NN6 7
UserNN7 ;
)NN; <
;NN< =
ifOO 
(OO 
userOO 
==OO 
nullOO 
)OO 
{PP 
returnQQ 
NotFoundQQ 
(QQ  
$"QQ  "
$strQQ" ?
{QQ? @
_userManagerQQ@ L
.QQL M
	GetUserIdQQM V
(QQV W
UserQQW [
)QQ[ \
}QQ\ ]
$strQQ] _
"QQ_ `
)QQ` a
;QQa b
}RR 
awaitTT 
	LoadAsyncTT 
(TT 
userTT  
)TT  !
;TT! "
returnUU 
PageUU 
(UU 
)UU 
;UU 
}VV 	
publicXX 
asyncXX 
TaskXX 
<XX 
IActionResultXX '
>XX' (
OnPostAsyncXX) 4
(XX4 5
)XX5 6
{YY 	
varZZ 
userZZ 
=ZZ 
awaitZZ 
_userManagerZZ )
.ZZ) *
GetUserAsyncZZ* 6
(ZZ6 7
UserZZ7 ;
)ZZ; <
;ZZ< =
if[[ 
([[ 
user[[ 
==[[ 
null[[ 
)[[ 
{\\ 
return]] 
NotFound]] 
(]]  
$"]]  "
$str]]" ?
{]]? @
_userManager]]@ L
.]]L M
	GetUserId]]M V
(]]V W
User]]W [
)]][ \
}]]\ ]
$str]]] _
"]]_ `
)]]` a
;]]a b
}^^ 
if`` 
(`` 
!`` 

ModelState`` 
.`` 
IsValid`` #
)``# $
{aa 
awaitbb 
	LoadAsyncbb 
(bb  
userbb  $
)bb$ %
;bb% &
returncc 
Pagecc 
(cc 
)cc 
;cc 
}dd 
varff 
phoneNumberff 
=ff 
awaitff #
_userManagerff$ 0
.ff0 1
GetPhoneNumberAsyncff1 D
(ffD E
userffE I
)ffI J
;ffJ K
ifgg 
(gg 
Inputgg 
.gg 
PhoneNumbergg !
!=gg" $
phoneNumbergg% 0
)gg0 1
{hh 
varii 
setPhoneResultii "
=ii# $
awaitii% *
_userManagerii+ 7
.ii7 8
SetPhoneNumberAsyncii8 K
(iiK L
useriiL P
,iiP Q
InputiiR W
.iiW X
PhoneNumberiiX c
)iic d
;iid e
ifjj 
(jj 
!jj 
setPhoneResultjj #
.jj# $
	Succeededjj$ -
)jj- .
{kk 
StatusMessagell !
=ll" #
$strll$ W
;llW X
returnmm 
RedirectToPagemm )
(mm) *
)mm* +
;mm+ ,
}nn 
}oo 
awaitqq 
_signInManagerqq  
.qq  !
RefreshSignInAsyncqq! 3
(qq3 4
userqq4 8
)qq8 9
;qq9 :
StatusMessagerr 
=rr 
$strrr ;
;rr; <
returnss 
RedirectToPagess !
(ss! "
)ss" #
;ss# $
}tt 	
}uu 
}vv ⁄)
qD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\ManageNavPages.cs
	namespace 	
Shopping_Mall_MVC 
. 
Areas "
." #
Identity# +
.+ ,
Pages, 1
.1 2
Account2 9
.9 :
Manage: @
{		 
public 

static 
class 
ManageNavPages &
{ 
public 
static 
string 
Index "
=># %
$str& -
;- .
public 
static 
string 
Email "
=># %
$str& -
;- .
public   
static   
string   
ChangePassword   +
=>  , .
$str  / ?
;  ? @
public&& 
static&& 
string&&  
DownloadPersonalData&& 1
=>&&2 4
$str&&5 K
;&&K L
public,, 
static,, 
string,, 
DeletePersonalData,, /
=>,,0 2
$str,,3 G
;,,G H
public22 
static22 
string22 
ExternalLogins22 +
=>22, .
$str22/ ?
;22? @
public88 
static88 
string88 
PersonalData88 )
=>88* ,
$str88- ;
;88; <
public>> 
static>> 
string>> #
TwoFactorAuthentication>> 4
=>>>5 7
$str>>8 Q
;>>Q R
publicDD 
staticDD 
stringDD 
IndexNavClassDD *
(DD* +
ViewContextDD+ 6
viewContextDD7 B
)DDB C
=>DDD F
PageNavClassDDG S
(DDS T
viewContextDDT _
,DD_ `
IndexDDa f
)DDf g
;DDg h
publicJJ 
staticJJ 
stringJJ 
EmailNavClassJJ *
(JJ* +
ViewContextJJ+ 6
viewContextJJ7 B
)JJB C
=>JJD F
PageNavClassJJG S
(JJS T
viewContextJJT _
,JJ_ `
EmailJJa f
)JJf g
;JJg h
publicPP 
staticPP 
stringPP "
ChangePasswordNavClassPP 3
(PP3 4
ViewContextPP4 ?
viewContextPP@ K
)PPK L
=>PPM O
PageNavClassPPP \
(PP\ ]
viewContextPP] h
,PPh i
ChangePasswordPPj x
)PPx y
;PPy z
publicVV 
staticVV 
stringVV (
DownloadPersonalDataNavClassVV 9
(VV9 :
ViewContextVV: E
viewContextVVF Q
)VVQ R
=>VVS U
PageNavClassVVV b
(VVb c
viewContextVVc n
,VVn o!
DownloadPersonalData	VVp Ñ
)
VVÑ Ö
;
VVÖ Ü
public\\ 
static\\ 
string\\ &
DeletePersonalDataNavClass\\ 7
(\\7 8
ViewContext\\8 C
viewContext\\D O
)\\O P
=>\\Q S
PageNavClass\\T `
(\\` a
viewContext\\a l
,\\l m
DeletePersonalData	\\n Ä
)
\\Ä Å
;
\\Å Ç
publicbb 
staticbb 
stringbb "
ExternalLoginsNavClassbb 3
(bb3 4
ViewContextbb4 ?
viewContextbb@ K
)bbK L
=>bbM O
PageNavClassbbP \
(bb\ ]
viewContextbb] h
,bbh i
ExternalLoginsbbj x
)bbx y
;bby z
publichh 
statichh 
stringhh  
PersonalDataNavClasshh 1
(hh1 2
ViewContexthh2 =
viewContexthh> I
)hhI J
=>hhK M
PageNavClasshhN Z
(hhZ [
viewContexthh[ f
,hhf g
PersonalDatahhh t
)hht u
;hhu v
publicnn 
staticnn 
stringnn +
TwoFactorAuthenticationNavClassnn <
(nn< =
ViewContextnn= H
viewContextnnI T
)nnT U
=>nnV X
PageNavClassnnY e
(nne f
viewContextnnf q
,nnq r$
TwoFactorAuthentication	nns ä
)
nnä ã
;
nnã å
publictt 
statictt 
stringtt 
PageNavClasstt )
(tt) *
ViewContexttt* 5
viewContexttt6 A
,ttA B
stringttC I
pagettJ N
)ttN O
{uu 	
varvv 

activePagevv 
=vv 
viewContextvv (
.vv( )
ViewDatavv) 1
[vv1 2
$strvv2 >
]vv> ?
asvv@ B
stringvvC I
??ww 
Systemww 
.ww 
IOww 
.ww 
Pathww !
.ww! "'
GetFileNameWithoutExtensionww" =
(ww= >
viewContextww> I
.wwI J
ActionDescriptorwwJ Z
.wwZ [
DisplayNameww[ f
)wwf g
;wwg h
returnxx 
stringxx 
.xx 
Equalsxx  
(xx  !

activePagexx! +
,xx+ ,
pagexx- 1
,xx1 2
StringComparisonxx3 C
.xxC D
OrdinalIgnoreCasexxD U
)xxU V
?xxW X
$strxxY a
:xxb c
nullxxd h
;xxh i
}yy 	
}zz 
}{{ Ø
vD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\PersonalData.cshtml.cs
	namespace

 	
Shopping_Mall_MVC


 
.

 
Areas

 !
.

! "
Identity

" *
.

* +
Pages

+ 0
.

0 1
Account

1 8
.

8 9
Manage

9 ?
{ 
public 

class 
PersonalDataModel "
:# $
	PageModel% .
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
PersonalDataModel! 2
>2 3
_logger4 ;
;; <
public 
PersonalDataModel  
(  !
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
PersonalDataModel %
>% &
logger' -
)- .
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
return 
NotFound 
(  
$"  "
$str" ?
{? @
_userManager@ L
.L M
	GetUserIdM V
(V W
UserW [
)[ \
}\ ]
$str] _
"_ `
)` a
;a b
} 
return!! 
Page!! 
(!! 
)!! 
;!! 
}"" 	
}## 
}$$ ù%
|D:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\ResetAuthenticator.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
.8 9
Manage9 ?
{ 
public 

class #
ResetAuthenticatorModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !#
ResetAuthenticatorModel! 8
>8 9
_logger: A
;A B
public #
ResetAuthenticatorModel &
(& '
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< #
ResetAuthenticatorModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
["" 	
TempData""	 
]"" 
public## 
string## 
StatusMessage## #
{##$ %
get##& )
;##) *
set##+ .
;##. /
}##0 1
public%% 
async%% 
Task%% 
<%% 
IActionResult%% '
>%%' (
OnGet%%) .
(%%. /
)%%/ 0
{&& 	
var'' 
user'' 
='' 
await'' 
_userManager'' )
.'') *
GetUserAsync''* 6
(''6 7
User''7 ;
)''; <
;''< =
if(( 
((( 
user(( 
==(( 
null(( 
)(( 
{)) 
return** 
NotFound** 
(**  
$"**  "
$str**" ?
{**? @
_userManager**@ L
.**L M
	GetUserId**M V
(**V W
User**W [
)**[ \
}**\ ]
$str**] _
"**_ `
)**` a
;**a b
}++ 
return-- 
Page-- 
(-- 
)-- 
;-- 
}.. 	
public00 
async00 
Task00 
<00 
IActionResult00 '
>00' (
OnPostAsync00) 4
(004 5
)005 6
{11 	
var22 
user22 
=22 
await22 
_userManager22 )
.22) *
GetUserAsync22* 6
(226 7
User227 ;
)22; <
;22< =
if33 
(33 
user33 
==33 
null33 
)33 
{44 
return55 
NotFound55 
(55  
$"55  "
$str55" ?
{55? @
_userManager55@ L
.55L M
	GetUserId55M V
(55V W
User55W [
)55[ \
}55\ ]
$str55] _
"55_ `
)55` a
;55a b
}66 
await88 
_userManager88 
.88 $
SetTwoFactorEnabledAsync88 7
(887 8
user888 <
,88< =
false88> C
)88C D
;88D E
await99 
_userManager99 
.99 &
ResetAuthenticatorKeyAsync99 9
(999 :
user99: >
)99> ?
;99? @
var:: 
userId:: 
=:: 
await:: 
_userManager:: +
.::+ ,
GetUserIdAsync::, :
(::: ;
user::; ?
)::? @
;::@ A
_logger;; 
.;; 
LogInformation;; "
(;;" #
$str;;# d
,;;d e
user;;f j
.;;j k
Id;;k m
);;m n
;;;n o
await== 
_signInManager==  
.==  !
RefreshSignInAsync==! 3
(==3 4
user==4 8
)==8 9
;==9 :
StatusMessage>> 
=>> 
$str	>> ç
;
>>ç é
return@@ 
RedirectToPage@@ !
(@@! "
$str@@" 9
)@@9 :
;@@: ;
}AA 	
}BB 
}CC Ò5
uD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\SetPassword.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
.8 9
Manage9 ?
{ 
public 

class 
SetPasswordModel !
:" #
	PageModel$ -
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 
SetPasswordModel 
(  
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
BindProperty	 
] 
public   

InputModel   
Input   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
[&& 	
TempData&&	 
]&& 
public'' 
string'' 
StatusMessage'' #
{''$ %
get''& )
;'') *
set''+ .
;''. /
}''0 1
public-- 
class-- 

InputModel-- 
{.. 	
[33 
Required33 
]33 
[44 
StringLength44 
(44 
$num44 
,44 
ErrorMessage44 +
=44, -
$str44. l
,44l m
MinimumLength44n {
=44| }
$num44~ 
)	44 Ä
]
44Ä Å
[55 
DataType55 
(55 
DataType55 
.55 
Password55 '
)55' (
]55( )
[66 
Display66 
(66 
Name66 
=66 
$str66 *
)66* +
]66+ ,
public77 
string77 
NewPassword77 %
{77& '
get77( +
;77+ ,
set77- 0
;770 1
}772 3
[== 
DataType== 
(== 
DataType== 
.== 
Password== '
)==' (
]==( )
[>> 
Display>> 
(>> 
Name>> 
=>> 
$str>> 2
)>>2 3
]>>3 4
[?? 
Compare?? 
(?? 
$str?? "
,??" #
ErrorMessage??$ 0
=??1 2
$str??3 m
)??m n
]??n o
public@@ 
string@@ 
ConfirmPassword@@ )
{@@* +
get@@, /
;@@/ 0
set@@1 4
;@@4 5
}@@6 7
}AA 	
publicCC 
asyncCC 
TaskCC 
<CC 
IActionResultCC '
>CC' (

OnGetAsyncCC) 3
(CC3 4
)CC4 5
{DD 	
varEE 
userEE 
=EE 
awaitEE 
_userManagerEE )
.EE) *
GetUserAsyncEE* 6
(EE6 7
UserEE7 ;
)EE; <
;EE< =
ifFF 
(FF 
userFF 
==FF 
nullFF 
)FF 
{GG 
returnHH 
NotFoundHH 
(HH  
$"HH  "
$strHH" ?
{HH? @
_userManagerHH@ L
.HHL M
	GetUserIdHHM V
(HHV W
UserHHW [
)HH[ \
}HH\ ]
$strHH] _
"HH_ `
)HH` a
;HHa b
}II 
varKK 
hasPasswordKK 
=KK 
awaitKK #
_userManagerKK$ 0
.KK0 1
HasPasswordAsyncKK1 A
(KKA B
userKKB F
)KKF G
;KKG H
ifMM 
(MM 
hasPasswordMM 
)MM 
{NN 
returnOO 
RedirectToPageOO %
(OO% &
$strOO& 8
)OO8 9
;OO9 :
}PP 
returnRR 
PageRR 
(RR 
)RR 
;RR 
}SS 	
publicUU 
asyncUU 
TaskUU 
<UU 
IActionResultUU '
>UU' (
OnPostAsyncUU) 4
(UU4 5
)UU5 6
{VV 	
ifWW 
(WW 
!WW 

ModelStateWW 
.WW 
IsValidWW #
)WW# $
{XX 
returnYY 
PageYY 
(YY 
)YY 
;YY 
}ZZ 
var\\ 
user\\ 
=\\ 
await\\ 
_userManager\\ )
.\\) *
GetUserAsync\\* 6
(\\6 7
User\\7 ;
)\\; <
;\\< =
if]] 
(]] 
user]] 
==]] 
null]] 
)]] 
{^^ 
return__ 
NotFound__ 
(__  
$"__  "
$str__" ?
{__? @
_userManager__@ L
.__L M
	GetUserId__M V
(__V W
User__W [
)__[ \
}__\ ]
$str__] _
"___ `
)__` a
;__a b
}`` 
varbb 
addPasswordResultbb !
=bb" #
awaitbb$ )
_userManagerbb* 6
.bb6 7
AddPasswordAsyncbb7 G
(bbG H
userbbH L
,bbL M
InputbbN S
.bbS T
NewPasswordbbT _
)bb_ `
;bb` a
ifcc 
(cc 
!cc 
addPasswordResultcc "
.cc" #
	Succeededcc# ,
)cc, -
{dd 
foreachee 
(ee 
varee 
erroree "
inee# %
addPasswordResultee& 7
.ee7 8
Errorsee8 >
)ee> ?
{ff 

ModelStategg 
.gg 
AddModelErrorgg ,
(gg, -
stringgg- 3
.gg3 4
Emptygg4 9
,gg9 :
errorgg; @
.gg@ A
DescriptionggA L
)ggL M
;ggM N
}hh 
returnii 
Pageii 
(ii 
)ii 
;ii 
}jj 
awaitll 
_signInManagerll  
.ll  !
RefreshSignInAsyncll! 3
(ll3 4
userll4 8
)ll8 9
;ll9 :
StatusMessagemm 
=mm 
$strmm 9
;mm9 :
returnoo 
RedirectToPageoo !
(oo! "
)oo" #
;oo# $
}pp 	
}qq 
}rr ã
{D:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\ShowRecoveryCodes.cshtml.cs
	namespace

 	
Shopping_Mall_MVC


 
.

 
Areas

 !
.

! "
Identity

" *
.

* +
Pages

+ 0
.

0 1
Account

1 8
.

8 9
Manage

9 ?
{ 
public 

class "
ShowRecoveryCodesModel '
:( )
	PageModel* 3
{ 
[ 	
TempData	 
] 
public 
string 
[ 
] 
RecoveryCodes %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public$$ 
IActionResult$$ 
OnGet$$ "
($$" #
)$$# $
{%% 	
if&& 
(&& 
RecoveryCodes&& 
==&&  
null&&! %
||&&& (
RecoveryCodes&&) 6
.&&6 7
Length&&7 =
==&&> @
$num&&A B
)&&B C
{'' 
return(( 
RedirectToPage(( %
(((% &
$str((& A
)((A B
;((B C
})) 
return++ 
Page++ 
(++ 
)++ 
;++ 
},, 	
}-- 
}.. Ÿ+
ÅD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Manage\TwoFactorAuthentication.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
.8 9
Manage9 ?
{ 
public 

class (
TwoFactorAuthenticationModel -
:. /
	PageModel0 9
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !(
TwoFactorAuthenticationModel! =
>= >
_logger? F
;F G
public (
TwoFactorAuthenticationModel +
(+ ,
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager3 @
<@ A
IdentityUserA M
>M N
signInManagerO \
,\ ]
ILogger^ e
<e f)
TwoFactorAuthenticationModel	f Ç
>
Ç É
logger
Ñ ä
)
ä ã
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public   
bool   
HasAuthenticator   $
{  % &
get  ' *
;  * +
set  , /
;  / 0
}  1 2
public&& 
int&& 
RecoveryCodesLeft&& $
{&&% &
get&&' *
;&&* +
set&&, /
;&&/ 0
}&&1 2
[,, 	
BindProperty,,	 
],, 
public-- 
bool-- 
Is2faEnabled--  
{--! "
get--# &
;--& '
set--( +
;--+ ,
}--- .
public33 
bool33 
IsMachineRemembered33 '
{33( )
get33* -
;33- .
set33/ 2
;332 3
}334 5
[99 	
TempData99	 
]99 
public:: 
string:: 
StatusMessage:: #
{::$ %
get::& )
;::) *
set::+ .
;::. /
}::0 1
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (

OnGetAsync<<) 3
(<<3 4
)<<4 5
{== 	
var>> 
user>> 
=>> 
await>> 
_userManager>> )
.>>) *
GetUserAsync>>* 6
(>>6 7
User>>7 ;
)>>; <
;>>< =
if?? 
(?? 
user?? 
==?? 
null?? 
)?? 
{@@ 
returnAA 
NotFoundAA 
(AA  
$"AA  "
$strAA" ?
{AA? @
_userManagerAA@ L
.AAL M
	GetUserIdAAM V
(AAV W
UserAAW [
)AA[ \
}AA\ ]
$strAA] _
"AA_ `
)AA` a
;AAa b
}BB 
HasAuthenticatorDD 
=DD 
awaitDD $
_userManagerDD% 1
.DD1 2$
GetAuthenticatorKeyAsyncDD2 J
(DDJ K
userDDK O
)DDO P
!=DDQ S
nullDDT X
;DDX Y
Is2faEnabledEE 
=EE 
awaitEE  
_userManagerEE! -
.EE- .$
GetTwoFactorEnabledAsyncEE. F
(EEF G
userEEG K
)EEK L
;EEL M
IsMachineRememberedFF 
=FF  !
awaitFF" '
_signInManagerFF( 6
.FF6 7,
 IsTwoFactorClientRememberedAsyncFF7 W
(FFW X
userFFX \
)FF\ ]
;FF] ^
RecoveryCodesLeftGG 
=GG 
awaitGG  %
_userManagerGG& 2
.GG2 3#
CountRecoveryCodesAsyncGG3 J
(GGJ K
userGGK O
)GGO P
;GGP Q
returnII 
PageII 
(II 
)II 
;II 
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (
OnPostAsyncLL) 4
(LL4 5
)LL5 6
{MM 	
varNN 
userNN 
=NN 
awaitNN 
_userManagerNN )
.NN) *
GetUserAsyncNN* 6
(NN6 7
UserNN7 ;
)NN; <
;NN< =
ifOO 
(OO 
userOO 
==OO 
nullOO 
)OO 
{PP 
returnQQ 
NotFoundQQ 
(QQ  
$"QQ  "
$strQQ" ?
{QQ? @
_userManagerQQ@ L
.QQL M
	GetUserIdQQM V
(QQV W
UserQQW [
)QQ[ \
}QQ\ ]
$strQQ] _
"QQ_ `
)QQ` a
;QQa b
}RR 
awaitTT 
_signInManagerTT  
.TT  !&
ForgetTwoFactorClientAsyncTT! ;
(TT; <
)TT< =
;TT= >
StatusMessageUU 
=UU 
$str	UU î
;
UUî ï
returnVV 
RedirectToPageVV !
(VV! "
)VV" #
;VV# $
}WW 	
}XX 
}YY ⁄]
kD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{ 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '
CustomFields' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
CustomFields% 1
>1 2
_userManager3 ?
;? @
private 
readonly 

IUserStore #
<# $
CustomFields$ 0
>0 1

_userStore2 <
;< =
private 
readonly 
IUserEmailStore (
<( )
CustomFields) 5
>5 6
_emailStore7 B
;B C
private 
readonly 
ILogger  
<  !
RegisterModel! .
>. /
_logger0 7
;7 8
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
private 
readonly  
ApplicationDbContext -
_adminContext. ;
;; <
public 
RegisterModel 
( 
UserManager 
< 
CustomFields $
>$ %
userManager& 1
,1 2

IUserStore 
< 
CustomFields #
># $
	userStore% .
,. /
SignInManager   
<   
CustomFields   &
>  & '
signInManager  ( 5
,  5 6
ILogger!! 
<!! 
RegisterModel!! !
>!!! "
logger!!# )
,!!) *
IEmailSender"" 
emailSender"" $
,""$ % 
ApplicationDbContext##  
adminContext##! -
)##- .
{%% 	
_userManager&& 
=&& 
userManager&& &
;&&& '

_userStore'' 
='' 
	userStore'' "
;''" #
_signInManager)) 
=)) 
signInManager)) *
;))* +
_logger** 
=** 
logger** 
;** 
_emailSender++ 
=++ 
emailSender++ &
;++& '
_adminContext,, 
=,, 
adminContext,, (
;,,( )
_adminContext-- 
=-- 
adminContext-- (
;--( )
}.. 	
[44 	
BindProperty44	 
]44 
public55 

InputModel55 
Input55 
{55  !
get55" %
;55% &
set55' *
;55* +
}55, -
public;; 
string;; 
	ReturnUrl;; 
{;;  !
get;;" %
;;;% &
set;;' *
;;;* +
};;, -
publicAA 
IListAA 
<AA  
AuthenticationSchemeAA )
>AA) *
ExternalLoginsAA+ 9
{AA: ;
getAA< ?
;AA? @
setAAA D
;AAD E
}AAF G
publicGG 
classGG 

InputModelGG 
{HH 	
[NN 
RequiredNN 
]NN 
publicOO 
stringOO 
?OO 
PannoOO  
{OO! "
getOO# &
;OO& '
setOO( +
;OO+ ,
}OO- .
[QQ 
RequiredQQ 
]QQ 
[RR 
EmailAddressRR 
]RR 
[SS 
DisplaySS 
(SS 
NameSS 
=SS 
$strSS #
)SS# $
]SS$ %
publicTT 
stringTT 
EmailTT 
{TT  !
getTT" %
;TT% &
setTT' *
;TT* +
}TT, -
[ZZ 
RequiredZZ 
]ZZ 
[[[ 
StringLength[[ 
([[ 
$num[[ 
,[[ 
ErrorMessage[[ +
=[[, -
$str[[. l
,[[l m
MinimumLength[[n {
=[[| }
$num[[~ 
)	[[ Ä
]
[[Ä Å
[\\ 
DataType\\ 
(\\ 
DataType\\ 
.\\ 
Password\\ '
)\\' (
]\\( )
[]] 
Display]] 
(]] 
Name]] 
=]] 
$str]] &
)]]& '
]]]' (
public^^ 
string^^ 
Password^^ "
{^^# $
get^^% (
;^^( )
set^^* -
;^^- .
}^^/ 0
[dd 
DataTypedd 
(dd 
DataTypedd 
.dd 
Passworddd '
)dd' (
]dd( )
[ee 
Displayee 
(ee 
Nameee 
=ee 
$stree .
)ee. /
]ee/ 0
[ff 
Compareff 
(ff 
$strff 
,ff  
ErrorMessageff! -
=ff. /
$strff0 f
)fff g
]ffg h
publicgg 
stringgg 
ConfirmPasswordgg )
{gg* +
getgg, /
;gg/ 0
setgg1 4
;gg4 5
}gg6 7
}hh 	
publicll 
asyncll 
Taskll 

OnGetAsyncll $
(ll$ %
stringll% +
	returnUrlll, 5
=ll6 7
nullll8 <
)ll< =
{mm 	
ifnn 
(nn 
Usernn 
.nn 
Identitynn 
.nn 
IsAuthenticatednn -
)nn- .
{oo 
Responsepp 
.pp 
Redirectpp !
(pp! "
$strpp" )
)pp) *
;pp* +
}qq 
	ReturnUrlrr 
=rr 
	returnUrlrr !
;rr! "
ExternalLoginsss 
=ss 
(ss 
awaitss #
_signInManagerss$ 2
.ss2 31
%GetExternalAuthenticationSchemesAsyncss3 X
(ssX Y
)ssY Z
)ssZ [
.ss[ \
ToListss\ b
(ssb c
)ssc d
;ssd e
}tt 	
publicww 
IActionResultww 
OnPostAsyncww (
(ww( )
stringww) /
	returnUrlww0 9
=ww: ;
nullww< @
)ww@ A
{xx 	
ifzz 
(zz 

ModelStatezz 
.zz 
IsValidzz "
)zz" #
{{{ 
var|| 
user|| 
=|| 

CreateUser|| %
(||% &
)||& '
;||' (
var}} 
res}} 
=}} 
new}} 
	AdminRole}} '
(}}' (
)}}( )
{~~ 
Email 
= 
Input !
.! "
Email" '
,' (
Panno
ÄÄ 
=
ÄÄ 
Input
ÄÄ !
.
ÄÄ! "
Panno
ÄÄ" '
,
ÄÄ' (
Password
ÅÅ 
=
ÅÅ 
Input
ÅÅ $
.
ÅÅ$ %
Password
ÅÅ% -
,
ÅÅ- .
ConfirmPassword
ÇÇ #
=
ÇÇ$ %
Input
ÇÇ& +
.
ÇÇ+ ,
ConfirmPassword
ÇÇ, ;
,
ÇÇ; <
Rolename
ÉÉ 
=
ÉÉ 
$str
ÉÉ )
}
ÖÖ 
;
ÖÖ 
_adminContext
áá 
.
áá 
Register
áá &
.
áá& '
Add
áá' *
(
áá* +
res
áá+ .
)
áá. /
;
áá/ 0
_adminContext
àà 
.
àà 
SaveChanges
àà )
(
àà) *
)
àà* +
;
àà+ ,
	SendEmail
ââ 
(
ââ 
)
ââ 
;
ââ 
return
ää 
RedirectToAction
ää '
(
ää' (
$str
ää( 7
,
ää7 8
$str
ää9 B
)
ääB C
;
ääC D
}
ãã 
return
çç 
Page
çç 
(
çç 
)
çç 
;
çç 
}
éé 	
public
¬¬ 
void
¬¬ 
	SendEmail
¬¬ 
(
¬¬ 
)
¬¬ 
{
√√ 	

SmtpClient
≈≈ 
email
≈≈ 
=
≈≈ 
new
≈≈ "

SmtpClient
≈≈# -
{
∆∆ 
DeliveryMethod
«« 
=
««   
SmtpDeliveryMethod
««! 3
.
««3 4
Network
««4 ;
,
««; <#
UseDefaultCredentials
»» %
=
»»& '
false
»»( -
,
»»- .
	EnableSsl
…… 
=
…… 
true
……  
,
……  !
Host
   
=
   
$str
   '
,
  ' (
Port
ÀÀ 
=
ÀÀ 
$num
ÀÀ 
,
ÀÀ 
Credentials
ÃÃ 
=
ÃÃ 
new
ÃÃ !
NetworkCredential
ÃÃ" 3
(
ÃÃ3 4
$str
ÃÃ4 L
,
ÃÃL M
$str
ÃÃN `
)
ÃÃ` a
}
ÕÕ 
;
ÕÕ 
string
ŒŒ 
subject
ŒŒ 
=
ŒŒ 
$str
ŒŒ &
;
ŒŒ& '
string
œœ 
body
œœ 
=
œœ 
$"
œœ 
$str
œœ !
{
œœ! "
Input
œœ" '
.
œœ' (
Email
œœ( -
}
œœ- .
$str
œœ. N
"
œœN O
;
œœO P
try
—— 
{
““ 
email
‘‘ 
.
‘‘ 
	EnableSsl
‘‘ 
=
‘‘  !
true
‘‘" &
;
‘‘& '
email
’’ 
.
’’ 
Send
’’ 
(
’’ 
$str
’’ 3
,
’’3 4
$"
’’5 7
{
’’7 8
Input
’’8 =
.
’’= >
Email
’’> C
}
’’C D
"
’’D E
,
’’E F
subject
’’G N
,
’’N O
body
’’P T
)
’’T U
;
’’U V
}
◊◊ 
catch
ÿÿ 
(
ÿÿ 
SmtpException
ÿÿ  
e
ÿÿ! "
)
ÿÿ" #
{
ŸŸ 
Console
⁄⁄ 
.
⁄⁄ 
	WriteLine
⁄⁄ !
(
⁄⁄! "
e
⁄⁄" #
)
⁄⁄# $
;
⁄⁄$ %
}
€€ 
}
›› 	
private
·· 
IdentityUser
·· 

CreateUser
·· '
(
··' (
)
··( )
{
‚‚ 	
try
„„ 
{
‰‰ 
return
ÂÂ 
	Activator
ÂÂ  
.
ÂÂ  !
CreateInstance
ÂÂ! /
<
ÂÂ/ 0
IdentityUser
ÂÂ0 <
>
ÂÂ< =
(
ÂÂ= >
)
ÂÂ> ?
;
ÂÂ? @
}
ÊÊ 
catch
ÁÁ 
{
ËË 
throw
ÈÈ 
new
ÈÈ '
InvalidOperationException
ÈÈ 3
(
ÈÈ3 4
$"
ÈÈ4 6
$str
ÈÈ6 S
{
ÈÈS T
nameof
ÈÈT Z
(
ÈÈZ [
IdentityUser
ÈÈ[ g
)
ÈÈg h
}
ÈÈh i
$str
ÈÈi l
"
ÈÈl m
+
ÈÈn o
$"
ÍÍ 
$str
ÍÍ #
{
ÍÍ# $
nameof
ÍÍ$ *
(
ÍÍ* +
IdentityUser
ÍÍ+ 7
)
ÍÍ7 8
}
ÍÍ8 9
$strÍÍ9 ä
"ÍÍä ã
+ÍÍå ç
$"
ÎÎ 
$str
ÎÎ a
"
ÎÎa b
)
ÎÎb c
;
ÎÎc d
}
ÏÏ 
}
ÌÌ 	
private
ÔÔ 
IUserEmailStore
ÔÔ 
<
ÔÔ  
IdentityUser
ÔÔ  ,
>
ÔÔ, -
GetEmailStore
ÔÔ. ;
(
ÔÔ; <
)
ÔÔ< =
{
 	
if
ÒÒ 
(
ÒÒ 
!
ÒÒ 
_userManager
ÒÒ 
.
ÒÒ 
SupportsUserEmail
ÒÒ /
)
ÒÒ/ 0
{
ÚÚ 
throw
ÛÛ 
new
ÛÛ #
NotSupportedException
ÛÛ /
(
ÛÛ/ 0
$str
ÛÛ0 j
)
ÛÛj k
;
ÛÛk l
}
ÙÙ 
return
ıı 
(
ıı 
IUserEmailStore
ıı #
<
ıı# $
IdentityUser
ıı$ 0
>
ıı0 1
)
ıı1 2

_userStore
ıı2 <
;
ıı< =
}
ˆˆ 	
}
˜˜ 
}¯¯ »%
wD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\RegisterConfirmation.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{ 
[ 
AllowAnonymous 
] 
public 

class %
RegisterConfirmationModel *
:+ ,
	PageModel- 6
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_sender& -
;- .
public %
RegisterConfirmationModel (
(( )
UserManager) 4
<4 5
IdentityUser5 A
>A B
userManagerC N
,N O
IEmailSenderP \
sender] c
)c d
{ 	
_userManager 
= 
userManager &
;& '
_sender 
= 
sender 
; 
} 	
public!! 
string!! 
Email!! 
{!! 
get!! !
;!!! "
set!!# &
;!!& '
}!!( )
public'' 
bool'' %
DisplayConfirmAccountLink'' -
{''. /
get''0 3
;''3 4
set''5 8
;''8 9
}'': ;
public-- 
string--  
EmailConfirmationUrl-- *
{--+ ,
get--- 0
;--0 1
set--2 5
;--5 6
}--7 8
public// 
async// 
Task// 
<// 
IActionResult// '
>//' (

OnGetAsync//) 3
(//3 4
string//4 :
email//; @
,//@ A
string//B H
	returnUrl//I R
=//S T
null//U Y
)//Y Z
{00 	
if11 
(11 
email11 
==11 
null11 
)11 
{22 
return33 
RedirectToPage33 %
(33% &
$str33& .
)33. /
;33/ 0
}44 
	returnUrl55 
=55 
	returnUrl55 !
??55" $
Url55% (
.55( )
Content55) 0
(550 1
$str551 5
)555 6
;556 7
var77 
user77 
=77 
await77 
_userManager77 )
.77) *
FindByEmailAsync77* :
(77: ;
email77; @
)77@ A
;77A B
if88 
(88 
user88 
==88 
null88 
)88 
{99 
return:: 
NotFound:: 
(::  
$"::  "
$str::" B
{::B C
email::C H
}::H I
$str::I K
"::K L
)::L M
;::M N
};; 
Email== 
=== 
email== 
;== %
DisplayConfirmAccountLink?? %
=??& '
true??( ,
;??, -
if@@ 
(@@ %
DisplayConfirmAccountLink@@ )
)@@) *
{AA 
varBB 
userIdBB 
=BB 
awaitBB "
_userManagerBB# /
.BB/ 0
GetUserIdAsyncBB0 >
(BB> ?
userBB? C
)BBC D
;BBD E
varCC 
codeCC 
=CC 
awaitCC  
_userManagerCC! -
.CC- ./
#GenerateEmailConfirmationTokenAsyncCC. Q
(CCQ R
userCCR V
)CCV W
;CCW X
codeDD 
=DD 
WebEncodersDD "
.DD" #
Base64UrlEncodeDD# 2
(DD2 3
EncodingDD3 ;
.DD; <
UTF8DD< @
.DD@ A
GetBytesDDA I
(DDI J
codeDDJ N
)DDN O
)DDO P
;DDP Q 
EmailConfirmationUrlEE $
=EE% &
UrlEE' *
.EE* +
PageEE+ /
(EE/ 0
$strFF +
,FF+ ,
pageHandlerGG 
:GG  
nullGG! %
,GG% &
valuesHH 
:HH 
newHH 
{HH  !
areaHH" &
=HH' (
$strHH) 3
,HH3 4
userIdHH5 ;
=HH< =
userIdHH> D
,HHD E
codeHHF J
=HHK L
codeHHM Q
,HHQ R
	returnUrlHHS \
=HH] ^
	returnUrlHH_ h
}HHi j
,HHj k
protocolII 
:II 
RequestII %
.II% &
SchemeII& ,
)II, -
;II- .
}JJ 
returnLL 
PageLL 
(LL 
)LL 
;LL 
}MM 	
}NN 
}OO ·'
zD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\ResendEmailConfirmation.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{ 
[ 
AllowAnonymous 
] 
public 

class (
ResendEmailConfirmationModel -
:. /
	PageModel0 9
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public (
ResendEmailConfirmationModel +
(+ ,
UserManager, 7
<7 8
IdentityUser8 D
>D E
userManagerF Q
,Q R
IEmailSenderS _
emailSender` k
)k l
{ 	
_userManager 
= 
userManager &
;& '
_emailSender 
= 
emailSender &
;& '
} 	
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public** 
class** 

InputModel** 
{++ 	
[00 
Required00 
]00 
[11 
EmailAddress11 
]11 
public22 
string22 
Email22 
{22  !
get22" %
;22% &
set22' *
;22* +
}22, -
}33 	
public55 
void55 
OnGet55 
(55 
)55 
{66 	
}77 	
public99 
async99 
Task99 
<99 
IActionResult99 '
>99' (
OnPostAsync99) 4
(994 5
)995 6
{:: 	
if;; 
(;; 
!;; 

ModelState;; 
.;; 
IsValid;; #
);;# $
{<< 
return== 
Page== 
(== 
)== 
;== 
}>> 
var@@ 
user@@ 
=@@ 
await@@ 
_userManager@@ )
.@@) *
FindByEmailAsync@@* :
(@@: ;
Input@@; @
.@@@ A
Email@@A F
)@@F G
;@@G H
ifAA 
(AA 
userAA 
==AA 
nullAA 
)AA 
{BB 

ModelStateCC 
.CC 
AddModelErrorCC (
(CC( )
stringCC) /
.CC/ 0
EmptyCC0 5
,CC5 6
$strCC7 j
)CCj k
;CCk l
returnDD 
PageDD 
(DD 
)DD 
;DD 
}EE 
varGG 
userIdGG 
=GG 
awaitGG 
_userManagerGG +
.GG+ ,
GetUserIdAsyncGG, :
(GG: ;
userGG; ?
)GG? @
;GG@ A
varHH 
codeHH 
=HH 
awaitHH 
_userManagerHH )
.HH) */
#GenerateEmailConfirmationTokenAsyncHH* M
(HHM N
userHHN R
)HHR S
;HHS T
codeII 
=II 
WebEncodersII 
.II 
Base64UrlEncodeII .
(II. /
EncodingII/ 7
.II7 8
UTF8II8 <
.II< =
GetBytesII= E
(IIE F
codeIIF J
)IIJ K
)IIK L
;IIL M
varJJ 
callbackUrlJJ 
=JJ 
UrlJJ !
.JJ! "
PageJJ" &
(JJ& '
$strKK '
,KK' (
pageHandlerLL 
:LL 
nullLL !
,LL! "
valuesMM 
:MM 
newMM 
{MM 
userIdMM $
=MM% &
userIdMM' -
,MM- .
codeMM/ 3
=MM4 5
codeMM6 :
}MM; <
,MM< =
protocolNN 
:NN 
RequestNN !
.NN! "
SchemeNN" (
)NN( )
;NN) *
awaitOO 
_emailSenderOO 
.OO 
SendEmailAsyncOO -
(OO- .
InputPP 
.PP 
EmailPP 
,PP 
$strQQ $
,QQ$ %
$"RR 
$strRR :
{RR: ;
HtmlEncoderRR; F
.RRF G
DefaultRRG N
.RRN O
EncodeRRO U
(RRU V
callbackUrlRRV a
)RRa b
}RRb c
$strRRc w
"RRw x
)RRx y
;RRy z

ModelStateTT 
.TT 
AddModelErrorTT $
(TT$ %
stringTT% +
.TT+ ,
EmptyTT, 1
,TT1 2
$strTT3 f
)TTf g
;TTg h
returnUU 
PageUU 
(UU 
)UU 
;UU 
}VV 	
}WW 
}XX ˇ-
pD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\ResetPassword.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{ 
public 

class 
ResetPasswordModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
ResetPasswordModel !
(! "
UserManager" -
<- .
IdentityUser. :
>: ;
userManager< G
)G H
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public%% 
class%% 

InputModel%% 
{&& 	
[++ 
Required++ 
]++ 
[,, 
EmailAddress,, 
],, 
public-- 
string-- 
Email-- 
{--  !
get--" %
;--% &
set--' *
;--* +
}--, -
[33 
Required33 
]33 
[44 
StringLength44 
(44 
$num44 
,44 
ErrorMessage44 +
=44, -
$str44. l
,44l m
MinimumLength44n {
=44| }
$num44~ 
)	44 Ä
]
44Ä Å
[55 
DataType55 
(55 
DataType55 
.55 
Password55 '
)55' (
]55( )
public66 
string66 
Password66 "
{66# $
get66% (
;66( )
set66* -
;66- .
}66/ 0
[<< 
DataType<< 
(<< 
DataType<< 
.<< 
Password<< '
)<<' (
]<<( )
[== 
Display== 
(== 
Name== 
=== 
$str== .
)==. /
]==/ 0
[>> 
Compare>> 
(>> 
$str>> 
,>>  
ErrorMessage>>! -
=>>. /
$str>>0 f
)>>f g
]>>g h
public?? 
string?? 
ConfirmPassword?? )
{??* +
get??, /
;??/ 0
set??1 4
;??4 5
}??6 7
[EE 
RequiredEE 
]EE 
publicFF 
stringFF 
CodeFF 
{FF  
getFF! $
;FF$ %
setFF& )
;FF) *
}FF+ ,
}HH 	
publicJJ 
IActionResultJJ 
OnGetJJ "
(JJ" #
stringJJ# )
codeJJ* .
=JJ/ 0
nullJJ1 5
)JJ5 6
{KK 	
ifLL 
(LL 
codeLL 
==LL 
nullLL 
)LL 
{MM 
returnNN 

BadRequestNN !
(NN! "
$strNN" O
)NNO P
;NNP Q
}OO 
elsePP 
{QQ 
InputRR 
=RR 
newRR 

InputModelRR &
{SS 
CodeTT 
=TT 
EncodingTT #
.TT# $
UTF8TT$ (
.TT( )
	GetStringTT) 2
(TT2 3
WebEncodersTT3 >
.TT> ?
Base64UrlDecodeTT? N
(TTN O
codeTTO S
)TTS T
)TTT U
}UU 
;UU 
returnVV 
PageVV 
(VV 
)VV 
;VV 
}WW 
}XX 	
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
IActionResultZZ '
>ZZ' (
OnPostAsyncZZ) 4
(ZZ4 5
)ZZ5 6
{[[ 	
if\\ 
(\\ 
!\\ 

ModelState\\ 
.\\ 
IsValid\\ #
)\\# $
{]] 
return^^ 
Page^^ 
(^^ 
)^^ 
;^^ 
}__ 
varaa 
useraa 
=aa 
awaitaa 
_userManageraa )
.aa) *
FindByEmailAsyncaa* :
(aa: ;
Inputaa; @
.aa@ A
EmailaaA F
)aaF G
;aaG H
ifbb 
(bb 
userbb 
==bb 
nullbb 
)bb 
{cc 
returnee 
RedirectToPageee %
(ee% &
$stree& C
)eeC D
;eeD E
}ff 
varhh 
resulthh 
=hh 
awaithh 
_userManagerhh +
.hh+ ,
ResetPasswordAsynchh, >
(hh> ?
userhh? C
,hhC D
InputhhE J
.hhJ K
CodehhK O
,hhO P
InputhhQ V
.hhV W
PasswordhhW _
)hh_ `
;hh` a
ifii 
(ii 
resultii 
.ii 
	Succeededii  
)ii  !
{jj 
returnkk 
RedirectToPagekk %
(kk% &
$strkk& C
)kkC D
;kkD E
}ll 
foreachnn 
(nn 
varnn 
errornn 
innn !
resultnn" (
.nn( )
Errorsnn) /
)nn/ 0
{oo 

ModelStatepp 
.pp 
AddModelErrorpp (
(pp( )
stringpp) /
.pp/ 0
Emptypp0 5
,pp5 6
errorpp7 <
.pp< =
Descriptionpp= H
)ppH I
;ppI J
}qq 
returnrr 
Pagerr 
(rr 
)rr 
;rr 
}ss 	
}tt 
}uu ü
|D:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Account\ResetPasswordConfirmation.cshtml.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Areas !
.! "
Identity" *
.* +
Pages+ 0
.0 1
Account1 8
{		 
[ 
AllowAnonymous 
] 
public 

class *
ResetPasswordConfirmationModel /
:0 1
	PageModel2 ;
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} á
`D:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Areas\Identity\Pages\Error.cshtml.cs
	namespace

 	
Shopping_Mall_MVC


 
.

 
Areas

 !
.

! "
Identity

" *
.

* +
Pages

+ 0
{ 
[ 
AllowAnonymous 
] 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
public 

class 

ErrorModel 
: 
	PageModel '
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
public$$ 
void$$ 
OnGet$$ 
($$ 
)$$ 
{%% 	
	RequestId&& 
=&& 
Activity&&  
.&&  !
Current&&! (
?&&( )
.&&) *
Id&&* ,
??&&- /
HttpContext&&0 ;
.&&; <
TraceIdentifier&&< K
;&&K L
}'' 	
}(( 
})) ∏2
\D:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Controllers\AccountController.cs
	namespace

 	
Shopping_Mall_MVC


 
.

 
Controllers

 '
{ 
[ 
	Authorize 
( 
policy 
: 
$str $
)$ %
]% &
public 

class 
AccountController "
:# $

Controller% /
{ 
private 
readonly  
ApplicationDbContext -
_adminContext. ;
;; <
private 
readonly 
UserManager $
<$ %
CustomFields% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
RoleManager $
<$ %
IdentityRole% 1
>1 2
_roleManager3 ?
;? @
private 
List 
< 
	AdminRole 
> 
	adminrole  )
=) *
new* -
List. 2
<2 3
	AdminRole3 <
>< =
(= >
)> ?
;? @
public 
AccountController  
(  ! 
ApplicationDbContext! 5
adminContext6 B
,B C
UserManagerD O
<O P
CustomFieldsP \
>\ ]
userManager^ i
,i j
RoleManagerk v
<v w
IdentityRole	w É
>
É Ñ
roleManager
Ö ê
)
ê ë
{ 	
_adminContext 
= 
adminContext (
;( )
_userManager 
= 
userManager &
;& '
_roleManager 
= 
roleManager &
;& '
} 	
public 
IActionResult 
RegisterdPage *
(* +
)+ ,
{ 	
return   
View   
(   
)   
;   
}!! 	
public"" 
IActionResult"" 
Index"" "
(""" #
)""# $
{## 	
if$$ 
($$ 
_adminContext$$ 
.$$ 
Register$$ &
==$$' )
null$$* .
)$$. /
{%% 
return&& 
NotFound&& 
(&&  
)&&  !
;&&! "
}'' 
List(( 
<(( 
	AdminRole(( 
>(( 
admins(( "
=((# $
new((% (
List(() -
<((- .
	AdminRole((. 7
>((7 8
(((8 9
)((9 :
;((: ;
admins)) 
=)) 
_adminContext)) "
.))" #
Register))# +
.))+ ,
ToList)), 2
())2 3
)))3 4
;))4 5
if** 
(** 
admins** 
==** 
null** 
)** 
{++ 
return,, 
NotFound,, 
(,,  
),,  !
;,,! "
}-- 
return.. 
View.. 
(.. 
admins.. 
).. 
;..  
}// 	
[00 	
HttpPost00	 
]00 
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Simple11) /
(11/ 0
int110 3
id114 6
)116 7
{22 	
var33 
data33 
=33 
_adminContext33 $
.33$ %
Register33% -
.33- .
Find33. 2
(332 3
id333 5
)335 6
;336 7
if44 
(44 
data44 
==44 
null44 
)44 
{55 
return66 
	NoContent66  
(66  !
)66! "
;66" #
}77 
var99 
user99 
=99 
new99 
CustomFields99 '
(99' (
)99( )
{:: 
Email;; 
=;; 
data;; 
.;; 
Email;; "
,;;" #
Panno<< 
=<< 
data<< 
.<< 
Panno<< "
,<<" #
UserName== 
=== 
data== 
.== 
Email== #
}>> 
;>> 
var?? 
roles?? 
=?? 
_roleManager?? $
.??$ %
FindByNameAsync??% 4
(??4 5
data??5 9
.??9 :
Rolename??: B
)??B C
.??C D
Result??D J
;??J K
await@@ 
_userManager@@ 
.@@ 
CreateAsync@@ *
(@@* +
user@@+ /
,@@/ 0
data@@1 5
.@@5 6
Password@@6 >
)@@> ?
;@@? @
awaitAA 
_userManagerAA 
.AA 
AddToRoleAsyncAA -
(AA- .
userAA. 2
,AA2 3
rolesAA4 9
.AA9 :
NameAA: >
)AA> ?
;AA? @
_adminContextBB 
.BB 
RegisterBB "
.BB" #
RemoveBB# )
(BB) *
dataBB* .
)BB. /
;BB/ 0
_adminContextCC 
.CC 
SaveChangesCC %
(CC% &
)CC& '
;CC' (
returnDD 
JsonDD 
(DD 
$strDD !
)DD! "
;DD" #
}FF 	
[GG 	
HttpPostGG	 
]GG 
publicHH 
IActionResultHH 
rejectedHH %
(HH% &
intHH& )
idHH* ,
)HH, -
{II 	
varJJ 
detailsJJ 
=JJ 
_adminContextJJ '
.JJ' (
RegisterJJ( 0
.JJ0 1
FindJJ1 5
(JJ5 6
idJJ6 8
)JJ8 9
;JJ9 :
ifKK 
(KK 
detailsKK 
==KK 
nullKK 
)KK  
{LL 
returnMM 
NotFoundMM 
(MM  
)MM  !
;MM! "
}NN 
_adminContextOO 
.OO 
RegisterOO "
.OO" #
RemoveOO# )
(OO) *
detailsOO* 1
)OO1 2
;OO2 3
_adminContextPP 
.PP 
SaveChangesPP %
(PP% &
)PP& '
;PP' (
returnQQ 
JsonQQ 
(QQ 
$strQQ "
)QQ" #
;QQ# $
}SS 	
}TT 
}UU ˚
YD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Controllers\HomeController.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Controllers '
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private		 
readonly		 
ILogger		  
<		  !
HomeController		! /
>		/ 0
_logger		1 8
;		8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
new 
ErrorViewModel *
{+ ,
	RequestId- 6
=7 8
Activity9 A
.A B
CurrentB I
?I J
.J K
IdK M
??N P
HttpContextQ \
.\ ]
TraceIdentifier] l
}m n
)n o
;o p
} 	
} 
}   ˙
YD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Controllers\RoleController.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Controllers '
{ 
[ 
	Authorize 
( 
policy 
: 
$str $
)$ %
]% &
public 

class 
RoleController 
:  !

Controller" ,
{		 
private

 
RoleManager

 
<

 
IdentityRole

 (
>

( )
_roleManager

* 6
;

6 7
public 
RoleController 
( 
RoleManager )
<) *
IdentityRole* 6
>6 7
roleManager8 C
)C D
{ 	
_roleManager 
= 
roleManager &
;& '
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
var 
role 
= 
_roleManager #
.# $
Roles$ )
.) *
ToList* 0
(0 1
)1 2
;2 3
return 
View 
( 
role 
) 
; 
} 	
public 
IActionResult 
Create #
(# $
)$ %
{ 	
return 
View 
( 
new 
IdentityRole (
(( )
)) *
)* +
;+ ,
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Create) /
(/ 0
IdentityRole0 <
role= A
)A B
{ 	
await 
_roleManager 
. 
CreateAsync *
(* +
role+ /
)/ 0
;0 1
return 
RedirectToAction #
(# $
$str$ +
)+ ,
;, -
} 	
}   
}!! ©K
YD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Controllers\ShopController.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Controllers '
{		 
[

 
	Authorize

 
]

 
public 

class 
ShopController 
:  !

Controller" ,
{ 
Uri 
baseuri 
= 
new 
Uri 
( 
$str :
): ;
;; <

HttpClient 
client 
= 
new 

HttpClient  *
(* +
)+ ,
;, -
List 
< 
Mall 
> 
malls 
= 
new 
List #
<# $
Mall$ (
>( )
() *
)* +
;+ ,
public 
ShopController 
( 
)  
{ 	
client 
. 
BaseAddress 
=  
baseuri! (
;( )
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
client 
. 
BaseAddress 
=  
baseuri! (
;( )
HttpResponseMessage 
response  (
=) *
client+ 1
.1 2
GetAsync2 :
(: ;
baseuri; B
+C D
$strE L
)L M
.M N
ResultN T
;T U
string 
data 
= 
response "
." #
Content# *
.* +
ReadAsStringAsync+ <
(< =
)= >
.> ?
Result? E
;E F
malls   
=   
JsonConvert   
.    
DeserializeObject    1
<  1 2
List  2 6
<  6 7
Mall  7 ;
>  ; <
>  < =
(  = >
data  > B
)  B C
;  C D
var!! 
result!! 
=!! 
malls!! 
.!! 
OrderByDescending!! 0
(!!0 1
e!!1 2
=>!!3 5
e!!6 7
.!!7 8
Year!!8 <
)!!< =
.!!= >
ThenBy!!> D
(!!D E
e!!E F
=>!!G I
e!!J K
.!!K L
Name!!L P
)!!P Q
;!!Q R
return"" 
View"" 
("" 
result"" 
)"" 
;""  
}## 	
[$$ 	
	Authorize$$	 
($$ 
policy$$ 
:$$ 
$str$$ (
)$$( )
]$$) *
public%% 
IActionResult%% 
Create%% #
(%%# $
)%%$ %
{&& 	
return'' 
View'' 
('' 
)'' 
;'' 
}(( 	
[)) 	
HttpPost))	 
])) 
[** 	$
ValidateAntiForgeryToken**	 !
]**! "
public++ 
ActionResult++ 
Add++ 
(++  
Mall++  $
mall++% )
)++) *
{,, 	
using-- 
(-- 
var-- 
client-- 
=-- 
new--  #

HttpClient--$ .
(--. /
)--/ 0
)--0 1
{.. 
client// 
.// 
BaseAddress// "
=//# $
new//% (
Uri//) ,
(//, -
$str//- N
)//N O
;//O P
var00 
postTask00 
=00 
client00 %
.00% &
PostAsJsonAsync00& 5
<005 6
Mall006 :
>00: ;
(00; <
$str00< B
,00B C
mall00D H
)00H I
;00I J
postTask11 
.11 
Wait11 
(11 
)11 
;11  
var22 
result22 
=22 
postTask22 %
.22% &
Result22& ,
;22, -
if33 
(33 
result33 
.33 
IsSuccessStatusCode33 .
)33. /
{44 
return55 
RedirectToAction55 +
(55+ ,
$str55, 3
)553 4
;554 5
}66 
}77 

ModelState88 
.88 
AddModelError88 $
(88$ %
string88% +
.88+ ,
Empty88, 1
,881 2
$str883 A
)88A B
;88B C
return99 
View99 
(99 
)99 
;99 
}:: 	
[;; 	
	Authorize;;	 
(;; 
policy;; 
:;; 
$str;; (
);;( )
];;) *
public<< 
IActionResult<< 
Edit<< !
(<<! "
int<<" %
id<<& (
)<<( )
{== 	
client>> 
.>> 
BaseAddress>> 
=>>  
baseuri>>! (
;>>( )
HttpResponseMessage?? 
response??  (
=??) *
client??+ 1
.??1 2
GetAsync??2 :
(??: ;
baseuri??; B
+??C D
$str??E L
)??L M
.??M N
Result??N T
;??T U
string@@ 
data@@ 
=@@ 
response@@ "
.@@" #
Content@@# *
.@@* +
ReadAsStringAsync@@+ <
(@@< =
)@@= >
.@@> ?
Result@@? E
;@@E F
mallsAA 
=AA 
JsonConvertAA 
.AA  
DeserializeObjectAA  1
<AA1 2
ListAA2 6
<AA6 7
MallAA7 ;
>AA; <
>AA< =
(AA= >
dataAA> B
)AAB C
;AAC D
varBB 
malBB 
=BB 
mallsBB 
.BB 
WhereBB !
(BB! "
eBB" #
=>BB$ &
eBB' (
.BB( )
IdBB) +
==BB, .
idBB/ 1
)BB1 2
.BB2 3
FirstOrDefaultBB3 A
(BBA B
)BBB C
;BBC D
returnCC 
ViewCC 
(CC 
malCC 
)CC 
;CC 
}DD 	
[EE 	
HttpPostEE	 
]EE 
[FF 	$
ValidateAntiForgeryTokenFF	 !
]FF! "
publicGG 
IActionResultGG 
SaveGG !
(GG! "
MallGG" &
mallGG' +
)GG+ ,
{HH 	
usingII 
(II 
varII 
clientII 
=II 
newII  #

HttpClientII$ .
(II. /
)II/ 0
)II0 1
{JJ 
clientKK 
.KK 
BaseAddressKK "
=KK# $
newKK% (
UriKK) ,
(KK, -
$strKK- J
)KKJ K
;KKK L
varLL 
putLL 
=LL 
clientLL  
.LL  !
PutAsJsonAsyncLL! /
(LL/ 0
$"LL0 2
$strLL2 :
{LL: ;
mallLL; ?
.LL? @
IdLL@ B
}LLB C
"LLC D
,LLD E
mallLLF J
)LLJ K
;LLK L
putMM 
.MM 
WaitMM 
(MM 
)MM 
;MM 
varNN 
resultNN 
=NN 
putNN  
.NN  !
ResultNN! '
;NN' (
ifOO 
(OO 
resultOO 
.OO 
IsSuccessStatusCodeOO .
)OO. /
{PP 
returnQQ 
RedirectToActionQQ +
(QQ+ ,
$strQQ, 3
)QQ3 4
;QQ4 5
}RR 
}TT 

ModelStateUU 
.UU 
AddModelErrorUU $
(UU$ %
stringUU% +
.UU+ ,
EmptyUU, 1
,UU1 2
$strUU3 A
)UUA B
;UUB C
returnVV 
ViewVV 
(VV 
)VV 
;VV 
}XX 	
[YY 	
	AuthorizeYY	 
(YY 
policyYY 
:YY 
$strYY (
)YY( )
]YY) *
publicZZ 
ActionResultZZ 
DeleteZZ "
(ZZ" #
intZZ# &
idZZ' )
)ZZ) *
{[[ 	
using\\ 
(\\ 
var\\ 
client\\ 
=\\ 
new\\  #

HttpClient\\$ .
(\\. /
)\\/ 0
)\\0 1
{]] 
client^^ 
.^^ 
BaseAddress^^ "
=^^# $
new^^% (
Uri^^) ,
(^^, -
$str^^- J
)^^J K
;^^K L
var__ 
put__ 
=__ 
client__  
.__  !
DeleteAsync__! ,
(__, -
$"__- /
$str__/ 4
{__4 5
id__5 7
}__7 8
"__8 9
)__9 :
;__: ;
put`` 
.`` 
Wait`` 
(`` 
)`` 
;`` 
varaa 
resultaa 
=aa 
putaa  
.aa  !
Resultaa! '
;aa' (
ifbb 
(bb 
resultbb 
.bb 
IsSuccessStatusCodebb .
)bb. /
{cc 
returndd 
RedirectToActiondd +
(dd+ ,
$strdd, 3
)dd3 4
;dd4 5
}ee 
}gg 

ModelStatehh 
.hh 
AddModelErrorhh $
(hh$ %
stringhh% +
.hh+ ,
Emptyhh, 1
,hh1 2
$strhh3 A
)hhA B
;hhB C
returnii 
Viewii 
(ii 
)ii 
;ii 
}jj 	
}kk 
}ll Í
XD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Data\ApplicationDbContext.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Data  
{ 
public		 

class		  
ApplicationDbContext		 %
:		& '
IdentityDbContext		( 9
<		9 :
CustomFields		: F
>		F G
{

 
public  
ApplicationDbContext #
(# $
DbContextOptions$ 4
<4 5 
ApplicationDbContext5 I
>I J
optionsK R
)R S
: 
base 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< 
	AdminRole 
> 
Register  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
UseSqlServer '
(' (
$str( o
)o p
;p q
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
Entity 
<  
	AdminRole  )
>) *
(* +
)+ ,
., -
HasIndex- 5
(5 6
u6 7
=>8 :
u; <
.< =
Email= B
)B C
.C D
IsUniqueD L
(L M
)M N
;N O
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /-
!AplicationUserEntityConfiguration0 Q
(Q R
)R S
)S T
;T U
} 	
public 
class -
!AplicationUserEntityConfiguration 6
:7 8$
IEntityTypeConfiguration9 Q
<Q R
CustomFieldsR ^
>^ _
{   	
public!! 
void!! 
	Configure!! !
(!!! "
EntityTypeBuilder!!" 3
<!!3 4
CustomFields!!4 @
>!!@ A
builder!!B I
)!!I J
{"" 
builder## 
.## 
Property##  
(##  !
p##! "
=>### %
p##& '
.##' (
Panno##( -
)##- .
.##. /
HasMaxLength##/ ;
(##; <
$num##< >
)##> ?
;##? @
}$$ 
}&& 	
}'' 
}(( ¢Â
aD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Migrations\20220828113148_shopping.cs
	namespace 	
Shopping_Mall_MVC
 
. 

Migrations &
{ 
public 

partial 
class 
shopping !
:" #
	Migration$ -
{		 
	protected

 
override

 
void

 
Up

  "
(

" #
MigrationBuilder

# 3
migrationBuilder

4 D
)

D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
	maxLengthG P
:P Q
$numR U
,U V
nullableW _
:_ `
truea e
)e f
,f g
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
	maxLengthQ Z
:Z [
$num\ _
,_ `
nullablea i
:i j
truek o
)o p
,p q
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB Q
,Q R
nullableS [
:[ \
true] a
)a b
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
Panno 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 E
,E F
	maxLengthG P
:P Q
$numR T
,T U
nullableV ^
:^ _
false` e
)e f
,f g
UserName   
=   
table   $
.  $ %
Column  % +
<  + ,
string  , 2
>  2 3
(  3 4
type  4 8
:  8 9
$str  : I
,  I J
	maxLength  K T
:  T U
$num  V Y
,  Y Z
nullable  [ c
:  c d
true  e i
)  i j
,  j k
NormalizedUserName!! &
=!!' (
table!!) .
.!!. /
Column!!/ 5
<!!5 6
string!!6 <
>!!< =
(!!= >
type!!> B
:!!B C
$str!!D S
,!!S T
	maxLength!!U ^
:!!^ _
$num!!` c
,!!c d
nullable!!e m
:!!m n
true!!o s
)!!s t
,!!t u
Email"" 
="" 
table"" !
.""! "
Column""" (
<""( )
string"") /
>""/ 0
(""0 1
type""1 5
:""5 6
$str""7 F
,""F G
	maxLength""H Q
:""Q R
$num""S V
,""V W
nullable""X `
:""` a
true""b f
)""f g
,""g h
NormalizedEmail## #
=##$ %
table##& +
.##+ ,
Column##, 2
<##2 3
string##3 9
>##9 :
(##: ;
type##; ?
:##? @
$str##A P
,##P Q
	maxLength##R [
:##[ \
$num##] `
,##` a
nullable##b j
:##j k
true##l p
)##p q
,##q r
EmailConfirmed$$ "
=$$# $
table$$% *
.$$* +
Column$$+ 1
<$$1 2
bool$$2 6
>$$6 7
($$7 8
type$$8 <
:$$< =
$str$$> C
,$$C D
nullable$$E M
:$$M N
false$$O T
)$$T U
,$$U V
PasswordHash%%  
=%%! "
table%%# (
.%%( )
Column%%) /
<%%/ 0
string%%0 6
>%%6 7
(%%7 8
type%%8 <
:%%< =
$str%%> M
,%%M N
nullable%%O W
:%%W X
true%%Y ]
)%%] ^
,%%^ _
SecurityStamp&& !
=&&" #
table&&$ )
.&&) *
Column&&* 0
<&&0 1
string&&1 7
>&&7 8
(&&8 9
type&&9 =
:&&= >
$str&&? N
,&&N O
nullable&&P X
:&&X Y
true&&Z ^
)&&^ _
,&&_ `
ConcurrencyStamp'' $
=''% &
table''' ,
.'', -
Column''- 3
<''3 4
string''4 :
>'': ;
(''; <
type''< @
:''@ A
$str''B Q
,''Q R
nullable''S [
:''[ \
true''] a
)''a b
,''b c
PhoneNumber(( 
=((  !
table((" '
.((' (
Column((( .
<((. /
string((/ 5
>((5 6
(((6 7
type((7 ;
:((; <
$str((= L
,((L M
nullable((N V
:((V W
true((X \
)((\ ]
,((] ^ 
PhoneNumberConfirmed)) (
=))) *
table))+ 0
.))0 1
Column))1 7
<))7 8
bool))8 <
>))< =
())= >
type))> B
:))B C
$str))D I
,))I J
nullable))K S
:))S T
false))U Z
)))Z [
,))[ \
TwoFactorEnabled** $
=**% &
table**' ,
.**, -
Column**- 3
<**3 4
bool**4 8
>**8 9
(**9 :
type**: >
:**> ?
$str**@ E
,**E F
nullable**G O
:**O P
false**Q V
)**V W
,**W X

LockoutEnd++ 
=++  
table++! &
.++& '
Column++' -
<++- .
DateTimeOffset++. <
>++< =
(++= >
type++> B
:++B C
$str++D T
,++T U
nullable++V ^
:++^ _
true++` d
)++d e
,++e f
LockoutEnabled,, "
=,,# $
table,,% *
.,,* +
Column,,+ 1
<,,1 2
bool,,2 6
>,,6 7
(,,7 8
type,,8 <
:,,< =
$str,,> C
,,,C D
nullable,,E M
:,,M N
false,,O T
),,T U
,,,U V
AccessFailedCount-- %
=--& '
table--( -
.--- .
Column--. 4
<--4 5
int--5 8
>--8 9
(--9 :
type--: >
:--> ?
$str--@ E
,--E F
nullable--G O
:--O P
false--Q V
)--V W
}.. 
,.. 
constraints// 
:// 
table// "
=>//# %
{00 
table11 
.11 

PrimaryKey11 $
(11$ %
$str11% 5
,115 6
x117 8
=>119 ;
x11< =
.11= >
Id11> @
)11@ A
;11A B
}22 
)22 
;22 
migrationBuilder44 
.44 
CreateTable44 (
(44( )
name55 
:55 
$str55  
,55  !
columns66 
:66 
table66 
=>66 !
new66" %
{77 
Id88 
=88 
table88 
.88 
Column88 %
<88% &
int88& )
>88) *
(88* +
type88+ /
:88/ 0
$str881 6
,886 7
nullable888 @
:88@ A
false88B G
)88G H
.99 

Annotation99 #
(99# $
$str99$ 8
,998 9
$str99: @
)99@ A
,99A B
Email:: 
=:: 
table:: !
.::! "
Column::" (
<::( )
string::) /
>::/ 0
(::0 1
type::1 5
:::5 6
$str::7 E
,::E F
	maxLength::G P
:::P Q
$num::R T
,::T U
nullable::V ^
:::^ _
false::` e
)::e f
,::f g
Panno;; 
=;; 
table;; !
.;;! "
Column;;" (
<;;( )
string;;) /
>;;/ 0
(;;0 1
type;;1 5
:;;5 6
$str;;7 E
,;;E F
	maxLength;;G P
:;;P Q
$num;;R T
,;;T U
nullable;;V ^
:;;^ _
false;;` e
);;e f
,;;f g
Password<< 
=<< 
table<< $
.<<$ %
Column<<% +
<<<+ ,
string<<, 2
><<2 3
(<<3 4
type<<4 8
:<<8 9
$str<<: H
,<<H I
	maxLength<<J S
:<<S T
$num<<U W
,<<W X
nullable<<Y a
:<<a b
false<<c h
)<<h i
,<<i j
ConfirmPassword== #
===$ %
table==& +
.==+ ,
Column==, 2
<==2 3
string==3 9
>==9 :
(==: ;
type==; ?
:==? @
$str==A O
,==O P
	maxLength==Q Z
:==Z [
$num==\ ^
,==^ _
nullable==` h
:==h i
false==j o
)==o p
,==p q
Rolename>> 
=>> 
table>> $
.>>$ %
Column>>% +
<>>+ ,
string>>, 2
>>>2 3
(>>3 4
type>>4 8
:>>8 9
$str>>: I
,>>I J
nullable>>K S
:>>S T
true>>U Y
)>>Y Z
}?? 
,?? 
constraints@@ 
:@@ 
table@@ "
=>@@# %
{AA 
tableBB 
.BB 

PrimaryKeyBB $
(BB$ %
$strBB% 2
,BB2 3
xBB4 5
=>BB6 8
xBB9 :
.BB: ;
IdBB; =
)BB= >
;BB> ?
}CC 
)CC 
;CC 
migrationBuilderEE 
.EE 
CreateTableEE (
(EE( )
nameFF 
:FF 
$strFF (
,FF( )
columnsGG 
:GG 
tableGG 
=>GG !
newGG" %
{HH 
IdII 
=II 
tableII 
.II 
ColumnII %
<II% &
intII& )
>II) *
(II* +
typeII+ /
:II/ 0
$strII1 6
,II6 7
nullableII8 @
:II@ A
falseIIB G
)IIG H
.JJ 

AnnotationJJ #
(JJ# $
$strJJ$ 8
,JJ8 9
$strJJ: @
)JJ@ A
,JJA B
RoleIdKK 
=KK 
tableKK "
.KK" #
ColumnKK# )
<KK) *
stringKK* 0
>KK0 1
(KK1 2
typeKK2 6
:KK6 7
$strKK8 G
,KKG H
nullableKKI Q
:KKQ R
falseKKS X
)KKX Y
,KKY Z
	ClaimTypeLL 
=LL 
tableLL  %
.LL% &
ColumnLL& ,
<LL, -
stringLL- 3
>LL3 4
(LL4 5
typeLL5 9
:LL9 :
$strLL; J
,LLJ K
nullableLLL T
:LLT U
trueLLV Z
)LLZ [
,LL[ \

ClaimValueMM 
=MM  
tableMM! &
.MM& '
ColumnMM' -
<MM- .
stringMM. 4
>MM4 5
(MM5 6
typeMM6 :
:MM: ;
$strMM< K
,MMK L
nullableMMM U
:MMU V
trueMMW [
)MM[ \
}NN 
,NN 
constraintsOO 
:OO 
tableOO "
=>OO# %
{PP 
tableQQ 
.QQ 

PrimaryKeyQQ $
(QQ$ %
$strQQ% :
,QQ: ;
xQQ< =
=>QQ> @
xQQA B
.QQB C
IdQQC E
)QQE F
;QQF G
tableRR 
.RR 

ForeignKeyRR $
(RR$ %
nameSS 
:SS 
$strSS F
,SSF G
columnTT 
:TT 
xTT  !
=>TT" $
xTT% &
.TT& '
RoleIdTT' -
,TT- .
principalTableUU &
:UU& '
$strUU( 5
,UU5 6
principalColumnVV '
:VV' (
$strVV) -
,VV- .
onDeleteWW  
:WW  !
ReferentialActionWW" 3
.WW3 4
CascadeWW4 ;
)WW; <
;WW< =
}XX 
)XX 
;XX 
migrationBuilderZZ 
.ZZ 
CreateTableZZ (
(ZZ( )
name[[ 
:[[ 
$str[[ (
,[[( )
columns\\ 
:\\ 
table\\ 
=>\\ !
new\\" %
{]] 
Id^^ 
=^^ 
table^^ 
.^^ 
Column^^ %
<^^% &
int^^& )
>^^) *
(^^* +
type^^+ /
:^^/ 0
$str^^1 6
,^^6 7
nullable^^8 @
:^^@ A
false^^B G
)^^G H
.__ 

Annotation__ #
(__# $
$str__$ 8
,__8 9
$str__: @
)__@ A
,__A B
UserId`` 
=`` 
table`` "
.``" #
Column``# )
<``) *
string``* 0
>``0 1
(``1 2
type``2 6
:``6 7
$str``8 G
,``G H
nullable``I Q
:``Q R
false``S X
)``X Y
,``Y Z
	ClaimTypeaa 
=aa 
tableaa  %
.aa% &
Columnaa& ,
<aa, -
stringaa- 3
>aa3 4
(aa4 5
typeaa5 9
:aa9 :
$straa; J
,aaJ K
nullableaaL T
:aaT U
trueaaV Z
)aaZ [
,aa[ \

ClaimValuebb 
=bb  
tablebb! &
.bb& '
Columnbb' -
<bb- .
stringbb. 4
>bb4 5
(bb5 6
typebb6 :
:bb: ;
$strbb< K
,bbK L
nullablebbM U
:bbU V
truebbW [
)bb[ \
}cc 
,cc 
constraintsdd 
:dd 
tabledd "
=>dd# %
{ee 
tableff 
.ff 

PrimaryKeyff $
(ff$ %
$strff% :
,ff: ;
xff< =
=>ff> @
xffA B
.ffB C
IdffC E
)ffE F
;ffF G
tablegg 
.gg 

ForeignKeygg $
(gg$ %
namehh 
:hh 
$strhh F
,hhF G
columnii 
:ii 
xii  !
=>ii" $
xii% &
.ii& '
UserIdii' -
,ii- .
principalTablejj &
:jj& '
$strjj( 5
,jj5 6
principalColumnkk '
:kk' (
$strkk) -
,kk- .
onDeletell  
:ll  !
ReferentialActionll" 3
.ll3 4
Cascadell4 ;
)ll; <
;ll< =
}mm 
)mm 
;mm 
migrationBuilderoo 
.oo 
CreateTableoo (
(oo( )
namepp 
:pp 
$strpp (
,pp( )
columnsqq 
:qq 
tableqq 
=>qq !
newqq" %
{rr 
LoginProviderss !
=ss" #
tabless$ )
.ss) *
Columnss* 0
<ss0 1
stringss1 7
>ss7 8
(ss8 9
typess9 =
:ss= >
$strss? N
,ssN O
nullablessP X
:ssX Y
falsessZ _
)ss_ `
,ss` a
ProviderKeytt 
=tt  !
tablett" '
.tt' (
Columntt( .
<tt. /
stringtt/ 5
>tt5 6
(tt6 7
typett7 ;
:tt; <
$strtt= L
,ttL M
nullablettN V
:ttV W
falsettX ]
)tt] ^
,tt^ _
ProviderDisplayNameuu '
=uu( )
tableuu* /
.uu/ 0
Columnuu0 6
<uu6 7
stringuu7 =
>uu= >
(uu> ?
typeuu? C
:uuC D
$struuE T
,uuT U
nullableuuV ^
:uu^ _
trueuu` d
)uud e
,uue f
UserIdvv 
=vv 
tablevv "
.vv" #
Columnvv# )
<vv) *
stringvv* 0
>vv0 1
(vv1 2
typevv2 6
:vv6 7
$strvv8 G
,vvG H
nullablevvI Q
:vvQ R
falsevvS X
)vvX Y
}ww 
,ww 
constraintsxx 
:xx 
tablexx "
=>xx# %
{yy 
tablezz 
.zz 

PrimaryKeyzz $
(zz$ %
$strzz% :
,zz: ;
xzz< =
=>zz> @
newzzA D
{zzE F
xzzG H
.zzH I
LoginProviderzzI V
,zzV W
xzzX Y
.zzY Z
ProviderKeyzzZ e
}zzf g
)zzg h
;zzh i
table{{ 
.{{ 

ForeignKey{{ $
({{$ %
name|| 
:|| 
$str|| F
,||F G
column}} 
:}} 
x}}  !
=>}}" $
x}}% &
.}}& '
UserId}}' -
,}}- .
principalTable~~ &
:~~& '
$str~~( 5
,~~5 6
principalColumn '
:' (
$str) -
,- .
onDelete
ÄÄ  
:
ÄÄ  !
ReferentialAction
ÄÄ" 3
.
ÄÄ3 4
Cascade
ÄÄ4 ;
)
ÄÄ; <
;
ÄÄ< =
}
ÅÅ 
)
ÅÅ 
;
ÅÅ 
migrationBuilder
ÉÉ 
.
ÉÉ 
CreateTable
ÉÉ (
(
ÉÉ( )
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ '
,
ÑÑ' (
columns
ÖÖ 
:
ÖÖ 
table
ÖÖ 
=>
ÖÖ !
new
ÖÖ" %
{
ÜÜ 
UserId
áá 
=
áá 
table
áá "
.
áá" #
Column
áá# )
<
áá) *
string
áá* 0
>
áá0 1
(
áá1 2
type
áá2 6
:
áá6 7
$str
áá8 G
,
ááG H
nullable
ááI Q
:
ááQ R
false
ááS X
)
ááX Y
,
ááY Z
RoleId
àà 
=
àà 
table
àà "
.
àà" #
Column
àà# )
<
àà) *
string
àà* 0
>
àà0 1
(
àà1 2
type
àà2 6
:
àà6 7
$str
àà8 G
,
ààG H
nullable
ààI Q
:
ààQ R
false
ààS X
)
ààX Y
}
ââ 
,
ââ 
constraints
ää 
:
ää 
table
ää "
=>
ää# %
{
ãã 
table
åå 
.
åå 

PrimaryKey
åå $
(
åå$ %
$str
åå% 9
,
åå9 :
x
åå; <
=>
åå= ?
new
åå@ C
{
ååD E
x
ååF G
.
ååG H
UserId
ååH N
,
ååN O
x
ååP Q
.
ååQ R
RoleId
ååR X
}
ååY Z
)
ååZ [
;
åå[ \
table
çç 
.
çç 

ForeignKey
çç $
(
çç$ %
name
éé 
:
éé 
$str
éé E
,
ééE F
column
èè 
:
èè 
x
èè  !
=>
èè" $
x
èè% &
.
èè& '
RoleId
èè' -
,
èè- .
principalTable
êê &
:
êê& '
$str
êê( 5
,
êê5 6
principalColumn
ëë '
:
ëë' (
$str
ëë) -
,
ëë- .
onDelete
íí  
:
íí  !
ReferentialAction
íí" 3
.
íí3 4
Cascade
íí4 ;
)
íí; <
;
íí< =
table
ìì 
.
ìì 

ForeignKey
ìì $
(
ìì$ %
name
îî 
:
îî 
$str
îî E
,
îîE F
column
ïï 
:
ïï 
x
ïï  !
=>
ïï" $
x
ïï% &
.
ïï& '
UserId
ïï' -
,
ïï- .
principalTable
ññ &
:
ññ& '
$str
ññ( 5
,
ññ5 6
principalColumn
óó '
:
óó' (
$str
óó) -
,
óó- .
onDelete
òò  
:
òò  !
ReferentialAction
òò" 3
.
òò3 4
Cascade
òò4 ;
)
òò; <
;
òò< =
}
ôô 
)
ôô 
;
ôô 
migrationBuilder
õõ 
.
õõ 
CreateTable
õõ (
(
õõ( )
name
úú 
:
úú 
$str
úú (
,
úú( )
columns
ùù 
:
ùù 
table
ùù 
=>
ùù !
new
ùù" %
{
ûû 
UserId
üü 
=
üü 
table
üü "
.
üü" #
Column
üü# )
<
üü) *
string
üü* 0
>
üü0 1
(
üü1 2
type
üü2 6
:
üü6 7
$str
üü8 G
,
üüG H
nullable
üüI Q
:
üüQ R
false
üüS X
)
üüX Y
,
üüY Z
LoginProvider
†† !
=
††" #
table
††$ )
.
††) *
Column
††* 0
<
††0 1
string
††1 7
>
††7 8
(
††8 9
type
††9 =
:
††= >
$str
††? N
,
††N O
nullable
††P X
:
††X Y
false
††Z _
)
††_ `
,
††` a
Name
°° 
=
°° 
table
°°  
.
°°  !
Column
°°! '
<
°°' (
string
°°( .
>
°°. /
(
°°/ 0
type
°°0 4
:
°°4 5
$str
°°6 E
,
°°E F
nullable
°°G O
:
°°O P
false
°°Q V
)
°°V W
,
°°W X
Value
¢¢ 
=
¢¢ 
table
¢¢ !
.
¢¢! "
Column
¢¢" (
<
¢¢( )
string
¢¢) /
>
¢¢/ 0
(
¢¢0 1
type
¢¢1 5
:
¢¢5 6
$str
¢¢7 F
,
¢¢F G
nullable
¢¢H P
:
¢¢P Q
true
¢¢R V
)
¢¢V W
}
££ 
,
££ 
constraints
§§ 
:
§§ 
table
§§ "
=>
§§# %
{
•• 
table
¶¶ 
.
¶¶ 

PrimaryKey
¶¶ $
(
¶¶$ %
$str
¶¶% :
,
¶¶: ;
x
¶¶< =
=>
¶¶> @
new
¶¶A D
{
¶¶E F
x
¶¶G H
.
¶¶H I
UserId
¶¶I O
,
¶¶O P
x
¶¶Q R
.
¶¶R S
LoginProvider
¶¶S `
,
¶¶` a
x
¶¶b c
.
¶¶c d
Name
¶¶d h
}
¶¶i j
)
¶¶j k
;
¶¶k l
table
ßß 
.
ßß 

ForeignKey
ßß $
(
ßß$ %
name
®® 
:
®® 
$str
®® F
,
®®F G
column
©© 
:
©© 
x
©©  !
=>
©©" $
x
©©% &
.
©©& '
UserId
©©' -
,
©©- .
principalTable
™™ &
:
™™& '
$str
™™( 5
,
™™5 6
principalColumn
´´ '
:
´´' (
$str
´´) -
,
´´- .
onDelete
¨¨  
:
¨¨  !
ReferentialAction
¨¨" 3
.
¨¨3 4
Cascade
¨¨4 ;
)
¨¨; <
;
¨¨< =
}
≠≠ 
)
≠≠ 
;
≠≠ 
migrationBuilder
ØØ 
.
ØØ 
CreateIndex
ØØ (
(
ØØ( )
name
∞∞ 
:
∞∞ 
$str
∞∞ 2
,
∞∞2 3
table
±± 
:
±± 
$str
±± )
,
±±) *
column
≤≤ 
:
≤≤ 
$str
≤≤  
)
≤≤  !
;
≤≤! "
migrationBuilder
¥¥ 
.
¥¥ 
CreateIndex
¥¥ (
(
¥¥( )
name
µµ 
:
µµ 
$str
µµ %
,
µµ% &
table
∂∂ 
:
∂∂ 
$str
∂∂ $
,
∂∂$ %
column
∑∑ 
:
∑∑ 
$str
∑∑ (
,
∑∑( )
unique
∏∏ 
:
∏∏ 
true
∏∏ 
,
∏∏ 
filter
ππ 
:
ππ 
$str
ππ 6
)
ππ6 7
;
ππ7 8
migrationBuilder
ªª 
.
ªª 
CreateIndex
ªª (
(
ªª( )
name
ºº 
:
ºº 
$str
ºº 2
,
ºº2 3
table
ΩΩ 
:
ΩΩ 
$str
ΩΩ )
,
ΩΩ) *
column
ææ 
:
ææ 
$str
ææ  
)
ææ  !
;
ææ! "
migrationBuilder
¿¿ 
.
¿¿ 
CreateIndex
¿¿ (
(
¿¿( )
name
¡¡ 
:
¡¡ 
$str
¡¡ 2
,
¡¡2 3
table
¬¬ 
:
¬¬ 
$str
¬¬ )
,
¬¬) *
column
√√ 
:
√√ 
$str
√√  
)
√√  !
;
√√! "
migrationBuilder
≈≈ 
.
≈≈ 
CreateIndex
≈≈ (
(
≈≈( )
name
∆∆ 
:
∆∆ 
$str
∆∆ 1
,
∆∆1 2
table
«« 
:
«« 
$str
«« (
,
««( )
column
»» 
:
»» 
$str
»»  
)
»»  !
;
»»! "
migrationBuilder
   
.
   
CreateIndex
   (
(
  ( )
name
ÀÀ 
:
ÀÀ 
$str
ÀÀ "
,
ÀÀ" #
table
ÃÃ 
:
ÃÃ 
$str
ÃÃ $
,
ÃÃ$ %
column
ÕÕ 
:
ÕÕ 
$str
ÕÕ )
)
ÕÕ) *
;
ÕÕ* +
migrationBuilder
œœ 
.
œœ 
CreateIndex
œœ (
(
œœ( )
name
–– 
:
–– 
$str
–– %
,
––% &
table
—— 
:
—— 
$str
—— $
,
——$ %
column
““ 
:
““ 
$str
““ ,
,
““, -
unique
”” 
:
”” 
true
”” 
,
”” 
filter
‘‘ 
:
‘‘ 
$str
‘‘ :
)
‘‘: ;
;
‘‘; <
migrationBuilder
÷÷ 
.
÷÷ 
CreateIndex
÷÷ (
(
÷÷( )
name
◊◊ 
:
◊◊ 
$str
◊◊ )
,
◊◊) *
table
ÿÿ 
:
ÿÿ 
$str
ÿÿ !
,
ÿÿ! "
column
ŸŸ 
:
ŸŸ 
$str
ŸŸ 
,
ŸŸ  
unique
⁄⁄ 
:
⁄⁄ 
true
⁄⁄ 
)
⁄⁄ 
;
⁄⁄ 
}
€€ 	
	protected
›› 
override
›› 
void
›› 
Down
››  $
(
››$ %
MigrationBuilder
››% 5
migrationBuilder
››6 F
)
››F G
{
ﬁﬁ 	
migrationBuilder
ﬂﬂ 
.
ﬂﬂ 
	DropTable
ﬂﬂ &
(
ﬂﬂ& '
name
‡‡ 
:
‡‡ 
$str
‡‡ (
)
‡‡( )
;
‡‡) *
migrationBuilder
‚‚ 
.
‚‚ 
	DropTable
‚‚ &
(
‚‚& '
name
„„ 
:
„„ 
$str
„„ (
)
„„( )
;
„„) *
migrationBuilder
ÂÂ 
.
ÂÂ 
	DropTable
ÂÂ &
(
ÂÂ& '
name
ÊÊ 
:
ÊÊ 
$str
ÊÊ (
)
ÊÊ( )
;
ÊÊ) *
migrationBuilder
ËË 
.
ËË 
	DropTable
ËË &
(
ËË& '
name
ÈÈ 
:
ÈÈ 
$str
ÈÈ '
)
ÈÈ' (
;
ÈÈ( )
migrationBuilder
ÎÎ 
.
ÎÎ 
	DropTable
ÎÎ &
(
ÎÎ& '
name
ÏÏ 
:
ÏÏ 
$str
ÏÏ (
)
ÏÏ( )
;
ÏÏ) *
migrationBuilder
ÓÓ 
.
ÓÓ 
	DropTable
ÓÓ &
(
ÓÓ& '
name
ÔÔ 
:
ÔÔ 
$str
ÔÔ  
)
ÔÔ  !
;
ÔÔ! "
migrationBuilder
ÒÒ 
.
ÒÒ 
	DropTable
ÒÒ &
(
ÒÒ& '
name
ÚÚ 
:
ÚÚ 
$str
ÚÚ #
)
ÚÚ# $
;
ÚÚ$ %
migrationBuilder
ÙÙ 
.
ÙÙ 
	DropTable
ÙÙ &
(
ÙÙ& '
name
ıı 
:
ıı 
$str
ıı #
)
ıı# $
;
ıı$ %
}
ˆˆ 	
}
˜˜ 
}¯¯ Î
OD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Models\AdminRole.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Models "
{ 
public 

class 
	AdminRole 
{ 
internal 
bool 

IsApproved  
;  !
[		 	
Key			 
]		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
? 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
? 
Panno 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
? 
Password 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
? 
ConfirmPassword &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
? 
Rolename 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} Ã
JD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Models\Auto.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Models "
{ 
public 

class 
Auto 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Required	 
] 
[		 	
	MaxLength			 
(		 
$num		 
,		 
ErrorMessage		 #
=		$ %
$str		& Q
)		Q R
]		R S
public

 
string

 
?

 
Name

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& Q
)Q R
]R S
public 
string 
? 
City 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& Q
)Q R
]R S
public 
string 
? 
State 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
public 
int 
? 
Year 
{ 
get 
; 
set  #
;# $
}% &
[ 	
Display	 
( 
Name 
= 
$str 
)  
]  !
public 
string 
? 
Mallimg 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ˇ
RD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Models\CustomFields.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Models "
{ 
public 

class 
CustomFields 
: 
IdentityUser *
{ 
[ 	
Required	 
] 
[		 	
	MaxLength			 
(		 
$num		 
)		 
]		 
public

 
string

 
Panno

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
} ∂
TD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Models\ErrorViewModel.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Models "
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
? 
	RequestId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
} 
}		 ˚
JD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Models\Mall.cs
	namespace 	
Shopping_Mall_MVC
 
. 
Models "
{ 
public 

class 
Mall 
{ 
[ 	
Key	 
] 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
[

 	
Required

	 
]

 
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& Q
)Q R
]R S
public 
string 
? 
Name 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& Q
)Q R
]R S
public 
string 
? 
City 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& Q
)Q R
]R S
public 
string 
? 
State 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
public 
int 
? 
Year 
{ 
get 
; 
set  #
;# $
}% &
[ 	
Display	 
( 
Name 
= 
$str 
)  
]  !
public 
string 
? 
Mallimg 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Í"
FD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
var		 
connectionString		 
=		 
builder		 
.		 
Configuration		 ,
.		, -
GetConnectionString		- @
(		@ A
$str		A T
)		T U
;		U V
builder

 
.

 
Services

 
.

 
AddDbContext

 
<

  
ApplicationDbContext

 2
>

2 3
(

3 4
options

4 ;
=>

< >
options 
. 
UseSqlServer 
( 
connectionString )
)) *
)* +
;+ ,
builder 
. 
Services 
. 3
'AddDatabaseDeveloperPageExceptionFilter 8
(8 9
)9 :
;: ;
builder 
. 
Services 
. 
AddIdentity 
< 
CustomFields )
,) *
IdentityRole+ 7
>7 8
(8 9
options9 @
=>A C
optionsD K
.K L
SignInL R
.R S#
RequireConfirmedAccountS j
=k l
falsem r
)r s
. 
AddDefaultUI 
( 
) 
. $
AddEntityFrameworkStores ,
<, - 
ApplicationDbContext- A
>A B
(B C
)C D
;D E
builder 
. 
Services 
. #
AddControllersWithViews (
(( )
)) *
;* +
builder 
. 
Services 
. 
	AddScoped 
<  
ApplicationDbContext /
>/ 0
(0 1
)1 2
;2 3
builder 
. 
Services 
. 
AddAuthorization !
(! "
options" )
=>* ,
{ 
options 
. 
	AddPolicy 
( 
$str &
,& '
builder 
=> 
builder 
. 
RequireRole &
(& '
$str' -
)- .
). /
;/ 0
options 
. 
	AddPolicy 
( 
$str #
,# $
builder 
=> 
builder 
. 
RequireRole &
(& '
$str' .
). /
)/ 0
;0 1
} 
) 
; 
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if   
(   
app   
.   
Environment   
.   
IsDevelopment   !
(  ! "
)  " #
)  # $
{!! 
app"" 
."" !
UseMigrationsEndPoint"" 
("" 
)"" 
;""  
}## 
else$$ 
{%% 
app&& 
.&& 
UseExceptionHandler&& 
(&& 
$str&& )
)&&) *
;&&* +
app(( 
.(( 
UseHsts(( 
((( 
)(( 
;(( 
})) 
app++ 
.++ 
UseHttpsRedirection++ 
(++ 
)++ 
;++ 
app,, 
.,, 
UseStaticFiles,, 
(,, 
),, 
;,, 
app.. 
... 

UseRouting.. 
(.. 
).. 
;.. 
app00 
.00 
UseAuthentication00 
(00 
)00 
;00 
app11 
.11 
UseAuthorization11 
(11 
)11 
;11 
app33 
.33 
MapControllerRoute33 
(33 
name44 
:44 	
$str44
 
,44 
pattern55 
:55 
$str55 5
)555 6
;556 7
app66 
.66 
MapRazorPages66 
(66 
)66 
;66 
app88 
.88 
Run88 
(88 
)88 	
;88	 
À
YD:\training\FinalAssignment\Shopping-Mall\Shopping-Mall_MVC\Repository\IDataRepository.cs
	namespace 	%
Shopping_MAll_TestProject
 #
{ 
public 

	interface 
IDataRepository $
<$ %
TEntity% ,
>, -
{ 
IEnumerable 
< 
TEntity 
> 
GetAll #
(# $
)$ %
;% &
void		 
Add		 
(		 
Mall		 
mall		 
)		 
;		 
}

 
} 