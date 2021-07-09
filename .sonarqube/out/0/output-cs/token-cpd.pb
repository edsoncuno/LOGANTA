«ß
ZC:\Users\Edson\Downloads\TP\LOGANTA\Application\Controllers\CuadroComparativoController.cs
	namespace

 	
Application


 
.

 
Controllers

 !
{ 
public 

class '
CuadroComparativoController ,
:- .

Controller/ 9
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public '
CuadroComparativoController *
(* + 
ApplicationDbContext+ ?
context@ G
)G H
{ 	
_context 
= 
context 
; 
} 	
public 
IActionResult 
Realizar %
(% &
)& '
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 

JsonResult  
ObtenerTodosLosItems .
(. /
)/ 0
{ 	
var 
todosLosItems 
= 
from  $
objItem% ,
in- /
_context0 8
.8 9
Item9 =
select> D
objItemE L
;L M
return 
Json 
( 
todosLosItems %
)% &
;& '
}   	
public!! 

JsonResult!! %
ObtenerProveedorPorItemId!! 3
(!!3 4
int!!4 7
id!!8 :
)!!: ;
{"" 	
var## 
proveedores## 
=## 
from## "
objItem### *
in##+ -
_context##. 6
.##6 7
Item##7 ;
join##< @
objItemXProveedor##A R
in##S U
_context##V ^
.##^ _
ItemXProveedor##_ m
on##n p
objItem##q x
.##x y
Id##y {
equals	##| Ç
objItemXProveedor
##É î
.
##î ï
ItemId
##ï õ
join
##ú †
objProveedor
##° ≠
in
##Æ ∞
_context
##± π
.
##π ∫
	Proveedor
##∫ √
on
##ƒ ∆
objItemXProveedor
##« ÿ
.
##ÿ Ÿ
ProveedorId
##Ÿ ‰
equals
##Â Î
objProveedor
##Ï ¯
.
##¯ ˘
Id
##˘ ˚
where
##¸ Å
objItem
##Ç â
.
##â ä
Id
##ä å
==
##ç è
id
##ê í
select
##ì ô
new
##ö ù
{
##û ü
id
##† ¢
=
##£ §
objProveedor
##• ±
.
##± ≤
Id
##≤ ¥
,
##¥ µ
nombre
##∂ º
=
##Ω æ
objProveedor
##ø À
.
##À Ã
Nombre
##Ã “
}
##“ ”
;
##” ‘
return$$ 
Json$$ 
($$ 
proveedores$$ #
)$$# $
;$$$ %
}%% 	
public&& 
class&& 
CandidatoAGanador&& &
{'' 	
public(( 
int(( 
ItemId(( 
{(( 
get((  #
;((# $
set((% (
;((( )
}((* +
public)) 
string)) 

ItemNombre)) $
{))% &
get))' *
;))* +
set)), /
;))/ 0
}))1 2
public** 
int** 
ProveedorId** "
{**# $
get**% (
;**( )
set*** -
;**- .
}**/ 0
public++ 
string++ 
ProveedorNombre++ )
{++* +
get++, /
;++/ 0
set++1 4
;++4 5
}++6 7
},, 	
public-- 
class-- 
CandidatosPorItem-- &
{.. 	
public// 
int// 
ItemId// 
{// 
get//  #
;//# $
set//% (
;//( )
}//* +
public00 
List00 
<00 
CandidatoPorItem00 (
>00( )

candidatos00* 4
{005 6
get007 :
;00: ;
set00< ?
;00? @
}00A B
}11 	
public22 
class22 
CandidatoPorItem22 %
{33 	
public44 
int44 
ProveedorId44 "
{44# $
get44% (
;44( )
set44* -
;44- .
}44/ 0
public55 
decimal55 
Precio55 !
{55" #
get55$ '
;55' (
set55) ,
;55, -
}55. /
public66 
bool66 
	EsGanador66 !
{66" #
get66$ '
;66' (
set66) ,
;66, -
}66. /
}77 	
private88 
List88 
<88 
CandidatosPorItem88 &
>88& ',
 agregarAListaDeCandidatosPorItem88( H
(88H I
CandidatoAGanador88I Z
candidatoAGanador88[ l
,88l m
List88n r
<88r s
CandidatosPorItem	88s Ñ
>
88Ñ Ö&
listaDeCandidatosPorItem
88Ü û
)
88û ü
{99 	
if:: 
(:: 2
&existeItemIdEnListaDeCandidatosPorItem:: 6
(::6 7
candidatoAGanador::7 H
.::H I
ItemId::I O
,::O P$
listaDeCandidatosPorItem::Q i
)::i j
)::j k
{;; 
int<< )
indexListaDeCandidatosPorItem<< 1
=<<2 3
obtenerIndexDeItem<<4 F
(<<F G
candidatoAGanador<<G X
.<<X Y
ItemId<<Y _
,<<_ `$
listaDeCandidatosPorItem<<a y
)<<y z
;<<z {
CandidatoPorItem==  
objCandidatoPorItem==! 4
===5 6
new==7 :
CandidatoPorItem==; K
(==K L
)==L M
;==M N
objCandidatoPorItem>> #
.>># $
ProveedorId>>$ /
=>>0 1
candidatoAGanador>>2 C
.>>C D
ProveedorId>>D O
;>>O P$
listaDeCandidatosPorItem?? (
[??( ))
indexListaDeCandidatosPorItem??) F
]??F G
.??G H

candidatos??H R
.??R S
Add??S V
(??V W
objCandidatoPorItem??W j
)??j k
;??k l
}@@ 
elseAA 
{BB 
CandidatosPorItemDD ! 
objCandidatosPorItemDD" 6
=DD7 8
newDD9 <
CandidatosPorItemDD= N
(DDN O
)DDO P
;DDP Q 
objCandidatosPorItemEE $
.EE$ %
ItemIdEE% +
=EE, -
candidatoAGanadorEE. ?
.EE? @
ItemIdEE@ F
;EEF G 
objCandidatosPorItemFF $
.FF$ %

candidatosFF% /
=FF0 1
newFF2 5
ListFF6 :
<FF: ;
CandidatoPorItemFF; K
>FFK L
(FFL M
)FFM N
;FFN O
CandidatoPorItemHH  
objCandidatoPorItemHH! 4
=HH5 6
newHH7 :
CandidatoPorItemHH; K
(HHK L
)HHL M
;HHM N
objCandidatoPorItemII #
.II# $
ProveedorIdII$ /
=II0 1
candidatoAGanadorII2 C
.IIC D
ProveedorIdIID O
;IIO P 
objCandidatosPorItemKK $
.KK$ %

candidatosKK% /
.KK/ 0
AddKK0 3
(KK3 4
objCandidatoPorItemKK4 G
)KKG H
;KKH I$
listaDeCandidatosPorItemMM (
.MM( )
AddMM) ,
(MM, - 
objCandidatosPorItemMM- A
)MMA B
;MMB C
}NN 
returnOO $
listaDeCandidatosPorItemOO +
;OO+ ,
}PP 	
privateQQ 
intQQ 
obtenerIndexDeItemQQ &
(QQ& '
intQQ' *
itemIdQQ+ 1
,QQ1 2
ListQQ3 7
<QQ7 8
CandidatosPorItemQQ8 I
>QQI J'
objListaDeCandidatosPorItemQQK f
)QQf g
{RR 	
forSS 
(SS 
intSS 
iSS 
=SS 
$numSS 
;SS 
iSS 
<SS '
objListaDeCandidatosPorItemSS 8
.SS8 9
CountSS9 >
;SS? @
iSSA B
++SSB D
)SSD E
{TT 
ifUU 
(UU '
objListaDeCandidatosPorItemUU /
[UU/ 0
iUU0 1
]UU1 2
.UU2 3
ItemIdUU3 9
==UU: <
itemIdUU= C
)UUC D
{VV 
returnWW 
iWW 
;WW 
}XX 
}YY 
returnZZ 
$numZZ 
;ZZ 
}[[ 	
private\\ 
bool\\ 2
&existeItemIdEnListaDeCandidatosPorItem\\ ;
(\\; <
int\\< ?
itemId\\@ F
,\\F G
List\\H L
<\\L M
CandidatosPorItem\\M ^
>\\^ _'
objListaDeCandidatosPorItem\\` {
)\\{ |
{]] 	
foreach^^ 
(^^ 
CandidatosPorItem^^ & 
objCandidatosPorItem^^' ;
in^^< >'
objListaDeCandidatosPorItem^^? Z
)^^Z [
{__ 
if`` 
(`` 
itemId`` 
==``  
objCandidatosPorItem`` 2
.``2 3
ItemId``3 9
)``9 :
{aa 
returnbb 
truebb 
;bb  
}cc 
}dd 
returnee 
falseee 
;ee 
}ff 	
privategg 
Listgg 
<gg 
CandidatoPorItemgg %
>gg% &'
actualizarCandidatosPorItemgg' B
(ggB C
CandidatosPorItemggC T 
objCandidatosPorItemggU i
)ggi j
{hh 	
foreachii 
(ii 
CandidatoPorItemii %
objCandidatoPorItemii& 9
inii: < 
objCandidatosPorItemii= Q
.iiQ R

candidatosiiR \
)ii\ ]
{jj 
varkk %
objItemXProveedorQueBuscokk -
=kk. /
fromkk0 4
objItemXProveedorkk5 F
inkkG I
_contextkkJ R
.kkR S
ItemXProveedorkkS a
wherekkb g
objItemXProveedorkkh y
.kky z
ItemId	kkz Ä
==
kkÅ É"
objCandidatosPorItem
kkÑ ò
.
kkò ô
ItemId
kkô ü
&&
kk† ¢
objItemXProveedor
kk£ ¥
.
kk¥ µ
ProveedorId
kkµ ¿
==
kk¡ √!
objCandidatoPorItem
kkƒ ◊
.
kk◊ ÿ
ProveedorId
kkÿ „
select
kk‰ Í
objItemXProveedor
kkÎ ¸
;
kk¸ ˝
ItemXProveedorll 
tempItemXProveedorll 1
=ll2 3
newll4 7
ItemXProveedorll8 F
(llF G
)llG H
;llH I
tempItemXProveedormm "
=mm# $%
objItemXProveedorQueBuscomm% >
.mm> ?
Singlemm? E
(mmE F
)mmF G
;mmG H
objCandidatoPorItemnn #
.nn# $
Precionn$ *
=nn+ ,
Convertnn- 4
.nn4 5
	ToDecimalnn5 >
(nn> ?
tempItemXProveedornn? Q
.nnQ R
PrecionnR X
)nnX Y
;nnY Z
}oo 
returnpp  
objCandidatosPorItempp '
.pp' (

candidatospp( 2
;pp2 3
}qq 	
privaterr 
Listrr 
<rr 
CandidatoPorItemrr %
>rr% &)
elegirCandidatoGanadorPorItemrr' D
(rrD E
ListrrE I
<rrI J
CandidatoPorItemrrJ Z
>rrZ [ 
objCandidatosPorItemrr\ p
)rrp q
{ss 	
booltt 
esElPrimerCandidatott $
=tt% &
truett' +
;tt+ ,
intuu 
indexGanadoruu 
=uu 
$numuu  
;uu  !
decimalvv 
precioGanadorvv !
=vv" #
$numvv$ %
;vv% &
forww 
(ww 
intww 
iww 
=ww 
$numww 
;ww 
iww 
<ww  
objCandidatosPorItemww 0
.ww0 1
Countww1 6
;ww6 7
iww7 8
++ww8 :
)ww: ;
{xx 
ifyy 
(yy 
esElPrimerCandidatoyy '
)yy' (
{zz 
precioGanador{{ !
={{" # 
objCandidatosPorItem{{$ 8
[{{8 9
i{{9 :
]{{: ;
.{{; <
Precio{{< B
;{{B C
indexGanador||  
=||! "
i||# $
;||$ %
esElPrimerCandidato}} '
=}}( )
false}}* /
;}}/ 0
}~~ 
else 
{
ÄÄ 
if
ÅÅ 
(
ÅÅ "
objCandidatosPorItem
ÅÅ ,
[
ÅÅ, -
i
ÅÅ- .
]
ÅÅ. /
.
ÅÅ/ 0
Precio
ÅÅ0 6
<
ÅÅ7 8
precioGanador
ÅÅ9 F
)
ÅÅF G
{
ÇÇ 
precioGanador
ÉÉ %
=
ÉÉ& '"
objCandidatosPorItem
ÉÉ( <
[
ÉÉ< =
i
ÉÉ= >
]
ÉÉ> ?
.
ÉÉ? @
Precio
ÉÉ@ F
;
ÉÉF G
indexGanador
ÑÑ $
=
ÑÑ% &
i
ÑÑ' (
;
ÑÑ( )
}
ÖÖ 
}
ÜÜ 
}
áá "
objCandidatosPorItem
àà  
[
àà  !
indexGanador
àà! -
]
àà- .
.
àà. /
	EsGanador
àà/ 8
=
àà9 :
true
àà; ?
;
àà? @
return
ââ "
objCandidatosPorItem
ââ '
;
ââ' (
}
ää 	
public
ãã 
class
ãã 
GanadorPorItem
ãã #
{
åå 	
public
çç 
int
çç 
ProveedorId
çç "
{
çç# $
get
çç% (
;
çç( )
set
çç* -
;
çç- .
}
çç/ 0
public
éé 
string
éé 
ProveedorNombre
éé )
{
éé* +
get
éé, /
;
éé/ 0
set
éé1 4
;
éé4 5
}
éé6 7
public
èè 
int
èè 
ItemId
èè 
{
èè 
get
èè  #
;
èè# $
set
èè% (
;
èè( )
}
èè* +
public
êê 
string
êê 
ItemDescripcion
êê )
{
êê* +
get
êê, /
;
êê/ 0
set
êê1 4
;
êê4 5
}
êê6 7
public
ëë 
decimal
ëë 

ItemPrecio
ëë %
{
ëë& '
get
ëë( +
;
ëë+ ,
set
ëë- 0
;
ëë0 1
}
ëë2 3
}
íí 	
private
ìì 
List
ìì 
<
ìì 
GanadorPorItem
ìì #
>
ìì# $@
2convertirListaDeCandidatosPorItemAListaDeGanadores
ìì% W
(
ììW X
List
ììX \
<
ìì\ ]
CandidatosPorItem
ìì] n
>
ììn o'
listaDeCandidatosPorItemììp à
)ììà â
{
îî 	
List
ïï 
<
ïï 
GanadorPorItem
ïï 
>
ïï  #
listaDeGanadorPorItem
ïï! 6
=
ïï7 8
new
ïï9 <
List
ïï= A
<
ïïA B
GanadorPorItem
ïïB P
>
ïïP Q
(
ïïQ R
)
ïïR S
;
ïïS T
foreach
ññ 
(
ññ 
CandidatosPorItem
ññ &"
objCandidatosPorItem
ññ' ;
in
ññ< >&
listaDeCandidatosPorItem
ññ? W
)
ññW X
{
óó 
GanadorPorItem
òò 
objGanadorPorItem
òò 0
=
òò1 2
new
òò3 6
GanadorPorItem
òò7 E
(
òòE F
)
òòF G
;
òòG H
objGanadorPorItem
ôô !
.
ôô! "
ItemId
ôô" (
=
ôô) *"
objCandidatosPorItem
ôô+ ?
.
ôô? @
ItemId
ôô@ F
;
ôôF G
var
öö 
objItemQueBusco
öö #
=
öö$ %
from
öö& *
objItem
öö+ 2
in
öö3 5
_context
öö6 >
.
öö> ?
Item
öö? C
where
ööD I
objItem
ööJ Q
.
ööQ R
Id
ööR T
==
ööU W
objGanadorPorItem
ööX i
.
ööi j
ItemId
ööj p
select
ööq w
objItem
ööx 
;öö Ä
objGanadorPorItem
õõ !
.
õõ! "
ItemDescripcion
õõ" 1
=
õõ2 3
objItemQueBusco
õõ4 C
.
õõC D
Single
õõD J
(
õõJ K
)
õõK L
.
õõL M
Descripcion
õõM X
;
õõX Y
foreach
úú 
(
úú 
CandidatoPorItem
úú )!
objCandidatoPorItem
úú* =
in
úú> @"
objCandidatosPorItem
úúA U
.
úúU V

candidatos
úúV `
)
úú` a
{
ùù 
if
ûû 
(
ûû !
objCandidatoPorItem
ûû +
.
ûû+ ,
	EsGanador
ûû, 5
)
ûû5 6
{
üü 
objGanadorPorItem
†† )
.
††) *
ProveedorId
††* 5
=
††6 7!
objCandidatoPorItem
††8 K
.
††K L
ProveedorId
††L W
;
††W X
objGanadorPorItem
°° )
.
°°) *

ItemPrecio
°°* 4
=
°°5 6!
objCandidatoPorItem
°°7 J
.
°°J K
Precio
°°K Q
;
°°Q R
var
¢¢ "
objProveedorQueBusco
¢¢ 0
=
¢¢1 2
from
¢¢3 7
objProveedor
¢¢8 D
in
¢¢E G
_context
¢¢H P
.
¢¢P Q
	Proveedor
¢¢Q Z
where
¢¢[ `
objProveedor
¢¢a m
.
¢¢m n
Id
¢¢n p
==
¢¢q s 
objGanadorPorItem¢¢t Ö
.¢¢Ö Ü
ProveedorId¢¢Ü ë
select¢¢í ò
objProveedor¢¢ô •
;¢¢• ¶
objGanadorPorItem
££ )
.
££) *
ProveedorNombre
££* 9
=
££: ;"
objProveedorQueBusco
££< P
.
££P Q
Single
££Q W
(
££W X
)
££X Y
.
££Y Z
Nombre
££Z `
;
££` a
}
§§ 
}
•• #
listaDeGanadorPorItem
¶¶ %
.
¶¶% &
Add
¶¶& )
(
¶¶) *
objGanadorPorItem
¶¶* ;
)
¶¶; <
;
¶¶< =
}
ßß 
return
®® #
listaDeGanadorPorItem
®® (
;
®®( )
}
©© 	
[
™™ 	
HttpPost
™™	 
]
™™ 
public
´´ 

JsonResult
´´ 
ObtenerGanador
´´ (
(
´´( )
[
´´) *
FromBody
´´* 2
]
´´2 3
List
´´4 8
<
´´8 9
CandidatoAGanador
´´9 J
>
´´J K 
candidatosAGanador
´´L ^
)
´´^ _
{
¨¨ 	
List
≠≠ 
<
≠≠ 
CandidatosPorItem
≠≠ "
>
≠≠" #&
listaDeCandidatosPorItem
≠≠$ <
=
≠≠= >
new
≠≠? B
List
≠≠C G
<
≠≠G H
CandidatosPorItem
≠≠H Y
>
≠≠Y Z
(
≠≠Z [
)
≠≠[ \
;
≠≠\ ]
foreach
ÆÆ 
(
ÆÆ 
CandidatoAGanador
ÆÆ &
candidatoAGanador
ÆÆ' 8
in
ÆÆ9 ; 
candidatosAGanador
ÆÆ< N
)
ÆÆN O
{
ØØ &
listaDeCandidatosPorItem
∞∞ (
=
∞∞) *.
 agregarAListaDeCandidatosPorItem
∞∞+ K
(
∞∞K L
candidatoAGanador
∞∞L ]
,
∞∞] ^&
listaDeCandidatosPorItem
∞∞_ w
)
∞∞w x
;
∞∞x y
}
±± 
foreach
≤≤ 
(
≤≤ 
CandidatosPorItem
≤≤ &"
objCandidatosPorItem
≤≤' ;
in
≤≤< >&
listaDeCandidatosPorItem
≤≤? W
)
≤≤W X
{
≥≥ "
objCandidatosPorItem
¥¥ $
.
¥¥$ %

candidatos
¥¥% /
=
¥¥0 1)
actualizarCandidatosPorItem
¥¥2 M
(
¥¥M N"
objCandidatosPorItem
¥¥N b
)
¥¥b c
;
¥¥c d
}
µµ 
foreach
∂∂ 
(
∂∂ 
CandidatosPorItem
∂∂ &"
objCandidatosPorItem
∂∂' ;
in
∂∂< >&
listaDeCandidatosPorItem
∂∂? W
)
∂∂W X
{
∑∑ "
objCandidatosPorItem
∏∏ $
.
∏∏$ %

candidatos
∏∏% /
=
∏∏0 1+
elegirCandidatoGanadorPorItem
∏∏2 O
(
∏∏O P"
objCandidatosPorItem
∏∏P d
.
∏∏d e

candidatos
∏∏e o
)
∏∏o p
;
∏∏p q
}
ππ 
return
∫∫ 
Json
∫∫ 
(
∫∫ @
2convertirListaDeCandidatosPorItemAListaDeGanadores
∫∫ J
(
∫∫J K&
listaDeCandidatosPorItem
∫∫K c
)
∫∫c d
)
∫∫d e
;
∫∫e f
}
ªª 	
[
ºº 	
HttpPost
ºº	 
]
ºº 
public
ΩΩ 
async
ΩΩ 
Task
ΩΩ 
<
ΩΩ 

JsonResult
ΩΩ $
>
ΩΩ$ %
GuardarGanador
ΩΩ& 4
(
ΩΩ4 5
[
ΩΩ5 6
FromBody
ΩΩ6 >
]
ΩΩ> ?
List
ΩΩ@ D
<
ΩΩD E
GanadorPorItem
ΩΩE S
>
ΩΩS T
objs
ΩΩU Y
)
ΩΩY Z
{
ææ 	
await
““ 
_context
““ 
.
““ 
SaveChangesAsync
““ +
(
““+ ,
)
““, -
;
““- .
return
”” 
Json
”” 
(
”” 
new
”” 
{
”” 
newUrl
”” $
=
””% &
Url
””' *
.
””* +
Action
””+ 1
(
””1 2
$str
””2 <
,
””< =
$str
””> Q
)
””Q R
}
””S T
)
””T U
;
””U V
}
‘‘ 	
}
’’ 
}÷÷ ”&
RC:\Users\Edson\Downloads\TP\LOGANTA\Application\Controllers\DocumentoController.cs
	namespace 	
Application
 
. 
Controllers !
{ 
public 

class 
DocumentoController $
:% &

Controller' 1
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public 
DocumentoController "
(" # 
ApplicationDbContext# 7
context8 ?
)? @
{ 	
_context 
= 
context 
; 
} 	
public 
IActionResult 
Enviar #
(# $
int$ '
id( *
)* +
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Enviar) /
(/ 0
[0 1
FromForm1 9
]9 :
List; ?
<? @
	IFormFile@ I
>I J
archivosK S
,S T
stringU [
observaciones\ i
,i j
intk n
pedidoIdo w
)w x
{ 	
List 
< 
	Documento 
> 

documentos &
=' (
new) ,
List- 1
<1 2
	Documento2 ;
>; <
(< =
)= >
;> ?
string 
rutaParaDocumento $
=% &
$str' N
;N O
foreach   
(   
	IFormFile   
archivo   &
in  ' )
archivos  * 2
)  2 3
{!! 
string"" 
rutaCompleta"" #
=""$ %
Path""& *
.""* +
Combine""+ 2
(""2 3
rutaParaDocumento""3 D
,""D E
archivo""F M
.""M N
FileName""N V
)""V W
;""W X

FileStream## 

fileStream## %
;##% &
using$$ 
($$ 

fileStream$$ !
=$$" #
new$$$ '

FileStream$$( 2
($$2 3
Path$$3 7
.$$7 8
Combine$$8 ?
($$? @
rutaParaDocumento$$@ Q
,$$Q R
Path$$S W
.$$W X
GetFileName$$X c
($$c d
archivo$$d k
.$$k l
FileName$$l t
)$$t u
)$$u v
,$$v w
FileMode	$$x Ä
.
$$Ä Å
Create
$$Å á
)
$$á à
)
$$à â
{%% 
archivo&& 
.&& 
CopyTo&& "
(&&" #

fileStream&&# -
)&&- .
;&&. /
}'' 
	Documento(( 
objDocumento(( &
=((' (
new(() ,
	Documento((- 6
(((6 7
)((7 8
;((8 9
objDocumento)) 
.)) 
Observaciones)) *
=))+ ,
observaciones))- :
;)): ;
objDocumento** 
.** 
Fecha** "
=**# $
DateTime**% -
.**- .
Now**. 1
;**1 2
objDocumento++ 
.++ 
Ruta++ !
=++" #
rutaCompleta++$ 0
;++0 1
objDocumento,, 
.,, 
PedidoId,, %
=,,& '
pedidoId,,( 0
;,,0 1

documentos-- 
.-- 
Add-- 
(-- 
objDocumento-- +
)--+ ,
;--, -
}.. 
foreach// 
(// 
var// 
	documento// "
in//# %

documentos//& 0
)//0 1
{00 
_context11 
.11 
Add11 
(11 
	documento11 &
)11& '
;11' (
}22 
await33 
_context33 
.33 
SaveChangesAsync33 +
(33+ ,
)33, -
;33- .
return55 
View55 
(55 
$str55 5
)555 6
;556 7
}66 	
public77 
IActionResult77 
Index77 "
(77" #
)77# $
{88 	
return99 
View99 
(99 
)99 
;99 
}:: 	
public;; 

JsonResult;; %
ObtenerTodosLosDocumentos;; 3
(;;3 4
);;4 5
{<< 	
var== 
todosLosDosumentos== "
===# $
from==% )
objDocumento==* 6
in==7 9
_context==: B
.==B C
	Documento==C L
select==M S
objDocumento==T `
;==` a
return>> 
Json>> 
(>> 
todosLosDosumentos>> *
)>>* +
;>>+ ,
}?? 	
}@@ 
}AA ñ
MC:\Users\Edson\Downloads\TP\LOGANTA\Application\Controllers\HomeController.cs
	namespace

 	
Application


 
.

 
Controllers

 !
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private 
readonly 
ILogger  
<  !
HomeController! /
>/ 0
_logger1 8
;8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public 
IActionResult 
Error "
(" #
)# $
{ 	
return   
View   
(   
new   
ErrorViewModel   *
{  + ,
	RequestId  - 6
=  7 8
Activity  9 A
.  A B
Current  B I
?  I J
.  J K
Id  K M
??  N P
HttpContext  Q \
.  \ ]
TraceIdentifier  ] l
}  m n
)  n o
;  o p
}!! 	
}"" 
}## “›
OC:\Users\Edson\Downloads\TP\LOGANTA\Application\Controllers\PedidoController.cs
	namespace 	
Application
 
. 
Controllers !
{ 
public 

class 
PedidoController !
:" #

Controller$ .
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public 
PedidoController 
(   
ApplicationDbContext  4
context5 <
)< =
{ 	
_context 
= 
context 
; 
} 	
public 
IActionResult 
ListarPendientes -
(- .
). /
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
MostrarPendiente -
(- .
int. 1
id2 4
)4 5
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult +
MostrarAprobadoPorElSolicitante <
(< =
int= @
idA C
)C D
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
{## 	
return$$ 
View$$ 
($$ 
)$$ 
;$$ 
}%% 	
public&& 
IActionResult&& +
ListarAprobadosPorElSolicitante&& <
(&&< =
)&&= >
{'' 	
return(( 
View(( 
((( 
)(( 
;(( 
})) 	
public** 
IActionResult** '
ListarAprobadosPorLogistica** 8
(**8 9
)**9 :
{++ 	
return,, 
View,, 
(,, 
),, 
;,, 
}-- 	
public.. 
IActionResult.. '
MostrarAprobadoPorLogistica.. 8
(..8 9
int..9 <
id..= ?
)..? @
{// 	
return00 
View00 
(00 
)00 
;00 
}11 	
public22 

JsonResult22 ;
/ObtenerTodosLosPedidosAprobadosPorElSolicitante22 I
(22I J
)22J K
{33 	
var44 %
todosLosPedidosPendientes44 )
=44* +
from44, 0
pedido441 7
in448 :
_context44; C
.44C D
Pedido44D J
where44K P
pedido44Q W
.44W X
PedidoEstadoId44X f
==44g i
$num44j k
select44l r
pedido44s y
;44y z
return55 
Json55 
(55 %
todosLosPedidosPendientes55 1
)551 2
;552 3
}66 	
public77 

JsonResult77 7
+ObtenerTodosLosPedidosAprobadosPorLogistica77 E
(77E F
)77F G
{88 	
var99 %
todosLosPedidosPendientes99 )
=99* +
from99, 0
pedido991 7
in998 :
_context99; C
.99C D
Pedido99D J
where99K P
pedido99Q W
.99W X
PedidoEstadoId99X f
==99g i
$num99j k
select99l r
pedido99s y
;99y z
return:: 
Json:: 
(:: %
todosLosPedidosPendientes:: 1
)::1 2
;::2 3
};; 	
public<< 

JsonResult<< ,
 ObtenerTodosLosPedidosPendientes<< :
(<<: ;
)<<; <
{== 	
var>> %
todosLosPedidosPendientes>> )
=>>* +
from>>, 0
pedido>>1 7
in>>8 :
_context>>; C
.>>C D
Pedido>>D J
where>>K P
pedido>>Q W
.>>W X
PedidoEstadoId>>X f
==>>g i
$num>>j k
select>>l r
pedido>>s y
;>>y z
return?? 
Json?? 
(?? %
todosLosPedidosPendientes?? 1
)??1 2
;??2 3
}@@ 	
publicAA 

JsonResultAA 
ObtenerPedidoAA '
(AA' (
intAA( +
idAA, .
)AA. /
{BB 	
varCC %
todosLosPedidosPendientesCC )
=CC* +
fromCC, 0
pedidoCC1 7
inCC8 :
_contextCC; C
.CCC D
PedidoCCD J
whereCCK P
pedidoCCQ W
.CCW X
IdCCX Z
==CC[ ]
idCC^ `
selectCCa g
pedidoCCh n
;CCn o
returnDD 
JsonDD 
(DD %
todosLosPedidosPendientesDD 1
)DD1 2
;DD2 3
}EE 	
publicFF 

JsonResultFF "
ObtenerTodosLosPedidosFF 0
(FF0 1
)FF1 2
{GG 	
varHH 
todosLosPedidosHH 
=HH  !
fromHH" &
	objPedidoHH' 0
inHH1 3
_contextHH4 <
.HH< =
PedidoHH= C
joinHHD H
objPedidoEstadoHHI X
inHHY [
_contextHH\ d
.HHd e
PedidoEstadoHHe q
onHHr t
	objPedidoHHu ~
.HH~ 
PedidoEstadoId	HH ç
equals
HHé î
objPedidoEstado
HHï §
.
HH§ •
Id
HH• ß
select
HH® Æ
new
HHØ ≤
{
HH≥ ¥
	objPedido
HHµ æ
.
HHæ ø
Id
HHø ¡
,
HH¡ ¬
	objPedido
HH√ Ã
.
HHÃ Õ$
DireccionDeSolicitante
HHÕ „
,
HH„ ‰
	objPedido
HHÂ Ó
.
HHÓ Ô
	TipoDeUso
HHÔ ¯
,
HH¯ ˘
	objPedido
HH˙ É
.
HHÉ Ñ
	EntregarA
HHÑ ç
,
HHç é
	objPedido
HHè ò
.
HHò ô 
ActividadOperativa
HHô ´
,
HH´ ¨
	objPedido
HH≠ ∂
.
HH∂ ∑
Motivo
HH∑ Ω
,
HHΩ æ
	objPedido
HHø »
.
HH» …
Fecha
HH… Œ
,
HHŒ œ
objPedidoEstado
HH– ﬂ
.
HHﬂ ‡
Descripcion
HH‡ Î
}
HHÏ Ì
;
HHÌ Ó
returnII 
JsonII 
(II 
todosLosPedidosII '
)II' (
;II( )
}JJ 	
publicKK 

JsonResultKK 
ObtenerItemsKK &
(KK& '
intKK' *
idKK+ -
)KK- .
{LL 	
varMM 
itemsDelPedidoMM 
=MM  
fromMM! %
objItemMM& -
inMM. 0
_contextMM1 9
.MM9 :
ItemMM: >
joinMM? C
objItemXPedidoMMD R
inMMS U
_contextMMV ^
.MM^ _
ItemXPedidoMM_ j
onMMk m
objItemMMn u
.MMu v
IdMMv x
equalsMMy 
objItemXPedido
MMÄ é
.
MMé è
ItemId
MMè ï
join
MMñ ö
	objPedido
MMõ §
in
MM• ß
_context
MM® ∞
.
MM∞ ±
Pedido
MM± ∑
on
MM∏ ∫
objItemXPedido
MMª …
.
MM…  
PedidoId
MM  “
equals
MM” Ÿ
	objPedido
MM⁄ „
.
MM„ ‰
Id
MM‰ Ê
where
MMÁ Ï
	objPedido
MMÌ ˆ
.
MMˆ ˜
Id
MM˜ ˘
==
MM˙ ¸
id
MM˝ ˇ
select
MMÄ Ü
new
MMá ä
{
MMã å
ItemId
MMç ì
=
MMî ï
objItem
MMñ ù
.
MMù û
Id
MMû †
,
MM† °
objItem
MM¢ ©
.
MM© ™
Descripcion
MM™ µ
,
MMµ ∂
objItemXPedido
MM∑ ≈
.
MM≈ ∆
Cantidad
MM∆ Œ
,
MMŒ œ
objItemXPedido
MM– ﬁ
.
MMﬁ ﬂ
Id
MMﬂ ·
,
MM· ‚
objItem
MM„ Í
.
MMÍ Î
UnidadDeMedida
MMÎ ˘
}
MM˙ ˚
;
MM˚ ¸
returnNN 
JsonNN 
(NN 
itemsDelPedidoNN &
)NN& '
;NN' (
}OO 	
publicPP 
voidPP $
actualizarItemsDelPedidoPP ,
(PP, -
ListPP- 1
<PP1 2
CantidadPP2 :
>PP: ;

cantidadesPP< F
)PPF G
{QQ 	
foreachRR 
(RR 
CantidadRR 
objRR !
inRR" $

cantidadesRR% /
)RR/ 0
{SS 
ifTT 
(TT 
objTT 
.TT 
cantidadTT  
==TT! #
$strTT$ &
)TT& '
{UU 
objVV 
.VV 
cantidadVV  
=VV! "
$strVV# &
;VV& '
}WW 
varXX "
objItemXPedidoQueBuscoXX *
=XX+ ,
fromXX- 1
objItemXPedidoXX2 @
inXXA C
_contextXXD L
.XXL M
ItemXPedidoXXM X
whereXXY ^
objItemXPedidoXX_ m
.XXm n
IdXXn p
==XXq s
Int32XXt y
.XXy z
ParseXXz 
(	XX Ä
obj
XXÄ É
.
XXÉ Ñ
id
XXÑ Ü
)
XXÜ á
select
XXà é
objItemXPedido
XXè ù
;
XXù û
ItemXPedidoYY $
objItemXPedidoEncontradoYY 4
=YY5 6
newYY7 :
ItemXPedidoYY; F
(YYF G
)YYG H
;YYH I$
objItemXPedidoEncontradoZZ (
=ZZ) *"
objItemXPedidoQueBuscoZZ+ A
.ZZA B
SingleZZB H
(ZZH I
)ZZI J
;ZZJ K
if[[ 
([[ 
obj[[ 
.[[ 
cantidad[[  
==[[! #
$str[[$ '
)[[' (
{\\ 
_context]] 
.]] 
ItemXPedido]] (
.]]( )
Remove]]) /
(]]/ 0$
objItemXPedidoEncontrado]]0 H
)]]H I
;]]I J
}^^ 
else__ 
{`` $
objItemXPedidoEncontradoaa ,
.aa, -
Cantidadaa- 5
=aa6 7
Int32aa8 =
.aa= >
Parseaa> C
(aaC D
objaaD G
.aaG H
cantidadaaH P
)aaP Q
;aaQ R
_contextbb 
.bb 
Updatebb #
(bb# $$
objItemXPedidoEncontradobb$ <
)bb< =
;bb= >
}cc 
}dd 
}ee 	
publicff 
classff &
ParametrosAprobarPendienteff /
{gg 	
publichh 
inthh 
idhh 
{hh 
gethh 
;hh  
sethh! $
;hh$ %
}hh& '
publicii 
Listii 
<ii 
Cantidadii  
>ii  !

cantidadesii" ,
{ii- .
getii/ 2
;ii2 3
setii4 7
;ii7 8
}ii9 :
}jj 	
publickk 
classkk )
ParametrosDesaprobarPendientekk 2
{kk2 3
publicll 
intll 
idll 
{ll 
getll 
;ll  
setll! $
;ll$ %
}ll& '
publicmm 
stringmm 
observacionmm %
{mm& '
getmm( +
;mm+ ,
setmm- 0
;mm0 1
}mm2 3
publicnn 
Listnn 
<nn 
Cantidadnn  
>nn  !

cantidadesnn" ,
{nn- .
getnn/ 2
;nn2 3
setnn4 7
;nn7 8
}nn9 :
}oo 	
publicpp 
classpp 
Cantidadpp 
{qq 	
publicrr 
stringrr 
idrr 
{rr 
getrr "
;rr" #
setrr$ '
;rr' (
}rr) *
publicss 
stringss 
cantidadss "
{ss# $
getss% (
;ss( )
setss* -
;ss- .
}ss/ 0
}tt 	
publicuu 
classuu 
ParametrosEnviaruu %
{vv 	
publicww 
intww 
idww 
{ww 
getww 
;ww  
setww! $
;ww$ %
}ww& '
}xx 	
[yy 	
HttpPostyy	 
]yy 
publiczz 
asynczz 
Taskzz 
<zz 

JsonResultzz $
>zz$ %"
AprobarPedidoPendientezz& <
(zz< =
[zz= >
FromBodyzz> F
]zzF G&
ParametrosAprobarPendientezzH b
objzzc f
)zzf g
{{{ 	
int|| 
id|| 
=|| 
obj|| 
.|| 
id|| 
;|| 
List}} 
<}} 
Cantidad}} 
>}} 

cantidades}} %
=}}& '
obj}}( +
.}}+ ,

cantidades}}, 6
;}}6 7
var~~ 
pedidoQueQuiero~~ 
=~~  !
from~~" &
pedido~~' -
in~~. 0
_context~~1 9
.~~9 :
Pedido~~: @
where~~A F
pedido~~G M
.~~M N
Id~~N P
==~~Q S
id~~T V
select~~W ]
pedido~~^ d
;~~d e
Pedido 
	objPedido 
= 
new "
Pedido# )
() *
)* +
;+ ,
	objPedido
ÄÄ 
=
ÄÄ 
pedidoQueQuiero
ÄÄ '
.
ÄÄ' (
Single
ÄÄ( .
(
ÄÄ. /
)
ÄÄ/ 0
;
ÄÄ0 1
	objPedido
ÅÅ 
.
ÅÅ 
PedidoEstadoId
ÅÅ $
=
ÅÅ% &
$num
ÅÅ' (
;
ÅÅ( )&
actualizarItemsDelPedido
ÇÇ $
(
ÇÇ$ %

cantidades
ÇÇ% /
)
ÇÇ/ 0
;
ÇÇ0 1
try
ÉÉ 
{
ÑÑ 
_context
ÖÖ 
.
ÖÖ 
Update
ÖÖ 
(
ÖÖ  
	objPedido
ÖÖ  )
)
ÖÖ) *
;
ÖÖ* +
await
ÜÜ 
_context
ÜÜ 
.
ÜÜ 
SaveChangesAsync
ÜÜ /
(
ÜÜ/ 0
)
ÜÜ0 1
;
ÜÜ1 2
}
áá 
catch
àà 
(
àà *
DbUpdateConcurrencyException
àà /
)
àà/ 0
{
ââ 
}
ää 
return
åå 
Json
åå 
(
åå 
new
åå 
{
åå 
newUrl
åå $
=
åå% &
Url
åå' *
.
åå* +
Action
åå+ 1
(
åå1 2
$str
åå2 D
,
ååD E
$str
ååF N
)
ååN O
}
ååP Q
)
ååQ R
;
ååR S
}
çç 	
[
éé 	
HttpPost
éé	 
]
éé 
public
èè 
async
èè 
Task
èè 
<
èè 

JsonResult
èè $
>
èè$ %'
DesaprobarPedidoPendiente
èè& ?
(
èè? @
[
èè@ A
FromBody
èèA I
]
èèI J+
ParametrosDesaprobarPendiente
èèK h
obj
èèi l
)
èèl m
{
êê 	
int
ëë 
id
ëë 
=
ëë 
obj
ëë 
.
ëë 
id
ëë 
;
ëë 
string
íí 
observacion
íí 
=
íí  
obj
íí! $
.
íí$ %
observacion
íí% 0
;
íí0 1
List
ìì 
<
ìì 
Cantidad
ìì 
>
ìì 

cantidades
ìì %
=
ìì& '
obj
ìì( +
.
ìì+ ,

cantidades
ìì, 6
;
ìì6 7
var
îî 
pedidoQueQuiero
îî 
=
îî  !
from
îî" &
pedido
îî' -
in
îî. 0
_context
îî1 9
.
îî9 :
Pedido
îî: @
where
îîA F
pedido
îîG M
.
îîM N
Id
îîN P
==
îîQ S
id
îîT V
select
îîW ]
pedido
îî^ d
;
îîd e
Pedido
ïï 
	objPedido
ïï 
=
ïï 
new
ïï "
Pedido
ïï# )
(
ïï) *
)
ïï* +
;
ïï+ ,
	objPedido
ññ 
=
ññ 
pedidoQueQuiero
ññ '
.
ññ' (
Single
ññ( .
(
ññ. /
)
ññ/ 0
;
ññ0 1
	objPedido
óó 
.
óó 
PedidoEstadoId
óó $
=
óó% &
$num
óó' (
;
óó( )
	objPedido
òò 
.
òò 
Observaciones1
òò $
=
òò% &
observacion
òò' 2
;
òò2 3&
actualizarItemsDelPedido
ôô $
(
ôô$ %

cantidades
ôô% /
)
ôô/ 0
;
ôô0 1
try
öö 
{
õõ 
_context
úú 
.
úú 
Update
úú 
(
úú  
	objPedido
úú  )
)
úú) *
;
úú* +
await
ùù 
_context
ùù 
.
ùù 
SaveChangesAsync
ùù /
(
ùù/ 0
)
ùù0 1
;
ùù1 2
}
ûû 
catch
üü 
(
üü *
DbUpdateConcurrencyException
üü /
)
üü/ 0
{
†† 
}
°° 
return
¢¢ 
Json
¢¢ 
(
¢¢ 
new
¢¢ 
{
¢¢ 
newUrl
¢¢ $
=
¢¢% &
Url
¢¢' *
.
¢¢* +
Action
¢¢+ 1
(
¢¢1 2
$str
¢¢2 D
,
¢¢D E
$str
¢¢F N
)
¢¢N O
}
¢¢P Q
)
¢¢Q R
;
¢¢R S
}
££ 	
[
§§ 	
HttpPost
§§	 
]
§§ 
public
•• 
async
•• 
Task
•• 
<
•• 

JsonResult
•• $
>
••$ %3
%AprobarPedidoAprobadoPorElSolicitante
••& K
(
••K L
[
••L M
FromBody
••M U
]
••U V(
ParametrosAprobarPendiente
••W q
obj
••r u
)
••u v
{
¶¶ 	
int
ßß 
id
ßß 
=
ßß 
obj
ßß 
.
ßß 
id
ßß 
;
ßß 
List
®® 
<
®® 
Cantidad
®® 
>
®® 

cantidades
®® %
=
®®& '
obj
®®( +
.
®®+ ,

cantidades
®®, 6
;
®®6 7
var
©© 
pedidoQueQuiero
©© 
=
©©  !
from
©©" &
pedido
©©' -
in
©©. 0
_context
©©1 9
.
©©9 :
Pedido
©©: @
where
©©A F
pedido
©©G M
.
©©M N
Id
©©N P
==
©©Q S
id
©©T V
select
©©W ]
pedido
©©^ d
;
©©d e
Pedido
™™ 
	objPedido
™™ 
=
™™ 
new
™™ "
Pedido
™™# )
(
™™) *
)
™™* +
;
™™+ ,
	objPedido
´´ 
=
´´ 
pedidoQueQuiero
´´ '
.
´´' (
Single
´´( .
(
´´. /
)
´´/ 0
;
´´0 1
	objPedido
¨¨ 
.
¨¨ 
PedidoEstadoId
¨¨ $
=
¨¨% &
$num
¨¨' (
;
¨¨( )&
actualizarItemsDelPedido
≠≠ $
(
≠≠$ %

cantidades
≠≠% /
)
≠≠/ 0
;
≠≠0 1
try
ÆÆ 
{
ØØ 
_context
∞∞ 
.
∞∞ 
Update
∞∞ 
(
∞∞  
	objPedido
∞∞  )
)
∞∞) *
;
∞∞* +
await
±± 
_context
±± 
.
±± 
SaveChangesAsync
±± /
(
±±/ 0
)
±±0 1
;
±±1 2
}
≤≤ 
catch
≥≥ 
(
≥≥ *
DbUpdateConcurrencyException
≥≥ /
)
≥≥/ 0
{
¥¥ 
}
µµ 
return
∂∂ 
Json
∂∂ 
(
∂∂ 
new
∂∂ 
{
∂∂ 
newUrl
∂∂ $
=
∂∂% &
Url
∂∂' *
.
∂∂* +
Action
∂∂+ 1
(
∂∂1 2
$str
∂∂2 S
,
∂∂S T
$str
∂∂U ]
)
∂∂] ^
}
∂∂_ `
)
∂∂` a
;
∂∂a b
}
∑∑ 	
[
∏∏ 	
HttpPost
∏∏	 
]
∏∏ 
public
ππ 
async
ππ 
Task
ππ 
<
ππ 

JsonResult
ππ $
>
ππ$ %6
(DesaprobarPedidoAprobadoPorElSolicitante
ππ& N
(
ππN O
[
ππO P
FromBody
ππP X
]
ππX Y+
ParametrosDesaprobarPendiente
ππZ w
obj
ππx {
)
ππ{ |
{
∫∫ 	
int
ªª 
id
ªª 
=
ªª 
obj
ªª 
.
ªª 
id
ªª 
;
ªª 
string
ºº 
observacion
ºº 
=
ºº  
obj
ºº! $
.
ºº$ %
observacion
ºº% 0
;
ºº0 1
List
ΩΩ 
<
ΩΩ 
Cantidad
ΩΩ 
>
ΩΩ 

cantidades
ΩΩ %
=
ΩΩ& '
obj
ΩΩ( +
.
ΩΩ+ ,

cantidades
ΩΩ, 6
;
ΩΩ6 7
var
ææ 
pedidoQueQuiero
ææ 
=
ææ  !
from
ææ" &
pedido
ææ' -
in
ææ. 0
_context
ææ1 9
.
ææ9 :
Pedido
ææ: @
where
ææA F
pedido
ææG M
.
ææM N
Id
ææN P
==
ææQ S
id
ææT V
select
ææW ]
pedido
ææ^ d
;
ææd e
Pedido
øø 
	objPedido
øø 
=
øø 
new
øø "
Pedido
øø# )
(
øø) *
)
øø* +
;
øø+ ,
	objPedido
¿¿ 
=
¿¿ 
pedidoQueQuiero
¿¿ '
.
¿¿' (
Single
¿¿( .
(
¿¿. /
)
¿¿/ 0
;
¿¿0 1
	objPedido
¡¡ 
.
¡¡ 
PedidoEstadoId
¡¡ $
=
¡¡% &
$num
¡¡' (
;
¡¡( )
	objPedido
¬¬ 
.
¬¬ 
Observaciones2
¬¬ $
=
¬¬% &
observacion
¬¬' 2
;
¬¬2 3&
actualizarItemsDelPedido
√√ $
(
√√$ %

cantidades
√√% /
)
√√/ 0
;
√√0 1
try
ƒƒ 
{
≈≈ 
_context
∆∆ 
.
∆∆ 
Update
∆∆ 
(
∆∆  
	objPedido
∆∆  )
)
∆∆) *
;
∆∆* +
await
«« 
_context
«« 
.
«« 
SaveChangesAsync
«« /
(
««/ 0
)
««0 1
;
««1 2
}
»» 
catch
…… 
(
…… *
DbUpdateConcurrencyException
…… /
)
……/ 0
{
   
}
ÀÀ 
return
ÃÃ 
Json
ÃÃ 
(
ÃÃ 
new
ÃÃ 
{
ÃÃ 
newUrl
ÃÃ $
=
ÃÃ% &
Url
ÃÃ' *
.
ÃÃ* +
Action
ÃÃ+ 1
(
ÃÃ1 2
$str
ÃÃ2 S
,
ÃÃS T
$str
ÃÃU ]
)
ÃÃ] ^
}
ÃÃ_ `
)
ÃÃ` a
;
ÃÃa b
}
ÕÕ 	
[
ŒŒ 	
HttpPost
ŒŒ	 
]
ŒŒ 
public
œœ 

JsonResult
œœ .
 EnviarPedidoATodosLosProveedores
œœ :
(
œœ: ;
[
œœ; <
FromBody
œœ< D
]
œœD E
ParametrosEnviar
œœF V
obj
œœW Z
)
œœZ [
{
–– 	
int
—— 
id
—— 
=
—— 
obj
—— 
.
—— 
id
—— 
;
—— 
try
ÿÿ 
{
ŸŸ 
}
‹‹ 
catch
›› 
(
›› *
DbUpdateConcurrencyException
›› /
)
››/ 0
{
ﬁﬁ 
}
ﬂﬂ 
return
‡‡ 
Json
‡‡ 
(
‡‡ 
new
‡‡ 
{
‡‡ 
newUrl
‡‡ $
=
‡‡% &
Url
‡‡' *
.
‡‡* +
Action
‡‡+ 1
(
‡‡1 2
$str
‡‡2 O
,
‡‡O P
$str
‡‡Q Y
)
‡‡Y Z
}
‡‡[ \
)
‡‡\ ]
;
‡‡] ^
}
·· 	
public
‚‚ 

JsonResult
‚‚ 7
)ObtenerTodosLosPedidosPendientesConFiltro
‚‚ C
(
‚‚C D
string
‚‚D J
campo
‚‚K P
,
‚‚P Q
string
‚‚R X
valor
‚‚Y ^
)
‚‚^ _
{
„„ 	
var
‰‰ '
todosLosPedidosPendientes
‰‰ )
=
‰‰* +
from
‰‰, 0
pedido
‰‰1 7
in
‰‰8 :
_context
‰‰; C
.
‰‰C D
Pedido
‰‰D J
where
‰‰K P
pedido
‰‰Q W
.
‰‰W X
PedidoEstadoId
‰‰X f
==
‰‰g i
$num
‰‰j k
select
‰‰l r
pedido
‰‰s y
;
‰‰y z
if
ÂÂ 
(
ÂÂ 
campo
ÂÂ 
==
ÂÂ 
null
ÂÂ 
)
ÂÂ 
{
ÊÊ 
return
ÁÁ 
Json
ÁÁ 
(
ÁÁ '
todosLosPedidosPendientes
ÁÁ 5
)
ÁÁ5 6
;
ÁÁ6 7
}
ËË 
else
ÈÈ 
{
ÍÍ 
if
ÎÎ 
(
ÎÎ 
campo
ÎÎ 
==
ÎÎ 
$str
ÎÎ !
)
ÎÎ! "
{
ÏÏ 
try
ÌÌ 
{
ÓÓ 
int
ÔÔ 
codigo
ÔÔ "
=
ÔÔ# $
Convert
ÔÔ% ,
.
ÔÔ, -
ToInt32
ÔÔ- 4
(
ÔÔ4 5
valor
ÔÔ5 :
)
ÔÔ: ;
;
ÔÔ; <'
todosLosPedidosPendientes
 1
=
2 3
from
4 8
pedido
9 ?
in
@ B
_context
C K
.
K L
Pedido
L R
where
S X
pedido
Y _
.
_ `
Id
` b
>=
c e
codigo
f l
&&
m o
pedido
p v
.
v w
PedidoEstadoIdw Ö
==Ü à
$numâ ä
selectå í
pedidoì ô
;ô ö
return
ÒÒ 
Json
ÒÒ #
(
ÒÒ# $'
todosLosPedidosPendientes
ÒÒ$ =
)
ÒÒ= >
;
ÒÒ> ?
}
ÚÚ 
catch
ÛÛ 
{
ÙÙ 
return
ıı 
Json
ıı #
(
ıı# $'
todosLosPedidosPendientes
ıı$ =
)
ıı= >
;
ıı> ?
}
ˆˆ 
}
˜˜ 
else
¯¯ 
{
˘˘ 
if
˙˙ 
(
˙˙ 
campo
˙˙ 
==
˙˙  
$str
˙˙! 5
)
˙˙5 6
{
˚˚ '
todosLosPedidosPendientes
¸¸ 1
=
¸¸2 3
from
¸¸4 8
pedido
¸¸9 ?
in
¸¸@ B
_context
¸¸C K
.
¸¸K L
Pedido
¸¸L R
where
¸¸S X
pedido
¸¸Y _
.
¸¸_ ` 
ActividadOperativa
¸¸` r
==
¸¸s u
valor
¸¸v {
&&
¸¸| ~
pedido¸¸ Ö
.¸¸Ö Ü
PedidoEstadoId¸¸Ü î
==¸¸ï ó
$num¸¸ò ô
select¸¸õ °
pedido¸¸¢ ®
;¸¸® ©
return
˝˝ 
Json
˝˝ #
(
˝˝# $'
todosLosPedidosPendientes
˝˝$ =
)
˝˝= >
;
˝˝> ?
}
˛˛ 
else
ˇˇ 
{
ÄÄ 
if
ÅÅ 
(
ÅÅ 
campo
ÅÅ !
==
ÅÅ" $
$str
ÅÅ% 0
)
ÅÅ0 1
{
ÇÇ '
todosLosPedidosPendientes
ÉÉ 5
=
ÉÉ6 7
from
ÉÉ8 <
pedido
ÉÉ= C
in
ÉÉD F
_context
ÉÉG O
.
ÉÉO P
Pedido
ÉÉP V
where
ÉÉW \
pedido
ÉÉ] c
.
ÉÉc d
	TipoDeUso
ÉÉd m
==
ÉÉn p
valor
ÉÉq v
&&
ÉÉw y
pedidoÉÉz Ä
.ÉÉÄ Å
PedidoEstadoIdÉÉÅ è
==ÉÉê í
$numÉÉì î
selectÉÉï õ
pedidoÉÉú ¢
;ÉÉ¢ £
return
ÑÑ "
Json
ÑÑ# '
(
ÑÑ' ('
todosLosPedidosPendientes
ÑÑ( A
)
ÑÑA B
;
ÑÑB C
}
ÖÖ 
else
ÜÜ 
{
áá 
try
àà 
{
ââ 
DateTime
ää  (
fecha
ää) .
=
ää/ 0
Convert
ää1 8
.
ää8 9

ToDateTime
ää9 C
(
ääC D
valor
ääD I
)
ääI J
;
ääJ K'
todosLosPedidosPendientes
ãã  9
=
ãã: ;
from
ãã< @
pedido
ããA G
in
ããH J
_context
ããK S
.
ããS T
Pedido
ããT Z
where
ãã[ `
pedido
ããa g
.
ããg h
Fecha
ããh m
>=
ããn p
fecha
ããq v
&&
ããw y
pedidoããz Ä
.ããÄ Å
PedidoEstadoIdããÅ è
==ããê í
$numããì î
selectããï õ
pedidoããú ¢
;ãã¢ £
return
åå  &
Json
åå' +
(
åå+ ,'
todosLosPedidosPendientes
åå, E
)
ååE F
;
ååF G
}
çç 
catch
éé !
{
èè 
return
êê  &
Json
êê' +
(
êê+ ,'
todosLosPedidosPendientes
êê, E
)
êêE F
;
êêF G
}
ëë 
}
íí 
}
ìì 
}
îî 
}
ïï 
}
ññ 	
}
óó 
}òò æ
NC:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\ApplicationDbContext.cs
	namespace 	
Application
 
. 
Models 
{		 
public

 

class

  
ApplicationDbContext

 %
:

& '
	DbContext

( 1
{ 
public  
ApplicationDbContext #
(# $
DbContextOptions$ 4
<4 5 
ApplicationDbContext5 I
>I J
optionsK R
)R S
:T U
baseV Z
(Z [
options[ b
)b c
{d e
} 	
public 
DbSet 
< 
Item 
> 
Item 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DbSet 
< 
ItemXPedido  
>  !
ItemXPedido" -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
DbSet 
< -
!ItemXPedidoXSolicitudDeCotizacion 6
>6 7-
!ItemXPedidoXSolicitudDeCotizacion8 Y
{Z [
get\ _
;_ `
seta d
;d e
}f g
public 
DbSet 
< 
ItemXProveedor #
># $
ItemXProveedor% 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
DbSet 
< 
Pedido 
> 
Pedido #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DbSet 
< 
PedidoEstado !
>! "
PedidoEstado# /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
DbSet 
< (
PedidoXSolicitudDeCotizacion 1
>1 2(
PedidoXSolicitudDeCotizacion3 O
{P Q
getR U
;U V
setW Z
;Z [
}\ ]
public 
DbSet 
< 
	Proveedor 
> 
	Proveedor  )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DbSet 
< !
SolicitudDeCotizacion *
>* +!
SolicitudDeCotizacion, A
{B C
getD G
;G H
setI L
;L M
}N O
public 
DbSet 
< '
SolicitudDeCotizacionEstado 0
>0 1'
SolicitudDeCotizacionEstado2 M
{N O
getP S
;S T
setU X
;X Y
}Z [
public 
DbSet 
< 
	Documento 
> 
	Documento  )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DbSet 
< 
Application  
.  !
Models! '
.' (
CuadroComparativo( 9
>9 :
CuadroComparativo; L
{M N
getO R
;R S
setT W
;W X
}Y Z
} 
} õ
KC:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\CuadroComparativo.cs
	namespace 	
Application
 
. 
Models 
{ 
public 

class 
CuadroComparativo "
{		 
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
" #
public 
DateTime 
? 
Fecha 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
? 
PedidoId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Pedido 
Pedido 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ƒ	
CC:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\Documento.cs
	namespace 	
Application
 
. 
Models 
{ 
public 

class 
	Documento 
{		 
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
" #
public 
DateTime 
? 
Fecha 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Ruta 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Observaciones #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
int 
? 
PedidoId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Pedido 
Pedido 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ï
HC:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\ErrorViewModel.cs
	namespace 	
Application
 
. 
Models 
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
bool		 
ShowRequestId		 !
=>		" $
!		% &
string		& ,
.		, -
IsNullOrEmpty		- :
(		: ;
	RequestId		; D
)		D E
;		E F
}

 
} ‰
>C:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\Item.cs
	namespace 	
Application
 
. 
Models 
{ 
public 

class 
Item 
{		 
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
" #
public 
string 
Descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Marca 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
UnidadDeMedida $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
? #
ProveedorPredeterminado +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
ICollection 
< 
ItemXProveedor )
>) *
ItemXProveedorS+ :
{; <
get= @
;@ A
setB E
;E F
}G H
public 
ICollection 
< 
ItemXPedido &
>& '
ItemXPedidoS( 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} ™
EC:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\ItemXPedido.cs
	namespace 	
Application
 
. 
Models 
{ 
public 

class 
ItemXPedido 
{		 
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
" #
public 
int 
? 
Cantidad 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
ItemId 
{ 
get  
;  !
set" %
;% &
}' (
public 
Item 
Item 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
? 
PedidoId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Pedido 
Pedido 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
ProveedorGanadorId &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
	Proveedor 
ProveedorGanador )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
ICollection 
< -
!ItemXPedidoXSolicitudDeCotizacion <
>< =.
"ItemXPedidoXSolicitudDeCotizacionS> `
{a b
getc f
;f g
seth k
;k l
}m n
} 
} ˛
[C:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\ItemXPedidoXSolicitudDeCotizacion.cs
	namespace 	
Application
 
. 
Models 
{		 
public

 

class

 -
!ItemXPedidoXSolicitudDeCotizacion

 2
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Column	 
( 
TypeName 
= 
$str )
)) *
]* +
public 
decimal 
? 
PrecioUnitario &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
Column	 
( 
TypeName 
= 
$str )
)) *
]* +
public 
decimal 
? 
PrecioTotal #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
int 
? 
ItemXPedidoId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
ItemXPedido 
ItemXPedido &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
? #
SolicitudDeCotizacionId +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public !
SolicitudDeCotizacion $!
SolicitudDeCotizacion% :
{; <
get= @
;@ A
setB E
;E F
}G H
} 
} û
HC:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\ItemXProveedor.cs
	namespace 	
Application
 
. 
Models 
{		 
public

 

class

 
ItemXProveedor

 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Column	 
( 
TypeName 
= 
$str )
)) *
]* +
public 
decimal 
? 
FactorDeConversion *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
[ 	
Column	 
( 
TypeName 
= 
$str )
)) *
]* +
public 
decimal 
? 
Precio 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
? 
ItemId 
{ 
get  
;  !
set" %
;% &
}' (
public 
Item 
Item 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
? 
ProveedorId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
	Proveedor 
	Proveedor "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ô
@C:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\Pedido.cs
	namespace 	
Application
 
. 
Models 
{ 
public 

class 
Pedido 
{		 
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
" #
public 
string "
DireccionDeSolicitante ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
string 
	TipoDeUso 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
	EntregarA 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
ActividadOperativa (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
Motivo 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
? 
Fecha 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Observaciones1 $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
Observaciones2 $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
? 
PedidoEstadoId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
PedidoEstado 
PedidoEstado (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
ICollection 
< 
ItemXPedido &
>& '
ItemXPedidoS( 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
ICollection 
< (
PedidoXSolicitudDeCotizacion 7
>7 8)
PedidoXSolicitudDeCotizacionS9 V
{W X
getY \
;\ ]
set^ a
;a b
}c d
public 
ICollection 
< 
	Documento $
>$ %

DocumentoS& 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
ICollection 
< 
CuadroComparativo ,
>, -
CuadroComparativoS. @
{A B
getC F
;F G
setH K
;K L
}M N
} 
} ñ
FC:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\PedidoEstado.cs
	namespace 	
Application
 
. 
Models 
{ 
public 

class 
PedidoEstado 
{		 
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
" #
public 
string 
Descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
ICollection 
< 
Pedido !
>! "
PedidoS# *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} ó

VC:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\PedidoXSolicitudDeCotizacion.cs
	namespace 	
Application
 
. 
Models 
{ 
public 

class (
PedidoXSolicitudDeCotizacion -
{		 
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
" #
public 
string 
Observaciones #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
int 
? 
PedidoId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Pedido 
Pedido 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? #
SolicitudDeCotizacionId +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public !
SolicitudDeCotizacion $!
SolicitudDeCotizacion% :
{; <
get= @
;@ A
setB E
;E F
}G H
} 
} â
CC:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\Proveedor.cs
	namespace 	
Application
 
. 
Models 
{ 
public 

class 
	Proveedor 
{		 
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
" #
public 
long 
? 
Ruc 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
	Direccion 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
RazonSocial !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? 
Telefono 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
public 
ICollection 
< 
ItemXProveedor )
>) *
ItemXProceedorS+ :
{; <
get= @
;@ A
setB E
;E F
}G H
public 
ICollection 
< !
SolicitudDeCotizacion 0
>0 1"
SolicitudDeCotizacionS2 H
{I J
getK N
;N O
setP S
;S T
}U V
public 
ICollection 
< 
ItemXPedido &
>& '
ItemXPedidoS( 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} 
OC:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\SolicitudDeCotizacion.cs
	namespace 	
Application
 
. 
Models 
{ 
public 

class !
SolicitudDeCotizacion &
{		 
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
" #
public 
DateTime 
? 
Fecha 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
? (
ValidacionDelJefeDeLogistica 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
int 
? 
ProveedorId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
	Proveedor 
	Proveedor "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
? )
SolicitudDeCotizacionEstadoId 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public '
SolicitudDeCotizacionEstado *'
SolicitudDeCotizacionEstado+ F
{G H
getI L
;L M
setN Q
;Q R
}S T
public 
ICollection 
< (
PedidoXSolicitudDeCotizacion 7
>7 8)
PedidoXSolicitudDeCotizacionS9 V
{W X
getY \
;\ ]
set^ a
;a b
}c d
public 
ICollection 
< -
!ItemXPedidoXSolicitudDeCotizacion <
>< =.
"ItemXPedidoXSolicitudDeCotizacionS> `
{a b
getc f
;f g
seth k
;k l
}m n
} 
} “
UC:\Users\Edson\Downloads\TP\LOGANTA\Application\Models\SolicitudDeCotizacionEstado.cs
	namespace 	
Application
 
. 
Models 
{ 
public 

class '
SolicitudDeCotizacionEstado ,
{		 
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
" #
public 
string 
Descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
ICollection 
< !
SolicitudDeCotizacion 0
>0 1"
SolicitudDeCotizacionS2 H
{I J
getK N
;N O
setP S
;S T
}U V
} 
} ì

:C:\Users\Edson\Downloads\TP\LOGANTA\Application\Program.cs
	namespace

 	
Application


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ã
:C:\Users\Edson\Downloads\TP\LOGANTA\Application\Startup.cs
	namespace 	
Application
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddDbContext !
<! " 
ApplicationDbContext" 6
>6 7
(7 8
options8 ?
=>@ B
optionsC J
.J K
UseSqlServerK W
(W X
ConfigurationX e
.e f
GetConnectionStringf y
(y z
$str	z ç
)
ç é
)
é è
)
è ê
;
ê ë
services 
. #
AddControllersWithViews ,
(, -
)- .
;. /
} 	
public   
void   
	Configure   
(   
IApplicationBuilder   1
app  2 5
,  5 6
IWebHostEnvironment  7 J
env  K N
)  N O
{!! 	
if"" 
("" 
env"" 
."" 
IsDevelopment"" !
(""! "
)""" #
)""# $
{## 
app$$ 
.$$ %
UseDeveloperExceptionPage$$ -
($$- .
)$$. /
;$$/ 0
}%% 
else&& 
{'' 
app(( 
.(( 
UseExceptionHandler(( '
(((' (
$str((( 5
)((5 6
;((6 7
app)) 
.)) 
UseHsts)) 
()) 
))) 
;)) 
}** 
app++ 
.++ 
UseHttpsRedirection++ #
(++# $
)++$ %
;++% &
app,, 
.,, 
UseStaticFiles,, 
(,, 
),,  
;,,  !
app.. 
... 

UseRouting.. 
(.. 
).. 
;.. 
app00 
.00 
UseAuthorization00  
(00  !
)00! "
;00" #
app22 
.22 
UseEndpoints22 
(22 
	endpoints22 &
=>22' )
{33 
	endpoints44 
.44 
MapControllerRoute44 ,
(44, -
name55 
:55 
$str55 #
,55# $
pattern66 
:66 
$str66 E
)66E F
;66F G
}77 
)77 
;77 
}88 	
}99 
}:: Ê⁄
ZC:\Users\Edson\Downloads\TP\LOGANTA\Application\Migrations\20210630211411_InitialCreate.cs
	namespace 	
Application
 
. 

Migrations  
{ 
public 

partial 
class 
InitialCreate &
:' (
	Migration) 2
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Descripcion 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
nullableN V
:V W
trueX \
)\ ]
,] ^
Marca 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 F
,F G
nullableH P
:P Q
trueR V
)V W
,W X
UnidadDeMedida "
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
,O P
nullableQ Y
:Y Z
true[ _
)_ `
,` a#
ProveedorPredeterminado +
=, -
table. 3
.3 4
Column4 :
<: ;
int; >
>> ?
(? @
type@ D
:D E
$strF K
,K L
nullableM U
:U V
trueW [
)[ \
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
$str% .
,. /
x0 1
=>2 4
x5 6
.6 7
Id7 9
)9 :
;: ;
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str $
,$ %
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
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Descripcion   
=    !
table  " '
.  ' (
Column  ( .
<  . /
string  / 5
>  5 6
(  6 7
type  7 ;
:  ; <
$str  = L
,  L M
nullable  N V
:  V W
true  X \
)  \ ]
}!! 
,!! 
constraints"" 
:"" 
table"" "
=>""# %
{## 
table$$ 
.$$ 

PrimaryKey$$ $
($$$ %
$str$$% 6
,$$6 7
x$$8 9
=>$$: <
x$$= >
.$$> ?
Id$$? A
)$$A B
;$$B C
}%% 
)%% 
;%% 
migrationBuilder'' 
.'' 
CreateTable'' (
(''( )
name(( 
:(( 
$str(( !
,((! "
columns)) 
:)) 
table)) 
=>)) !
new))" %
{** 
Id++ 
=++ 
table++ 
.++ 
Column++ %
<++% &
int++& )
>++) *
(++* +
type+++ /
:++/ 0
$str++1 6
,++6 7
nullable++8 @
:++@ A
false++B G
)++G H
.,, 

Annotation,, #
(,,# $
$str,,$ 8
,,,8 9
$str,,: @
),,@ A
,,,A B
Ruc-- 
=-- 
table-- 
.--  
Column--  &
<--& '
long--' +
>--+ ,
(--, -
type--- 1
:--1 2
$str--3 ;
,--; <
nullable--= E
:--E F
true--G K
)--K L
,--L M
Nombre.. 
=.. 
table.. "
..." #
Column..# )
<..) *
string..* 0
>..0 1
(..1 2
type..2 6
:..6 7
$str..8 G
,..G H
nullable..I Q
:..Q R
true..S W
)..W X
,..X Y
	Direccion// 
=// 
table//  %
.//% &
Column//& ,
<//, -
string//- 3
>//3 4
(//4 5
type//5 9
://9 :
$str//; J
,//J K
nullable//L T
://T U
true//V Z
)//Z [
,//[ \
RazonSocial00 
=00  !
table00" '
.00' (
Column00( .
<00. /
string00/ 5
>005 6
(006 7
type007 ;
:00; <
$str00= L
,00L M
nullable00N V
:00V W
true00X \
)00\ ]
,00] ^
Telefono11 
=11 
table11 $
.11$ %
Column11% +
<11+ ,
int11, /
>11/ 0
(110 1
type111 5
:115 6
$str117 <
,11< =
nullable11> F
:11F G
true11H L
)11L M
,11M N
Correo22 
=22 
table22 "
.22" #
Column22# )
<22) *
string22* 0
>220 1
(221 2
type222 6
:226 7
$str228 G
,22G H
nullable22I Q
:22Q R
true22S W
)22W X
}33 
,33 
constraints44 
:44 
table44 "
=>44# %
{55 
table66 
.66 

PrimaryKey66 $
(66$ %
$str66% 3
,663 4
x665 6
=>667 9
x66: ;
.66; <
Id66< >
)66> ?
;66? @
}77 
)77 
;77 
migrationBuilder99 
.99 
CreateTable99 (
(99( )
name:: 
::: 
$str:: 3
,::3 4
columns;; 
:;; 
table;; 
=>;; !
new;;" %
{<< 
Id== 
=== 
table== 
.== 
Column== %
<==% &
int==& )
>==) *
(==* +
type==+ /
:==/ 0
$str==1 6
,==6 7
nullable==8 @
:==@ A
false==B G
)==G H
.>> 

Annotation>> #
(>># $
$str>>$ 8
,>>8 9
$str>>: @
)>>@ A
,>>A B
Descripcion?? 
=??  !
table??" '
.??' (
Column??( .
<??. /
string??/ 5
>??5 6
(??6 7
type??7 ;
:??; <
$str??= L
,??L M
nullable??N V
:??V W
true??X \
)??\ ]
}@@ 
,@@ 
constraintsAA 
:AA 
tableAA "
=>AA# %
{BB 
tableCC 
.CC 

PrimaryKeyCC $
(CC$ %
$strCC% E
,CCE F
xCCG H
=>CCI K
xCCL M
.CCM N
IdCCN P
)CCP Q
;CCQ R
}DD 
)DD 
;DD 
migrationBuilderFF 
.FF 
CreateTableFF (
(FF( )
nameGG 
:GG 
$strGG 
,GG 
columnsHH 
:HH 
tableHH 
=>HH !
newHH" %
{II 
IdJJ 
=JJ 
tableJJ 
.JJ 
ColumnJJ %
<JJ% &
intJJ& )
>JJ) *
(JJ* +
typeJJ+ /
:JJ/ 0
$strJJ1 6
,JJ6 7
nullableJJ8 @
:JJ@ A
falseJJB G
)JJG H
.KK 

AnnotationKK #
(KK# $
$strKK$ 8
,KK8 9
$strKK: @
)KK@ A
,KKA B"
DireccionDeSolicitanteLL *
=LL+ ,
tableLL- 2
.LL2 3
ColumnLL3 9
<LL9 :
stringLL: @
>LL@ A
(LLA B
typeLLB F
:LLF G
$strLLH W
,LLW X
nullableLLY a
:LLa b
trueLLc g
)LLg h
,LLh i
	TipoDeUsoMM 
=MM 
tableMM  %
.MM% &
ColumnMM& ,
<MM, -
stringMM- 3
>MM3 4
(MM4 5
typeMM5 9
:MM9 :
$strMM; J
,MMJ K
nullableMML T
:MMT U
trueMMV Z
)MMZ [
,MM[ \
	EntregarANN 
=NN 
tableNN  %
.NN% &
ColumnNN& ,
<NN, -
stringNN- 3
>NN3 4
(NN4 5
typeNN5 9
:NN9 :
$strNN; J
,NNJ K
nullableNNL T
:NNT U
trueNNV Z
)NNZ [
,NN[ \
ActividadOperativaOO &
=OO' (
tableOO) .
.OO. /
ColumnOO/ 5
<OO5 6
stringOO6 <
>OO< =
(OO= >
typeOO> B
:OOB C
$strOOD S
,OOS T
nullableOOU ]
:OO] ^
trueOO_ c
)OOc d
,OOd e
MotivoPP 
=PP 
tablePP "
.PP" #
ColumnPP# )
<PP) *
stringPP* 0
>PP0 1
(PP1 2
typePP2 6
:PP6 7
$strPP8 G
,PPG H
nullablePPI Q
:PPQ R
truePPS W
)PPW X
,PPX Y
FechaQQ 
=QQ 
tableQQ !
.QQ! "
ColumnQQ" (
<QQ( )
DateTimeQQ) 1
>QQ1 2
(QQ2 3
typeQQ3 7
:QQ7 8
$strQQ9 D
,QQD E
nullableQQF N
:QQN O
trueQQP T
)QQT U
,QQU V
Observaciones1RR "
=RR# $
tableRR% *
.RR* +
ColumnRR+ 1
<RR1 2
stringRR2 8
>RR8 9
(RR9 :
typeRR: >
:RR> ?
$strRR@ O
,RRO P
nullableRRQ Y
:RRY Z
trueRR[ _
)RR_ `
,RR` a
Observaciones2SS "
=SS# $
tableSS% *
.SS* +
ColumnSS+ 1
<SS1 2
stringSS2 8
>SS8 9
(SS9 :
typeSS: >
:SS> ?
$strSS@ O
,SSO P
nullableSSQ Y
:SSY Z
trueSS[ _
)SS_ `
,SS` a
PedidoEstadoIdTT "
=TT# $
tableTT% *
.TT* +
ColumnTT+ 1
<TT1 2
intTT2 5
>TT5 6
(TT6 7
typeTT7 ;
:TT; <
$strTT= B
,TTB C
nullableTTD L
:TTL M
trueTTN R
)TTR S
}UU 
,UU 
constraintsVV 
:VV 
tableVV "
=>VV# %
{WW 
tableXX 
.XX 

PrimaryKeyXX $
(XX$ %
$strXX% 0
,XX0 1
xXX2 3
=>XX4 6
xXX7 8
.XX8 9
IdXX9 ;
)XX; <
;XX< =
tableYY 
.YY 

ForeignKeyYY $
(YY$ %
nameZZ 
:ZZ 
$strZZ E
,ZZE F
column[[ 
:[[ 
x[[  !
=>[[" $
x[[% &
.[[& '
PedidoEstadoId[[' 5
,[[5 6
principalTable\\ &
:\\& '
$str\\( 6
,\\6 7
principalColumn]] '
:]]' (
$str]]) -
,]]- .
onDelete^^  
:^^  !
ReferentialAction^^" 3
.^^3 4
Restrict^^4 <
)^^< =
;^^= >
}__ 
)__ 
;__ 
migrationBuilderaa 
.aa 
CreateTableaa (
(aa( )
namebb 
:bb 
$strbb &
,bb& '
columnscc 
:cc 
tablecc 
=>cc !
newcc" %
{dd 
Idee 
=ee 
tableee 
.ee 
Columnee %
<ee% &
intee& )
>ee) *
(ee* +
typeee+ /
:ee/ 0
$stree1 6
,ee6 7
nullableee8 @
:ee@ A
falseeeB G
)eeG H
.ff 

Annotationff #
(ff# $
$strff$ 8
,ff8 9
$strff: @
)ff@ A
,ffA B
FactorDeConversiongg &
=gg' (
tablegg) .
.gg. /
Columngg/ 5
<gg5 6
decimalgg6 =
>gg= >
(gg> ?
typegg? C
:ggC D
$strggE S
,ggS T
nullableggU ]
:gg] ^
truegg_ c
)ggc d
,ggd e
Preciohh 
=hh 
tablehh "
.hh" #
Columnhh# )
<hh) *
decimalhh* 1
>hh1 2
(hh2 3
typehh3 7
:hh7 8
$strhh9 G
,hhG H
nullablehhI Q
:hhQ R
truehhS W
)hhW X
,hhX Y
ItemIdii 
=ii 
tableii "
.ii" #
Columnii# )
<ii) *
intii* -
>ii- .
(ii. /
typeii/ 3
:ii3 4
$strii5 :
,ii: ;
nullableii< D
:iiD E
trueiiF J
)iiJ K
,iiK L
ProveedorIdjj 
=jj  !
tablejj" '
.jj' (
Columnjj( .
<jj. /
intjj/ 2
>jj2 3
(jj3 4
typejj4 8
:jj8 9
$strjj: ?
,jj? @
nullablejjA I
:jjI J
truejjK O
)jjO P
}kk 
,kk 
constraintsll 
:ll 
tablell "
=>ll# %
{mm 
tablenn 
.nn 

PrimaryKeynn $
(nn$ %
$strnn% 8
,nn8 9
xnn: ;
=>nn< >
xnn? @
.nn@ A
IdnnA C
)nnC D
;nnD E
tableoo 
.oo 

ForeignKeyoo $
(oo$ %
namepp 
:pp 
$strpp =
,pp= >
columnqq 
:qq 
xqq  !
=>qq" $
xqq% &
.qq& '
ItemIdqq' -
,qq- .
principalTablerr &
:rr& '
$strrr( .
,rr. /
principalColumnss '
:ss' (
$strss) -
,ss- .
onDeletett  
:tt  !
ReferentialActiontt" 3
.tt3 4
Restricttt4 <
)tt< =
;tt= >
tableuu 
.uu 

ForeignKeyuu $
(uu$ %
namevv 
:vv 
$strvv G
,vvG H
columnww 
:ww 
xww  !
=>ww" $
xww% &
.ww& '
ProveedorIdww' 2
,ww2 3
principalTablexx &
:xx& '
$strxx( 3
,xx3 4
principalColumnyy '
:yy' (
$stryy) -
,yy- .
onDeletezz  
:zz  !
ReferentialActionzz" 3
.zz3 4
Restrictzz4 <
)zz< =
;zz= >
}{{ 
){{ 
;{{ 
migrationBuilder}} 
.}} 
CreateTable}} (
(}}( )
name~~ 
:~~ 
$str~~ -
,~~- .
columns 
: 
table 
=> !
new" %
{
ÄÄ 
Id
ÅÅ 
=
ÅÅ 
table
ÅÅ 
.
ÅÅ 
Column
ÅÅ %
<
ÅÅ% &
int
ÅÅ& )
>
ÅÅ) *
(
ÅÅ* +
type
ÅÅ+ /
:
ÅÅ/ 0
$str
ÅÅ1 6
,
ÅÅ6 7
nullable
ÅÅ8 @
:
ÅÅ@ A
false
ÅÅB G
)
ÅÅG H
.
ÇÇ 

Annotation
ÇÇ #
(
ÇÇ# $
$str
ÇÇ$ 8
,
ÇÇ8 9
$str
ÇÇ: @
)
ÇÇ@ A
,
ÇÇA B
Fecha
ÉÉ 
=
ÉÉ 
table
ÉÉ !
.
ÉÉ! "
Column
ÉÉ" (
<
ÉÉ( )
DateTime
ÉÉ) 1
>
ÉÉ1 2
(
ÉÉ2 3
type
ÉÉ3 7
:
ÉÉ7 8
$str
ÉÉ9 D
,
ÉÉD E
nullable
ÉÉF N
:
ÉÉN O
true
ÉÉP T
)
ÉÉT U
,
ÉÉU V*
ValidacionDelJefeDeLogistica
ÑÑ 0
=
ÑÑ1 2
table
ÑÑ3 8
.
ÑÑ8 9
Column
ÑÑ9 ?
<
ÑÑ? @
bool
ÑÑ@ D
>
ÑÑD E
(
ÑÑE F
type
ÑÑF J
:
ÑÑJ K
$str
ÑÑL Q
,
ÑÑQ R
nullable
ÑÑS [
:
ÑÑ[ \
true
ÑÑ] a
)
ÑÑa b
,
ÑÑb c
ProveedorId
ÖÖ 
=
ÖÖ  !
table
ÖÖ" '
.
ÖÖ' (
Column
ÖÖ( .
<
ÖÖ. /
int
ÖÖ/ 2
>
ÖÖ2 3
(
ÖÖ3 4
type
ÖÖ4 8
:
ÖÖ8 9
$str
ÖÖ: ?
,
ÖÖ? @
nullable
ÖÖA I
:
ÖÖI J
true
ÖÖK O
)
ÖÖO P
,
ÖÖP Q+
SolicitudDeCotizacionEstadoId
ÜÜ 1
=
ÜÜ2 3
table
ÜÜ4 9
.
ÜÜ9 :
Column
ÜÜ: @
<
ÜÜ@ A
int
ÜÜA D
>
ÜÜD E
(
ÜÜE F
type
ÜÜF J
:
ÜÜJ K
$str
ÜÜL Q
,
ÜÜQ R
nullable
ÜÜS [
:
ÜÜ[ \
true
ÜÜ] a
)
ÜÜa b
}
áá 
,
áá 
constraints
àà 
:
àà 
table
àà "
=>
àà# %
{
ââ 
table
ää 
.
ää 

PrimaryKey
ää $
(
ää$ %
$str
ää% ?
,
ää? @
x
ääA B
=>
ääC E
x
ääF G
.
ääG H
Id
ääH J
)
ääJ K
;
ääK L
table
ãã 
.
ãã 

ForeignKey
ãã $
(
ãã$ %
name
åå 
:
åå 
$str
åå N
,
ååN O
column
çç 
:
çç 
x
çç  !
=>
çç" $
x
çç% &
.
çç& '
ProveedorId
çç' 2
,
çç2 3
principalTable
éé &
:
éé& '
$str
éé( 3
,
éé3 4
principalColumn
èè '
:
èè' (
$str
èè) -
,
èè- .
onDelete
êê  
:
êê  !
ReferentialAction
êê" 3
.
êê3 4
Restrict
êê4 <
)
êê< =
;
êê= >
table
ëë 
.
ëë 

ForeignKey
ëë $
(
ëë$ %
name
íí 
:
íí 
$str
íí r
,
íír s
column
ìì 
:
ìì 
x
ìì  !
=>
ìì" $
x
ìì% &
.
ìì& '+
SolicitudDeCotizacionEstadoId
ìì' D
,
ììD E
principalTable
îî &
:
îî& '
$str
îî( E
,
îîE F
principalColumn
ïï '
:
ïï' (
$str
ïï) -
,
ïï- .
onDelete
ññ  
:
ññ  !
ReferentialAction
ññ" 3
.
ññ3 4
Restrict
ññ4 <
)
ññ< =
;
ññ= >
}
óó 
)
óó 
;
óó 
migrationBuilder
ôô 
.
ôô 
CreateTable
ôô (
(
ôô( )
name
öö 
:
öö 
$str
öö )
,
öö) *
columns
õõ 
:
õõ 
table
õõ 
=>
õõ !
new
õõ" %
{
úú 
Id
ùù 
=
ùù 
table
ùù 
.
ùù 
Column
ùù %
<
ùù% &
int
ùù& )
>
ùù) *
(
ùù* +
type
ùù+ /
:
ùù/ 0
$str
ùù1 6
,
ùù6 7
nullable
ùù8 @
:
ùù@ A
false
ùùB G
)
ùùG H
.
ûû 

Annotation
ûû #
(
ûû# $
$str
ûû$ 8
,
ûû8 9
$str
ûû: @
)
ûû@ A
,
ûûA B
Fecha
üü 
=
üü 
table
üü !
.
üü! "
Column
üü" (
<
üü( )
DateTime
üü) 1
>
üü1 2
(
üü2 3
type
üü3 7
:
üü7 8
$str
üü9 D
,
üüD E
nullable
üüF N
:
üüN O
true
üüP T
)
üüT U
,
üüU V
PedidoId
†† 
=
†† 
table
†† $
.
††$ %
Column
††% +
<
††+ ,
int
††, /
>
††/ 0
(
††0 1
type
††1 5
:
††5 6
$str
††7 <
,
††< =
nullable
††> F
:
††F G
true
††H L
)
††L M
}
°° 
,
°° 
constraints
¢¢ 
:
¢¢ 
table
¢¢ "
=>
¢¢# %
{
££ 
table
§§ 
.
§§ 

PrimaryKey
§§ $
(
§§$ %
$str
§§% ;
,
§§; <
x
§§= >
=>
§§? A
x
§§B C
.
§§C D
Id
§§D F
)
§§F G
;
§§G H
table
•• 
.
•• 

ForeignKey
•• $
(
••$ %
name
¶¶ 
:
¶¶ 
$str
¶¶ D
,
¶¶D E
column
ßß 
:
ßß 
x
ßß  !
=>
ßß" $
x
ßß% &
.
ßß& '
PedidoId
ßß' /
,
ßß/ 0
principalTable
®® &
:
®®& '
$str
®®( 0
,
®®0 1
principalColumn
©© '
:
©©' (
$str
©©) -
,
©©- .
onDelete
™™  
:
™™  !
ReferentialAction
™™" 3
.
™™3 4
Restrict
™™4 <
)
™™< =
;
™™= >
}
´´ 
)
´´ 
;
´´ 
migrationBuilder
≠≠ 
.
≠≠ 
CreateTable
≠≠ (
(
≠≠( )
name
ÆÆ 
:
ÆÆ 
$str
ÆÆ !
,
ÆÆ! "
columns
ØØ 
:
ØØ 
table
ØØ 
=>
ØØ !
new
ØØ" %
{
∞∞ 
Id
±± 
=
±± 
table
±± 
.
±± 
Column
±± %
<
±±% &
int
±±& )
>
±±) *
(
±±* +
type
±±+ /
:
±±/ 0
$str
±±1 6
,
±±6 7
nullable
±±8 @
:
±±@ A
false
±±B G
)
±±G H
.
≤≤ 

Annotation
≤≤ #
(
≤≤# $
$str
≤≤$ 8
,
≤≤8 9
$str
≤≤: @
)
≤≤@ A
,
≤≤A B
Fecha
≥≥ 
=
≥≥ 
table
≥≥ !
.
≥≥! "
Column
≥≥" (
<
≥≥( )
DateTime
≥≥) 1
>
≥≥1 2
(
≥≥2 3
type
≥≥3 7
:
≥≥7 8
$str
≥≥9 D
,
≥≥D E
nullable
≥≥F N
:
≥≥N O
true
≥≥P T
)
≥≥T U
,
≥≥U V
Ruta
¥¥ 
=
¥¥ 
table
¥¥  
.
¥¥  !
Column
¥¥! '
<
¥¥' (
string
¥¥( .
>
¥¥. /
(
¥¥/ 0
type
¥¥0 4
:
¥¥4 5
$str
¥¥6 E
,
¥¥E F
nullable
¥¥G O
:
¥¥O P
true
¥¥Q U
)
¥¥U V
,
¥¥V W
Observaciones
µµ !
=
µµ" #
table
µµ$ )
.
µµ) *
Column
µµ* 0
<
µµ0 1
string
µµ1 7
>
µµ7 8
(
µµ8 9
type
µµ9 =
:
µµ= >
$str
µµ? N
,
µµN O
nullable
µµP X
:
µµX Y
true
µµZ ^
)
µµ^ _
,
µµ_ `
PedidoId
∂∂ 
=
∂∂ 
table
∂∂ $
.
∂∂$ %
Column
∂∂% +
<
∂∂+ ,
int
∂∂, /
>
∂∂/ 0
(
∂∂0 1
type
∂∂1 5
:
∂∂5 6
$str
∂∂7 <
,
∂∂< =
nullable
∂∂> F
:
∂∂F G
true
∂∂H L
)
∂∂L M
}
∑∑ 
,
∑∑ 
constraints
∏∏ 
:
∏∏ 
table
∏∏ "
=>
∏∏# %
{
ππ 
table
∫∫ 
.
∫∫ 

PrimaryKey
∫∫ $
(
∫∫$ %
$str
∫∫% 3
,
∫∫3 4
x
∫∫5 6
=>
∫∫7 9
x
∫∫: ;
.
∫∫; <
Id
∫∫< >
)
∫∫> ?
;
∫∫? @
table
ªª 
.
ªª 

ForeignKey
ªª $
(
ªª$ %
name
ºº 
:
ºº 
$str
ºº <
,
ºº< =
column
ΩΩ 
:
ΩΩ 
x
ΩΩ  !
=>
ΩΩ" $
x
ΩΩ% &
.
ΩΩ& '
PedidoId
ΩΩ' /
,
ΩΩ/ 0
principalTable
ææ &
:
ææ& '
$str
ææ( 0
,
ææ0 1
principalColumn
øø '
:
øø' (
$str
øø) -
,
øø- .
onDelete
¿¿  
:
¿¿  !
ReferentialAction
¿¿" 3
.
¿¿3 4
Restrict
¿¿4 <
)
¿¿< =
;
¿¿= >
}
¡¡ 
)
¡¡ 
;
¡¡ 
migrationBuilder
√√ 
.
√√ 
CreateTable
√√ (
(
√√( )
name
ƒƒ 
:
ƒƒ 
$str
ƒƒ #
,
ƒƒ# $
columns
≈≈ 
:
≈≈ 
table
≈≈ 
=>
≈≈ !
new
≈≈" %
{
∆∆ 
Id
«« 
=
«« 
table
«« 
.
«« 
Column
«« %
<
««% &
int
««& )
>
««) *
(
««* +
type
««+ /
:
««/ 0
$str
««1 6
,
««6 7
nullable
««8 @
:
««@ A
false
««B G
)
««G H
.
»» 

Annotation
»» #
(
»»# $
$str
»»$ 8
,
»»8 9
$str
»»: @
)
»»@ A
,
»»A B
Cantidad
…… 
=
…… 
table
…… $
.
……$ %
Column
……% +
<
……+ ,
int
……, /
>
……/ 0
(
……0 1
type
……1 5
:
……5 6
$str
……7 <
,
……< =
nullable
……> F
:
……F G
true
……H L
)
……L M
,
……M N
ItemId
   
=
   
table
   "
.
  " #
Column
  # )
<
  ) *
int
  * -
>
  - .
(
  . /
type
  / 3
:
  3 4
$str
  5 :
,
  : ;
nullable
  < D
:
  D E
true
  F J
)
  J K
,
  K L
PedidoId
ÀÀ 
=
ÀÀ 
table
ÀÀ $
.
ÀÀ$ %
Column
ÀÀ% +
<
ÀÀ+ ,
int
ÀÀ, /
>
ÀÀ/ 0
(
ÀÀ0 1
type
ÀÀ1 5
:
ÀÀ5 6
$str
ÀÀ7 <
,
ÀÀ< =
nullable
ÀÀ> F
:
ÀÀF G
true
ÀÀH L
)
ÀÀL M
,
ÀÀM N 
ProveedorGanadorId
ÃÃ &
=
ÃÃ' (
table
ÃÃ) .
.
ÃÃ. /
Column
ÃÃ/ 5
<
ÃÃ5 6
int
ÃÃ6 9
>
ÃÃ9 :
(
ÃÃ: ;
type
ÃÃ; ?
:
ÃÃ? @
$str
ÃÃA F
,
ÃÃF G
nullable
ÃÃH P
:
ÃÃP Q
true
ÃÃR V
)
ÃÃV W
}
ÕÕ 
,
ÕÕ 
constraints
ŒŒ 
:
ŒŒ 
table
ŒŒ "
=>
ŒŒ# %
{
œœ 
table
–– 
.
–– 

PrimaryKey
–– $
(
––$ %
$str
––% 5
,
––5 6
x
––7 8
=>
––9 ;
x
––< =
.
––= >
Id
––> @
)
––@ A
;
––A B
table
—— 
.
—— 

ForeignKey
—— $
(
——$ %
name
““ 
:
““ 
$str
““ :
,
““: ;
column
”” 
:
”” 
x
””  !
=>
””" $
x
””% &
.
””& '
ItemId
””' -
,
””- .
principalTable
‘‘ &
:
‘‘& '
$str
‘‘( .
,
‘‘. /
principalColumn
’’ '
:
’’' (
$str
’’) -
,
’’- .
onDelete
÷÷  
:
÷÷  !
ReferentialAction
÷÷" 3
.
÷÷3 4
Restrict
÷÷4 <
)
÷÷< =
;
÷÷= >
table
◊◊ 
.
◊◊ 

ForeignKey
◊◊ $
(
◊◊$ %
name
ÿÿ 
:
ÿÿ 
$str
ÿÿ >
,
ÿÿ> ?
column
ŸŸ 
:
ŸŸ 
x
ŸŸ  !
=>
ŸŸ" $
x
ŸŸ% &
.
ŸŸ& '
PedidoId
ŸŸ' /
,
ŸŸ/ 0
principalTable
⁄⁄ &
:
⁄⁄& '
$str
⁄⁄( 0
,
⁄⁄0 1
principalColumn
€€ '
:
€€' (
$str
€€) -
,
€€- .
onDelete
‹‹  
:
‹‹  !
ReferentialAction
‹‹" 3
.
‹‹3 4
Restrict
‹‹4 <
)
‹‹< =
;
‹‹= >
table
›› 
.
›› 

ForeignKey
›› $
(
››$ %
name
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ K
,
ﬁﬁK L
column
ﬂﬂ 
:
ﬂﬂ 
x
ﬂﬂ  !
=>
ﬂﬂ" $
x
ﬂﬂ% &
.
ﬂﬂ& ' 
ProveedorGanadorId
ﬂﬂ' 9
,
ﬂﬂ9 :
principalTable
‡‡ &
:
‡‡& '
$str
‡‡( 3
,
‡‡3 4
principalColumn
·· '
:
··' (
$str
··) -
,
··- .
onDelete
‚‚  
:
‚‚  !
ReferentialAction
‚‚" 3
.
‚‚3 4
Restrict
‚‚4 <
)
‚‚< =
;
‚‚= >
}
„„ 
)
„„ 
;
„„ 
migrationBuilder
ÂÂ 
.
ÂÂ 
CreateTable
ÂÂ (
(
ÂÂ( )
name
ÊÊ 
:
ÊÊ 
$str
ÊÊ 4
,
ÊÊ4 5
columns
ÁÁ 
:
ÁÁ 
table
ÁÁ 
=>
ÁÁ !
new
ÁÁ" %
{
ËË 
Id
ÈÈ 
=
ÈÈ 
table
ÈÈ 
.
ÈÈ 
Column
ÈÈ %
<
ÈÈ% &
int
ÈÈ& )
>
ÈÈ) *
(
ÈÈ* +
type
ÈÈ+ /
:
ÈÈ/ 0
$str
ÈÈ1 6
,
ÈÈ6 7
nullable
ÈÈ8 @
:
ÈÈ@ A
false
ÈÈB G
)
ÈÈG H
.
ÍÍ 

Annotation
ÍÍ #
(
ÍÍ# $
$str
ÍÍ$ 8
,
ÍÍ8 9
$str
ÍÍ: @
)
ÍÍ@ A
,
ÍÍA B
Observaciones
ÎÎ !
=
ÎÎ" #
table
ÎÎ$ )
.
ÎÎ) *
Column
ÎÎ* 0
<
ÎÎ0 1
string
ÎÎ1 7
>
ÎÎ7 8
(
ÎÎ8 9
type
ÎÎ9 =
:
ÎÎ= >
$str
ÎÎ? N
,
ÎÎN O
nullable
ÎÎP X
:
ÎÎX Y
true
ÎÎZ ^
)
ÎÎ^ _
,
ÎÎ_ `
PedidoId
ÏÏ 
=
ÏÏ 
table
ÏÏ $
.
ÏÏ$ %
Column
ÏÏ% +
<
ÏÏ+ ,
int
ÏÏ, /
>
ÏÏ/ 0
(
ÏÏ0 1
type
ÏÏ1 5
:
ÏÏ5 6
$str
ÏÏ7 <
,
ÏÏ< =
nullable
ÏÏ> F
:
ÏÏF G
true
ÏÏH L
)
ÏÏL M
,
ÏÏM N%
SolicitudDeCotizacionId
ÌÌ +
=
ÌÌ, -
table
ÌÌ. 3
.
ÌÌ3 4
Column
ÌÌ4 :
<
ÌÌ: ;
int
ÌÌ; >
>
ÌÌ> ?
(
ÌÌ? @
type
ÌÌ@ D
:
ÌÌD E
$str
ÌÌF K
,
ÌÌK L
nullable
ÌÌM U
:
ÌÌU V
true
ÌÌW [
)
ÌÌ[ \
}
ÓÓ 
,
ÓÓ 
constraints
ÔÔ 
:
ÔÔ 
table
ÔÔ "
=>
ÔÔ# %
{
 
table
ÒÒ 
.
ÒÒ 

PrimaryKey
ÒÒ $
(
ÒÒ$ %
$str
ÒÒ% F
,
ÒÒF G
x
ÒÒH I
=>
ÒÒJ L
x
ÒÒM N
.
ÒÒN O
Id
ÒÒO Q
)
ÒÒQ R
;
ÒÒR S
table
ÚÚ 
.
ÚÚ 

ForeignKey
ÚÚ $
(
ÚÚ$ %
name
ÛÛ 
:
ÛÛ 
$str
ÛÛ O
,
ÛÛO P
column
ÙÙ 
:
ÙÙ 
x
ÙÙ  !
=>
ÙÙ" $
x
ÙÙ% &
.
ÙÙ& '
PedidoId
ÙÙ' /
,
ÙÙ/ 0
principalTable
ıı &
:
ıı& '
$str
ıı( 0
,
ıı0 1
principalColumn
ˆˆ '
:
ˆˆ' (
$str
ˆˆ) -
,
ˆˆ- .
onDelete
˜˜  
:
˜˜  !
ReferentialAction
˜˜" 3
.
˜˜3 4
Restrict
˜˜4 <
)
˜˜< =
;
˜˜= >
table
¯¯ 
.
¯¯ 

ForeignKey
¯¯ $
(
¯¯$ %
name
˘˘ 
:
˘˘ 
$str
˘˘ m
,
˘˘m n
column
˙˙ 
:
˙˙ 
x
˙˙  !
=>
˙˙" $
x
˙˙% &
.
˙˙& '%
SolicitudDeCotizacionId
˙˙' >
,
˙˙> ?
principalTable
˚˚ &
:
˚˚& '
$str
˚˚( ?
,
˚˚? @
principalColumn
¸¸ '
:
¸¸' (
$str
¸¸) -
,
¸¸- .
onDelete
˝˝  
:
˝˝  !
ReferentialAction
˝˝" 3
.
˝˝3 4
Restrict
˝˝4 <
)
˝˝< =
;
˝˝= >
}
˛˛ 
)
˛˛ 
;
˛˛ 
migrationBuilder
ÄÄ 
.
ÄÄ 
CreateTable
ÄÄ (
(
ÄÄ( )
name
ÅÅ 
:
ÅÅ 
$str
ÅÅ 9
,
ÅÅ9 :
columns
ÇÇ 
:
ÇÇ 
table
ÇÇ 
=>
ÇÇ !
new
ÇÇ" %
{
ÉÉ 
Id
ÑÑ 
=
ÑÑ 
table
ÑÑ 
.
ÑÑ 
Column
ÑÑ %
<
ÑÑ% &
int
ÑÑ& )
>
ÑÑ) *
(
ÑÑ* +
type
ÑÑ+ /
:
ÑÑ/ 0
$str
ÑÑ1 6
,
ÑÑ6 7
nullable
ÑÑ8 @
:
ÑÑ@ A
false
ÑÑB G
)
ÑÑG H
.
ÖÖ 

Annotation
ÖÖ #
(
ÖÖ# $
$str
ÖÖ$ 8
,
ÖÖ8 9
$str
ÖÖ: @
)
ÖÖ@ A
,
ÖÖA B
PrecioUnitario
ÜÜ "
=
ÜÜ# $
table
ÜÜ% *
.
ÜÜ* +
Column
ÜÜ+ 1
<
ÜÜ1 2
decimal
ÜÜ2 9
>
ÜÜ9 :
(
ÜÜ: ;
type
ÜÜ; ?
:
ÜÜ? @
$str
ÜÜA O
,
ÜÜO P
nullable
ÜÜQ Y
:
ÜÜY Z
true
ÜÜ[ _
)
ÜÜ_ `
,
ÜÜ` a
PrecioTotal
áá 
=
áá  !
table
áá" '
.
áá' (
Column
áá( .
<
áá. /
decimal
áá/ 6
>
áá6 7
(
áá7 8
type
áá8 <
:
áá< =
$str
áá> L
,
ááL M
nullable
ááN V
:
ááV W
true
ááX \
)
áá\ ]
,
áá] ^
ItemXPedidoId
àà !
=
àà" #
table
àà$ )
.
àà) *
Column
àà* 0
<
àà0 1
int
àà1 4
>
àà4 5
(
àà5 6
type
àà6 :
:
àà: ;
$str
àà< A
,
ààA B
nullable
ààC K
:
ààK L
true
ààM Q
)
ààQ R
,
ààR S%
SolicitudDeCotizacionId
ââ +
=
ââ, -
table
ââ. 3
.
ââ3 4
Column
ââ4 :
<
ââ: ;
int
ââ; >
>
ââ> ?
(
ââ? @
type
ââ@ D
:
ââD E
$str
ââF K
,
ââK L
nullable
ââM U
:
ââU V
true
ââW [
)
ââ[ \
}
ää 
,
ää 
constraints
ãã 
:
ãã 
table
ãã "
=>
ãã# %
{
åå 
table
çç 
.
çç 

PrimaryKey
çç $
(
çç$ %
$str
çç% K
,
ççK L
x
ççM N
=>
ççO Q
x
ççR S
.
ççS T
Id
ççT V
)
ççV W
;
ççW X
table
éé 
.
éé 

ForeignKey
éé $
(
éé$ %
name
èè 
:
èè 
$str
èè ^
,
èè^ _
column
êê 
:
êê 
x
êê  !
=>
êê" $
x
êê% &
.
êê& '
ItemXPedidoId
êê' 4
,
êê4 5
principalTable
ëë &
:
ëë& '
$str
ëë( 5
,
ëë5 6
principalColumn
íí '
:
íí' (
$str
íí) -
,
íí- .
onDelete
ìì  
:
ìì  !
ReferentialAction
ìì" 3
.
ìì3 4
Restrict
ìì4 <
)
ìì< =
;
ìì= >
table
îî 
.
îî 

ForeignKey
îî $
(
îî$ %
name
ïï 
:
ïï 
$str
ïï r
,
ïïr s
column
ññ 
:
ññ 
x
ññ  !
=>
ññ" $
x
ññ% &
.
ññ& '%
SolicitudDeCotizacionId
ññ' >
,
ññ> ?
principalTable
óó &
:
óó& '
$str
óó( ?
,
óó? @
principalColumn
òò '
:
òò' (
$str
òò) -
,
òò- .
onDelete
ôô  
:
ôô  !
ReferentialAction
ôô" 3
.
ôô3 4
Restrict
ôô4 <
)
ôô< =
;
ôô= >
}
öö 
)
öö 
;
öö 
migrationBuilder
úú 
.
úú 
CreateIndex
úú (
(
úú( )
name
ùù 
:
ùù 
$str
ùù 5
,
ùù5 6
table
ûû 
:
ûû 
$str
ûû *
,
ûû* +
column
üü 
:
üü 
$str
üü "
)
üü" #
;
üü# $
migrationBuilder
°° 
.
°° 
CreateIndex
°° (
(
°°( )
name
¢¢ 
:
¢¢ 
$str
¢¢ -
,
¢¢- .
table
££ 
:
££ 
$str
££ "
,
££" #
column
§§ 
:
§§ 
$str
§§ "
)
§§" #
;
§§# $
migrationBuilder
¶¶ 
.
¶¶ 
CreateIndex
¶¶ (
(
¶¶( )
name
ßß 
:
ßß 
$str
ßß -
,
ßß- .
table
®® 
:
®® 
$str
®® $
,
®®$ %
column
©© 
:
©© 
$str
©©  
)
©©  !
;
©©! "
migrationBuilder
´´ 
.
´´ 
CreateIndex
´´ (
(
´´( )
name
¨¨ 
:
¨¨ 
$str
¨¨ /
,
¨¨/ 0
table
≠≠ 
:
≠≠ 
$str
≠≠ $
,
≠≠$ %
column
ÆÆ 
:
ÆÆ 
$str
ÆÆ "
)
ÆÆ" #
;
ÆÆ# $
migrationBuilder
∞∞ 
.
∞∞ 
CreateIndex
∞∞ (
(
∞∞( )
name
±± 
:
±± 
$str
±± 9
,
±±9 :
table
≤≤ 
:
≤≤ 
$str
≤≤ $
,
≤≤$ %
column
≥≥ 
:
≥≥ 
$str
≥≥ ,
)
≥≥, -
;
≥≥- .
migrationBuilder
µµ 
.
µµ 
CreateIndex
µµ (
(
µµ( )
name
∂∂ 
:
∂∂ 
$str
∂∂ J
,
∂∂J K
table
∑∑ 
:
∑∑ 
$str
∑∑ :
,
∑∑: ;
column
∏∏ 
:
∏∏ 
$str
∏∏ '
)
∏∏' (
;
∏∏( )
migrationBuilder
∫∫ 
.
∫∫ 
CreateIndex
∫∫ (
(
∫∫( )
name
ªª 
:
ªª 
$str
ªª T
,
ªªT U
table
ºº 
:
ºº 
$str
ºº :
,
ºº: ;
column
ΩΩ 
:
ΩΩ 
$str
ΩΩ 1
)
ΩΩ1 2
;
ΩΩ2 3
migrationBuilder
øø 
.
øø 
CreateIndex
øø (
(
øø( )
name
¿¿ 
:
¿¿ 
$str
¿¿ 0
,
¿¿0 1
table
¡¡ 
:
¡¡ 
$str
¡¡ '
,
¡¡' (
column
¬¬ 
:
¬¬ 
$str
¬¬  
)
¬¬  !
;
¬¬! "
migrationBuilder
ƒƒ 
.
ƒƒ 
CreateIndex
ƒƒ (
(
ƒƒ( )
name
≈≈ 
:
≈≈ 
$str
≈≈ 5
,
≈≈5 6
table
∆∆ 
:
∆∆ 
$str
∆∆ '
,
∆∆' (
column
«« 
:
«« 
$str
«« %
)
««% &
;
««& '
migrationBuilder
…… 
.
…… 
CreateIndex
…… (
(
……( )
name
   
:
   
$str
   0
,
  0 1
table
ÀÀ 
:
ÀÀ 
$str
ÀÀ 
,
ÀÀ  
column
ÃÃ 
:
ÃÃ 
$str
ÃÃ (
)
ÃÃ( )
;
ÃÃ) *
migrationBuilder
ŒŒ 
.
ŒŒ 
CreateIndex
ŒŒ (
(
ŒŒ( )
name
œœ 
:
œœ 
$str
œœ @
,
œœ@ A
table
–– 
:
–– 
$str
–– 5
,
––5 6
column
—— 
:
—— 
$str
—— "
)
——" #
;
——# $
migrationBuilder
”” 
.
”” 
CreateIndex
”” (
(
””( )
name
‘‘ 
:
‘‘ 
$str
‘‘ O
,
‘‘O P
table
’’ 
:
’’ 
$str
’’ 5
,
’’5 6
column
÷÷ 
:
÷÷ 
$str
÷÷ 1
)
÷÷1 2
;
÷÷2 3
migrationBuilder
ÿÿ 
.
ÿÿ 
CreateIndex
ÿÿ (
(
ÿÿ( )
name
ŸŸ 
:
ŸŸ 
$str
ŸŸ <
,
ŸŸ< =
table
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄ .
,
⁄⁄. /
column
€€ 
:
€€ 
$str
€€ %
)
€€% &
;
€€& '
migrationBuilder
›› 
.
›› 
CreateIndex
›› (
(
››( )
name
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ N
,
ﬁﬁN O
table
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ .
,
ﬂﬂ. /
column
‡‡ 
:
‡‡ 
$str
‡‡ 7
)
‡‡7 8
;
‡‡8 9
}
·· 	
	protected
„„ 
override
„„ 
void
„„ 
Down
„„  $
(
„„$ %
MigrationBuilder
„„% 5
migrationBuilder
„„6 F
)
„„F G
{
‰‰ 	
migrationBuilder
ÂÂ 
.
ÂÂ 
	DropTable
ÂÂ &
(
ÂÂ& '
name
ÊÊ 
:
ÊÊ 
$str
ÊÊ )
)
ÊÊ) *
;
ÊÊ* +
migrationBuilder
ËË 
.
ËË 
	DropTable
ËË &
(
ËË& '
name
ÈÈ 
:
ÈÈ 
$str
ÈÈ !
)
ÈÈ! "
;
ÈÈ" #
migrationBuilder
ÎÎ 
.
ÎÎ 
	DropTable
ÎÎ &
(
ÎÎ& '
name
ÏÏ 
:
ÏÏ 
$str
ÏÏ 9
)
ÏÏ9 :
;
ÏÏ: ;
migrationBuilder
ÓÓ 
.
ÓÓ 
	DropTable
ÓÓ &
(
ÓÓ& '
name
ÔÔ 
:
ÔÔ 
$str
ÔÔ &
)
ÔÔ& '
;
ÔÔ' (
migrationBuilder
ÒÒ 
.
ÒÒ 
	DropTable
ÒÒ &
(
ÒÒ& '
name
ÚÚ 
:
ÚÚ 
$str
ÚÚ 4
)
ÚÚ4 5
;
ÚÚ5 6
migrationBuilder
ÙÙ 
.
ÙÙ 
	DropTable
ÙÙ &
(
ÙÙ& '
name
ıı 
:
ıı 
$str
ıı #
)
ıı# $
;
ıı$ %
migrationBuilder
˜˜ 
.
˜˜ 
	DropTable
˜˜ &
(
˜˜& '
name
¯¯ 
:
¯¯ 
$str
¯¯ -
)
¯¯- .
;
¯¯. /
migrationBuilder
˙˙ 
.
˙˙ 
	DropTable
˙˙ &
(
˙˙& '
name
˚˚ 
:
˚˚ 
$str
˚˚ 
)
˚˚ 
;
˚˚ 
migrationBuilder
˝˝ 
.
˝˝ 
	DropTable
˝˝ &
(
˝˝& '
name
˛˛ 
:
˛˛ 
$str
˛˛ 
)
˛˛ 
;
˛˛  
migrationBuilder
ÄÄ 
.
ÄÄ 
	DropTable
ÄÄ &
(
ÄÄ& '
name
ÅÅ 
:
ÅÅ 
$str
ÅÅ !
)
ÅÅ! "
;
ÅÅ" #
migrationBuilder
ÉÉ 
.
ÉÉ 
	DropTable
ÉÉ &
(
ÉÉ& '
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ 3
)
ÑÑ3 4
;
ÑÑ4 5
migrationBuilder
ÜÜ 
.
ÜÜ 
	DropTable
ÜÜ &
(
ÜÜ& '
name
áá 
:
áá 
$str
áá $
)
áá$ %
;
áá% &
}
àà 	
}
ââ 
}ää 