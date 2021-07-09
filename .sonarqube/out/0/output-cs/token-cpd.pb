ǧ
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
equals	##| �
objItemXProveedor
##� �
.
##� �
ItemId
##� �
join
##� �
objProveedor
##� �
in
##� �
_context
##� �
.
##� �
	Proveedor
##� �
on
##� �
objItemXProveedor
##� �
.
##� �
ProveedorId
##� �
equals
##� �
objProveedor
##� �
.
##� �
Id
##� �
where
##� �
objItem
##� �
.
##� �
Id
##� �
==
##� �
id
##� �
select
##� �
new
##� �
{
##� �
id
##� �
=
##� �
objProveedor
##� �
.
##� �
Id
##� �
,
##� �
nombre
##� �
=
##� �
objProveedor
##� �
.
##� �
Nombre
##� �
}
##� �
;
##� �
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
CandidatosPorItem	88s �
>
88� �&
listaDeCandidatosPorItem
88� �
)
88� �
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
ItemId	kkz �
==
kk� �"
objCandidatosPorItem
kk� �
.
kk� �
ItemId
kk� �
&&
kk� �
objItemXProveedor
kk� �
.
kk� �
ProveedorId
kk� �
==
kk� �!
objCandidatoPorItem
kk� �
.
kk� �
ProveedorId
kk� �
select
kk� �
objItemXProveedor
kk� �
;
kk� �
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
�� 
if
�� 
(
�� "
objCandidatosPorItem
�� ,
[
��, -
i
��- .
]
��. /
.
��/ 0
Precio
��0 6
<
��7 8
precioGanador
��9 F
)
��F G
{
�� 
precioGanador
�� %
=
��& '"
objCandidatosPorItem
��( <
[
��< =
i
��= >
]
��> ?
.
��? @
Precio
��@ F
;
��F G
indexGanador
�� $
=
��% &
i
��' (
;
��( )
}
�� 
}
�� 
}
�� "
objCandidatosPorItem
��  
[
��  !
indexGanador
��! -
]
��- .
.
��. /
	EsGanador
��/ 8
=
��9 :
true
��; ?
;
��? @
return
�� "
objCandidatosPorItem
�� '
;
��' (
}
�� 	
public
�� 
class
�� 
GanadorPorItem
�� #
{
�� 	
public
�� 
int
�� 
ProveedorId
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
public
�� 
string
�� 
ProveedorNombre
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
int
�� 
ItemId
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 
ItemDescripcion
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
decimal
�� 

ItemPrecio
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
}
�� 	
private
�� 
List
�� 
<
�� 
GanadorPorItem
�� #
>
��# $@
2convertirListaDeCandidatosPorItemAListaDeGanadores
��% W
(
��W X
List
��X \
<
��\ ]
CandidatosPorItem
��] n
>
��n o'
listaDeCandidatosPorItem��p �
)��� �
{
�� 	
List
�� 
<
�� 
GanadorPorItem
�� 
>
��  #
listaDeGanadorPorItem
��! 6
=
��7 8
new
��9 <
List
��= A
<
��A B
GanadorPorItem
��B P
>
��P Q
(
��Q R
)
��R S
;
��S T
foreach
�� 
(
�� 
CandidatosPorItem
�� &"
objCandidatosPorItem
��' ;
in
��< >&
listaDeCandidatosPorItem
��? W
)
��W X
{
�� 
GanadorPorItem
�� 
objGanadorPorItem
�� 0
=
��1 2
new
��3 6
GanadorPorItem
��7 E
(
��E F
)
��F G
;
��G H
objGanadorPorItem
�� !
.
��! "
ItemId
��" (
=
��) *"
objCandidatosPorItem
��+ ?
.
��? @
ItemId
��@ F
;
��F G
var
�� 
objItemQueBusco
�� #
=
��$ %
from
��& *
objItem
��+ 2
in
��3 5
_context
��6 >
.
��> ?
Item
��? C
where
��D I
objItem
��J Q
.
��Q R
Id
��R T
==
��U W
objGanadorPorItem
��X i
.
��i j
ItemId
��j p
select
��q w
objItem
��x 
;�� �
objGanadorPorItem
�� !
.
��! "
ItemDescripcion
��" 1
=
��2 3
objItemQueBusco
��4 C
.
��C D
Single
��D J
(
��J K
)
��K L
.
��L M
Descripcion
��M X
;
��X Y
foreach
�� 
(
�� 
CandidatoPorItem
�� )!
objCandidatoPorItem
��* =
in
��> @"
objCandidatosPorItem
��A U
.
��U V

candidatos
��V `
)
��` a
{
�� 
if
�� 
(
�� !
objCandidatoPorItem
�� +
.
��+ ,
	EsGanador
��, 5
)
��5 6
{
�� 
objGanadorPorItem
�� )
.
��) *
ProveedorId
��* 5
=
��6 7!
objCandidatoPorItem
��8 K
.
��K L
ProveedorId
��L W
;
��W X
objGanadorPorItem
�� )
.
��) *

ItemPrecio
��* 4
=
��5 6!
objCandidatoPorItem
��7 J
.
��J K
Precio
��K Q
;
��Q R
var
�� "
objProveedorQueBusco
�� 0
=
��1 2
from
��3 7
objProveedor
��8 D
in
��E G
_context
��H P
.
��P Q
	Proveedor
��Q Z
where
��[ `
objProveedor
��a m
.
��m n
Id
��n p
==
��q s 
objGanadorPorItem��t �
.��� �
ProveedorId��� �
select��� �
objProveedor��� �
;��� �
objGanadorPorItem
�� )
.
��) *
ProveedorNombre
��* 9
=
��: ;"
objProveedorQueBusco
��< P
.
��P Q
Single
��Q W
(
��W X
)
��X Y
.
��Y Z
Nombre
��Z `
;
��` a
}
�� 
}
�� #
listaDeGanadorPorItem
�� %
.
��% &
Add
��& )
(
��) *
objGanadorPorItem
��* ;
)
��; <
;
��< =
}
�� 
return
�� #
listaDeGanadorPorItem
�� (
;
��( )
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 

JsonResult
�� 
ObtenerGanador
�� (
(
��( )
[
��) *
FromBody
��* 2
]
��2 3
List
��4 8
<
��8 9
CandidatoAGanador
��9 J
>
��J K 
candidatosAGanador
��L ^
)
��^ _
{
�� 	
List
�� 
<
�� 
CandidatosPorItem
�� "
>
��" #&
listaDeCandidatosPorItem
��$ <
=
��= >
new
��? B
List
��C G
<
��G H
CandidatosPorItem
��H Y
>
��Y Z
(
��Z [
)
��[ \
;
��\ ]
foreach
�� 
(
�� 
CandidatoAGanador
�� &
candidatoAGanador
��' 8
in
��9 ; 
candidatosAGanador
��< N
)
��N O
{
�� &
listaDeCandidatosPorItem
�� (
=
��) *.
 agregarAListaDeCandidatosPorItem
��+ K
(
��K L
candidatoAGanador
��L ]
,
��] ^&
listaDeCandidatosPorItem
��_ w
)
��w x
;
��x y
}
�� 
foreach
�� 
(
�� 
CandidatosPorItem
�� &"
objCandidatosPorItem
��' ;
in
��< >&
listaDeCandidatosPorItem
��? W
)
��W X
{
�� "
objCandidatosPorItem
�� $
.
��$ %

candidatos
��% /
=
��0 1)
actualizarCandidatosPorItem
��2 M
(
��M N"
objCandidatosPorItem
��N b
)
��b c
;
��c d
}
�� 
foreach
�� 
(
�� 
CandidatosPorItem
�� &"
objCandidatosPorItem
��' ;
in
��< >&
listaDeCandidatosPorItem
��? W
)
��W X
{
�� "
objCandidatosPorItem
�� $
.
��$ %

candidatos
��% /
=
��0 1+
elegirCandidatoGanadorPorItem
��2 O
(
��O P"
objCandidatosPorItem
��P d
.
��d e

candidatos
��e o
)
��o p
;
��p q
}
�� 
return
�� 
Json
�� 
(
�� @
2convertirListaDeCandidatosPorItemAListaDeGanadores
�� J
(
��J K&
listaDeCandidatosPorItem
��K c
)
��c d
)
��d e
;
��e f
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %
GuardarGanador
��& 4
(
��4 5
[
��5 6
FromBody
��6 >
]
��> ?
List
��@ D
<
��D E
GanadorPorItem
��E S
>
��S T
objs
��U Y
)
��Y Z
{
�� 	
await
�� 
_context
�� 
.
�� 
SaveChangesAsync
�� +
(
��+ ,
)
��, -
;
��- .
return
�� 
Json
�� 
(
�� 
new
�� 
{
�� 
newUrl
�� $
=
��% &
Url
��' *
.
��* +
Action
��+ 1
(
��1 2
$str
��2 <
,
��< =
$str
��> Q
)
��Q R
}
��S T
)
��T U
;
��U V
}
�� 	
}
�� 
}�� �&
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
FileMode	$$x �
.
$$� �
Create
$$� �
)
$$� �
)
$$� �
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
}AA �
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
}## ��
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
PedidoEstadoId	HH �
equals
HH� �
objPedidoEstado
HH� �
.
HH� �
Id
HH� �
select
HH� �
new
HH� �
{
HH� �
	objPedido
HH� �
.
HH� �
Id
HH� �
,
HH� �
	objPedido
HH� �
.
HH� �$
DireccionDeSolicitante
HH� �
,
HH� �
	objPedido
HH� �
.
HH� �
	TipoDeUso
HH� �
,
HH� �
	objPedido
HH� �
.
HH� �
	EntregarA
HH� �
,
HH� �
	objPedido
HH� �
.
HH� � 
ActividadOperativa
HH� �
,
HH� �
	objPedido
HH� �
.
HH� �
Motivo
HH� �
,
HH� �
	objPedido
HH� �
.
HH� �
Fecha
HH� �
,
HH� �
objPedidoEstado
HH� �
.
HH� �
Descripcion
HH� �
}
HH� �
;
HH� �
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
MM� �
.
MM� �
ItemId
MM� �
join
MM� �
	objPedido
MM� �
in
MM� �
_context
MM� �
.
MM� �
Pedido
MM� �
on
MM� �
objItemXPedido
MM� �
.
MM� �
PedidoId
MM� �
equals
MM� �
	objPedido
MM� �
.
MM� �
Id
MM� �
where
MM� �
	objPedido
MM� �
.
MM� �
Id
MM� �
==
MM� �
id
MM� �
select
MM� �
new
MM� �
{
MM� �
ItemId
MM� �
=
MM� �
objItem
MM� �
.
MM� �
Id
MM� �
,
MM� �
objItem
MM� �
.
MM� �
Descripcion
MM� �
,
MM� �
objItemXPedido
MM� �
.
MM� �
Cantidad
MM� �
,
MM� �
objItemXPedido
MM� �
.
MM� �
Id
MM� �
,
MM� �
objItem
MM� �
.
MM� �
UnidadDeMedida
MM� �
}
MM� �
;
MM� �
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
(	XX �
obj
XX� �
.
XX� �
id
XX� �
)
XX� �
select
XX� �
objItemXPedido
XX� �
;
XX� �
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
�� 
=
�� 
pedidoQueQuiero
�� '
.
��' (
Single
��( .
(
��. /
)
��/ 0
;
��0 1
	objPedido
�� 
.
�� 
PedidoEstadoId
�� $
=
��% &
$num
��' (
;
��( )&
actualizarItemsDelPedido
�� $
(
��$ %

cantidades
��% /
)
��/ 0
;
��0 1
try
�� 
{
�� 
_context
�� 
.
�� 
Update
�� 
(
��  
	objPedido
��  )
)
��) *
;
��* +
await
�� 
_context
�� 
.
�� 
SaveChangesAsync
�� /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
catch
�� 
(
�� *
DbUpdateConcurrencyException
�� /
)
��/ 0
{
�� 
}
�� 
return
�� 
Json
�� 
(
�� 
new
�� 
{
�� 
newUrl
�� $
=
��% &
Url
��' *
.
��* +
Action
��+ 1
(
��1 2
$str
��2 D
,
��D E
$str
��F N
)
��N O
}
��P Q
)
��Q R
;
��R S
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %'
DesaprobarPedidoPendiente
��& ?
(
��? @
[
��@ A
FromBody
��A I
]
��I J+
ParametrosDesaprobarPendiente
��K h
obj
��i l
)
��l m
{
�� 	
int
�� 
id
�� 
=
�� 
obj
�� 
.
�� 
id
�� 
;
�� 
string
�� 
observacion
�� 
=
��  
obj
��! $
.
��$ %
observacion
��% 0
;
��0 1
List
�� 
<
�� 
Cantidad
�� 
>
�� 

cantidades
�� %
=
��& '
obj
��( +
.
��+ ,

cantidades
��, 6
;
��6 7
var
�� 
pedidoQueQuiero
�� 
=
��  !
from
��" &
pedido
��' -
in
��. 0
_context
��1 9
.
��9 :
Pedido
��: @
where
��A F
pedido
��G M
.
��M N
Id
��N P
==
��Q S
id
��T V
select
��W ]
pedido
��^ d
;
��d e
Pedido
�� 
	objPedido
�� 
=
�� 
new
�� "
Pedido
��# )
(
��) *
)
��* +
;
��+ ,
	objPedido
�� 
=
�� 
pedidoQueQuiero
�� '
.
��' (
Single
��( .
(
��. /
)
��/ 0
;
��0 1
	objPedido
�� 
.
�� 
PedidoEstadoId
�� $
=
��% &
$num
��' (
;
��( )
	objPedido
�� 
.
�� 
Observaciones1
�� $
=
��% &
observacion
��' 2
;
��2 3&
actualizarItemsDelPedido
�� $
(
��$ %

cantidades
��% /
)
��/ 0
;
��0 1
try
�� 
{
�� 
_context
�� 
.
�� 
Update
�� 
(
��  
	objPedido
��  )
)
��) *
;
��* +
await
�� 
_context
�� 
.
�� 
SaveChangesAsync
�� /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
catch
�� 
(
�� *
DbUpdateConcurrencyException
�� /
)
��/ 0
{
�� 
}
�� 
return
�� 
Json
�� 
(
�� 
new
�� 
{
�� 
newUrl
�� $
=
��% &
Url
��' *
.
��* +
Action
��+ 1
(
��1 2
$str
��2 D
,
��D E
$str
��F N
)
��N O
}
��P Q
)
��Q R
;
��R S
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %3
%AprobarPedidoAprobadoPorElSolicitante
��& K
(
��K L
[
��L M
FromBody
��M U
]
��U V(
ParametrosAprobarPendiente
��W q
obj
��r u
)
��u v
{
�� 	
int
�� 
id
�� 
=
�� 
obj
�� 
.
�� 
id
�� 
;
�� 
List
�� 
<
�� 
Cantidad
�� 
>
�� 

cantidades
�� %
=
��& '
obj
��( +
.
��+ ,

cantidades
��, 6
;
��6 7
var
�� 
pedidoQueQuiero
�� 
=
��  !
from
��" &
pedido
��' -
in
��. 0
_context
��1 9
.
��9 :
Pedido
��: @
where
��A F
pedido
��G M
.
��M N
Id
��N P
==
��Q S
id
��T V
select
��W ]
pedido
��^ d
;
��d e
Pedido
�� 
	objPedido
�� 
=
�� 
new
�� "
Pedido
��# )
(
��) *
)
��* +
;
��+ ,
	objPedido
�� 
=
�� 
pedidoQueQuiero
�� '
.
��' (
Single
��( .
(
��. /
)
��/ 0
;
��0 1
	objPedido
�� 
.
�� 
PedidoEstadoId
�� $
=
��% &
$num
��' (
;
��( )&
actualizarItemsDelPedido
�� $
(
��$ %

cantidades
��% /
)
��/ 0
;
��0 1
try
�� 
{
�� 
_context
�� 
.
�� 
Update
�� 
(
��  
	objPedido
��  )
)
��) *
;
��* +
await
�� 
_context
�� 
.
�� 
SaveChangesAsync
�� /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
catch
�� 
(
�� *
DbUpdateConcurrencyException
�� /
)
��/ 0
{
�� 
}
�� 
return
�� 
Json
�� 
(
�� 
new
�� 
{
�� 
newUrl
�� $
=
��% &
Url
��' *
.
��* +
Action
��+ 1
(
��1 2
$str
��2 S
,
��S T
$str
��U ]
)
��] ^
}
��_ `
)
��` a
;
��a b
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 
async
�� 
Task
�� 
<
�� 

JsonResult
�� $
>
��$ %6
(DesaprobarPedidoAprobadoPorElSolicitante
��& N
(
��N O
[
��O P
FromBody
��P X
]
��X Y+
ParametrosDesaprobarPendiente
��Z w
obj
��x {
)
��{ |
{
�� 	
int
�� 
id
�� 
=
�� 
obj
�� 
.
�� 
id
�� 
;
�� 
string
�� 
observacion
�� 
=
��  
obj
��! $
.
��$ %
observacion
��% 0
;
��0 1
List
�� 
<
�� 
Cantidad
�� 
>
�� 

cantidades
�� %
=
��& '
obj
��( +
.
��+ ,

cantidades
��, 6
;
��6 7
var
�� 
pedidoQueQuiero
�� 
=
��  !
from
��" &
pedido
��' -
in
��. 0
_context
��1 9
.
��9 :
Pedido
��: @
where
��A F
pedido
��G M
.
��M N
Id
��N P
==
��Q S
id
��T V
select
��W ]
pedido
��^ d
;
��d e
Pedido
�� 
	objPedido
�� 
=
�� 
new
�� "
Pedido
��# )
(
��) *
)
��* +
;
��+ ,
	objPedido
�� 
=
�� 
pedidoQueQuiero
�� '
.
��' (
Single
��( .
(
��. /
)
��/ 0
;
��0 1
	objPedido
�� 
.
�� 
PedidoEstadoId
�� $
=
��% &
$num
��' (
;
��( )
	objPedido
�� 
.
�� 
Observaciones2
�� $
=
��% &
observacion
��' 2
;
��2 3&
actualizarItemsDelPedido
�� $
(
��$ %

cantidades
��% /
)
��/ 0
;
��0 1
try
�� 
{
�� 
_context
�� 
.
�� 
Update
�� 
(
��  
	objPedido
��  )
)
��) *
;
��* +
await
�� 
_context
�� 
.
�� 
SaveChangesAsync
�� /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
catch
�� 
(
�� *
DbUpdateConcurrencyException
�� /
)
��/ 0
{
�� 
}
�� 
return
�� 
Json
�� 
(
�� 
new
�� 
{
�� 
newUrl
�� $
=
��% &
Url
��' *
.
��* +
Action
��+ 1
(
��1 2
$str
��2 S
,
��S T
$str
��U ]
)
��] ^
}
��_ `
)
��` a
;
��a b
}
�� 	
[
�� 	
HttpPost
��	 
]
�� 
public
�� 

JsonResult
�� .
 EnviarPedidoATodosLosProveedores
�� :
(
��: ;
[
��; <
FromBody
��< D
]
��D E
ParametrosEnviar
��F V
obj
��W Z
)
��Z [
{
�� 	
int
�� 
id
�� 
=
�� 
obj
�� 
.
�� 
id
�� 
;
�� 
try
�� 
{
�� 
}
�� 
catch
�� 
(
�� *
DbUpdateConcurrencyException
�� /
)
��/ 0
{
�� 
}
�� 
return
�� 
Json
�� 
(
�� 
new
�� 
{
�� 
newUrl
�� $
=
��% &
Url
��' *
.
��* +
Action
��+ 1
(
��1 2
$str
��2 O
,
��O P
$str
��Q Y
)
��Y Z
}
��[ \
)
��\ ]
;
��] ^
}
�� 	
public
�� 

JsonResult
�� 7
)ObtenerTodosLosPedidosPendientesConFiltro
�� C
(
��C D
string
��D J
campo
��K P
,
��P Q
string
��R X
valor
��Y ^
)
��^ _
{
�� 	
var
�� '
todosLosPedidosPendientes
�� )
=
��* +
from
��, 0
pedido
��1 7
in
��8 :
_context
��; C
.
��C D
Pedido
��D J
where
��K P
pedido
��Q W
.
��W X
PedidoEstadoId
��X f
==
��g i
$num
��j k
select
��l r
pedido
��s y
;
��y z
if
�� 
(
�� 
campo
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
Json
�� 
(
�� '
todosLosPedidosPendientes
�� 5
)
��5 6
;
��6 7
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
campo
�� 
==
�� 
$str
�� !
)
��! "
{
�� 
try
�� 
{
�� 
int
�� 
codigo
�� "
=
��# $
Convert
��% ,
.
��, -
ToInt32
��- 4
(
��4 5
valor
��5 :
)
��: ;
;
��; <'
todosLosPedidosPendientes
�� 1
=
��2 3
from
��4 8
pedido
��9 ?
in
��@ B
_context
��C K
.
��K L
Pedido
��L R
where
��S X
pedido
��Y _
.
��_ `
Id
��` b
>=
��c e
codigo
��f l
&&
��m o
pedido
��p v
.
��v w
PedidoEstadoId��w �
==��� �
$num��� �
select��� �
pedido��� �
;��� �
return
�� 
Json
�� #
(
��# $'
todosLosPedidosPendientes
��$ =
)
��= >
;
��> ?
}
�� 
catch
�� 
{
�� 
return
�� 
Json
�� #
(
��# $'
todosLosPedidosPendientes
��$ =
)
��= >
;
��> ?
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
campo
�� 
==
��  
$str
��! 5
)
��5 6
{
�� '
todosLosPedidosPendientes
�� 1
=
��2 3
from
��4 8
pedido
��9 ?
in
��@ B
_context
��C K
.
��K L
Pedido
��L R
where
��S X
pedido
��Y _
.
��_ ` 
ActividadOperativa
��` r
==
��s u
valor
��v {
&&
��| ~
pedido�� �
.��� �
PedidoEstadoId��� �
==��� �
$num��� �
select��� �
pedido��� �
;��� �
return
�� 
Json
�� #
(
��# $'
todosLosPedidosPendientes
��$ =
)
��= >
;
��> ?
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
campo
�� !
==
��" $
$str
��% 0
)
��0 1
{
�� '
todosLosPedidosPendientes
�� 5
=
��6 7
from
��8 <
pedido
��= C
in
��D F
_context
��G O
.
��O P
Pedido
��P V
where
��W \
pedido
��] c
.
��c d
	TipoDeUso
��d m
==
��n p
valor
��q v
&&
��w y
pedido��z �
.��� �
PedidoEstadoId��� �
==��� �
$num��� �
select��� �
pedido��� �
;��� �
return
�� "
Json
��# '
(
��' ('
todosLosPedidosPendientes
��( A
)
��A B
;
��B C
}
�� 
else
�� 
{
�� 
try
�� 
{
�� 
DateTime
��  (
fecha
��) .
=
��/ 0
Convert
��1 8
.
��8 9

ToDateTime
��9 C
(
��C D
valor
��D I
)
��I J
;
��J K'
todosLosPedidosPendientes
��  9
=
��: ;
from
��< @
pedido
��A G
in
��H J
_context
��K S
.
��S T
Pedido
��T Z
where
��[ `
pedido
��a g
.
��g h
Fecha
��h m
>=
��n p
fecha
��q v
&&
��w y
pedido��z �
.��� �
PedidoEstadoId��� �
==��� �
$num��� �
select��� �
pedido��� �
;��� �
return
��  &
Json
��' +
(
��+ ,'
todosLosPedidosPendientes
��, E
)
��E F
;
��F G
}
�� 
catch
�� !
{
�� 
return
��  &
Json
��' +
(
��+ ,'
todosLosPedidosPendientes
��, E
)
��E F
;
��F G
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
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
} �
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
} �	
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �
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
} �

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
} �
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
} �
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
} �
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
} �

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
} �
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
$str	z �
)
� �
)
� �
)
� �
;
� �
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
}:: ��
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
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
int
��& )
>
��) *
(
��* +
type
��+ /
:
��/ 0
$str
��1 6
,
��6 7
nullable
��8 @
:
��@ A
false
��B G
)
��G H
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
Fecha
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
DateTime
��) 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 D
,
��D E
nullable
��F N
:
��N O
true
��P T
)
��T U
,
��U V*
ValidacionDelJefeDeLogistica
�� 0
=
��1 2
table
��3 8
.
��8 9
Column
��9 ?
<
��? @
bool
��@ D
>
��D E
(
��E F
type
��F J
:
��J K
$str
��L Q
,
��Q R
nullable
��S [
:
��[ \
true
��] a
)
��a b
,
��b c
ProveedorId
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
int
��/ 2
>
��2 3
(
��3 4
type
��4 8
:
��8 9
$str
��: ?
,
��? @
nullable
��A I
:
��I J
true
��K O
)
��O P
,
��P Q+
SolicitudDeCotizacionEstadoId
�� 1
=
��2 3
table
��4 9
.
��9 :
Column
��: @
<
��@ A
int
��A D
>
��D E
(
��E F
type
��F J
:
��J K
$str
��L Q
,
��Q R
nullable
��S [
:
��[ \
true
��] a
)
��a b
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% ?
,
��? @
x
��A B
=>
��C E
x
��F G
.
��G H
Id
��H J
)
��J K
;
��K L
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� N
,
��N O
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
ProveedorId
��' 2
,
��2 3
principalTable
�� &
:
��& '
$str
��( 3
,
��3 4
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� r
,
��r s
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '+
SolicitudDeCotizacionEstadoId
��' D
,
��D E
principalTable
�� &
:
��& '
$str
��( E
,
��E F
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� )
,
��) *
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
int
��& )
>
��) *
(
��* +
type
��+ /
:
��/ 0
$str
��1 6
,
��6 7
nullable
��8 @
:
��@ A
false
��B G
)
��G H
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
Fecha
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
DateTime
��) 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 D
,
��D E
nullable
��F N
:
��N O
true
��P T
)
��T U
,
��U V
PedidoId
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
int
��, /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 <
,
��< =
nullable
��> F
:
��F G
true
��H L
)
��L M
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% ;
,
��; <
x
��= >
=>
��? A
x
��B C
.
��C D
Id
��D F
)
��F G
;
��G H
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� D
,
��D E
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
PedidoId
��' /
,
��/ 0
principalTable
�� &
:
��& '
$str
��( 0
,
��0 1
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� !
,
��! "
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
int
��& )
>
��) *
(
��* +
type
��+ /
:
��/ 0
$str
��1 6
,
��6 7
nullable
��8 @
:
��@ A
false
��B G
)
��G H
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
Fecha
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
DateTime
��) 1
>
��1 2
(
��2 3
type
��3 7
:
��7 8
$str
��9 D
,
��D E
nullable
��F N
:
��N O
true
��P T
)
��T U
,
��U V
Ruta
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
type
��0 4
:
��4 5
$str
��6 E
,
��E F
nullable
��G O
:
��O P
true
��Q U
)
��U V
,
��V W
Observaciones
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
string
��1 7
>
��7 8
(
��8 9
type
��9 =
:
��= >
$str
��? N
,
��N O
nullable
��P X
:
��X Y
true
��Z ^
)
��^ _
,
��_ `
PedidoId
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
int
��, /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 <
,
��< =
nullable
��> F
:
��F G
true
��H L
)
��L M
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 3
,
��3 4
x
��5 6
=>
��7 9
x
��: ;
.
��; <
Id
��< >
)
��> ?
;
��? @
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� <
,
��< =
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
PedidoId
��' /
,
��/ 0
principalTable
�� &
:
��& '
$str
��( 0
,
��0 1
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� #
,
��# $
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
int
��& )
>
��) *
(
��* +
type
��+ /
:
��/ 0
$str
��1 6
,
��6 7
nullable
��8 @
:
��@ A
false
��B G
)
��G H
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
Cantidad
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
int
��, /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 <
,
��< =
nullable
��> F
:
��F G
true
��H L
)
��L M
,
��M N
ItemId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
int
��* -
>
��- .
(
��. /
type
��/ 3
:
��3 4
$str
��5 :
,
��: ;
nullable
��< D
:
��D E
true
��F J
)
��J K
,
��K L
PedidoId
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
int
��, /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 <
,
��< =
nullable
��> F
:
��F G
true
��H L
)
��L M
,
��M N 
ProveedorGanadorId
�� &
=
��' (
table
��) .
.
��. /
Column
��/ 5
<
��5 6
int
��6 9
>
��9 :
(
��: ;
type
��; ?
:
��? @
$str
��A F
,
��F G
nullable
��H P
:
��P Q
true
��R V
)
��V W
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 5
,
��5 6
x
��7 8
=>
��9 ;
x
��< =
.
��= >
Id
��> @
)
��@ A
;
��A B
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� :
,
��: ;
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
ItemId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( .
,
��. /
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� >
,
��> ?
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
PedidoId
��' /
,
��/ 0
principalTable
�� &
:
��& '
$str
��( 0
,
��0 1
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� K
,
��K L
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& ' 
ProveedorGanadorId
��' 9
,
��9 :
principalTable
�� &
:
��& '
$str
��( 3
,
��3 4
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� 4
,
��4 5
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
int
��& )
>
��) *
(
��* +
type
��+ /
:
��/ 0
$str
��1 6
,
��6 7
nullable
��8 @
:
��@ A
false
��B G
)
��G H
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
Observaciones
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
string
��1 7
>
��7 8
(
��8 9
type
��9 =
:
��= >
$str
��? N
,
��N O
nullable
��P X
:
��X Y
true
��Z ^
)
��^ _
,
��_ `
PedidoId
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
int
��, /
>
��/ 0
(
��0 1
type
��1 5
:
��5 6
$str
��7 <
,
��< =
nullable
��> F
:
��F G
true
��H L
)
��L M
,
��M N%
SolicitudDeCotizacionId
�� +
=
��, -
table
��. 3
.
��3 4
Column
��4 :
<
��: ;
int
��; >
>
��> ?
(
��? @
type
��@ D
:
��D E
$str
��F K
,
��K L
nullable
��M U
:
��U V
true
��W [
)
��[ \
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% F
,
��F G
x
��H I
=>
��J L
x
��M N
.
��N O
Id
��O Q
)
��Q R
;
��R S
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� O
,
��O P
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
PedidoId
��' /
,
��/ 0
principalTable
�� &
:
��& '
$str
��( 0
,
��0 1
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� m
,
��m n
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '%
SolicitudDeCotizacionId
��' >
,
��> ?
principalTable
�� &
:
��& '
$str
��( ?
,
��? @
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� 9
,
��9 :
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
int
��& )
>
��) *
(
��* +
type
��+ /
:
��/ 0
$str
��1 6
,
��6 7
nullable
��8 @
:
��@ A
false
��B G
)
��G H
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
PrecioUnitario
�� "
=
��# $
table
��% *
.
��* +
Column
��+ 1
<
��1 2
decimal
��2 9
>
��9 :
(
��: ;
type
��; ?
:
��? @
$str
��A O
,
��O P
nullable
��Q Y
:
��Y Z
true
��[ _
)
��_ `
,
��` a
PrecioTotal
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
decimal
��/ 6
>
��6 7
(
��7 8
type
��8 <
:
��< =
$str
��> L
,
��L M
nullable
��N V
:
��V W
true
��X \
)
��\ ]
,
��] ^
ItemXPedidoId
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
int
��1 4
>
��4 5
(
��5 6
type
��6 :
:
��: ;
$str
��< A
,
��A B
nullable
��C K
:
��K L
true
��M Q
)
��Q R
,
��R S%
SolicitudDeCotizacionId
�� +
=
��, -
table
��. 3
.
��3 4
Column
��4 :
<
��: ;
int
��; >
>
��> ?
(
��? @
type
��@ D
:
��D E
$str
��F K
,
��K L
nullable
��M U
:
��U V
true
��W [
)
��[ \
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% K
,
��K L
x
��M N
=>
��O Q
x
��R S
.
��S T
Id
��T V
)
��V W
;
��W X
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� ^
,
��^ _
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
ItemXPedidoId
��' 4
,
��4 5
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� r
,
��r s
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '%
SolicitudDeCotizacionId
��' >
,
��> ?
principalTable
�� &
:
��& '
$str
��( ?
,
��? @
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 5
,
��5 6
table
�� 
:
�� 
$str
�� *
,
��* +
column
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� -
,
��- .
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� -
,
��- .
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� /
,
��/ 0
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 9
,
��9 :
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� ,
)
��, -
;
��- .
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� J
,
��J K
table
�� 
:
�� 
$str
�� :
,
��: ;
column
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� T
,
��T U
table
�� 
:
�� 
$str
�� :
,
��: ;
column
�� 
:
�� 
$str
�� 1
)
��1 2
;
��2 3
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 0
,
��0 1
table
�� 
:
�� 
$str
�� '
,
��' (
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 5
,
��5 6
table
�� 
:
�� 
$str
�� '
,
��' (
column
�� 
:
�� 
$str
�� %
)
��% &
;
��& '
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 0
,
��0 1
table
�� 
:
�� 
$str
�� 
,
��  
column
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� @
,
��@ A
table
�� 
:
�� 
$str
�� 5
,
��5 6
column
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� O
,
��O P
table
�� 
:
�� 
$str
�� 5
,
��5 6
column
�� 
:
�� 
$str
�� 1
)
��1 2
;
��2 3
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� <
,
��< =
table
�� 
:
�� 
$str
�� .
,
��. /
column
�� 
:
�� 
$str
�� %
)
��% &
;
��& '
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� N
,
��N O
table
�� 
:
�� 
$str
�� .
,
��. /
column
�� 
:
�� 
$str
�� 7
)
��7 8
;
��8 9
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� )
)
��) *
;
��* +
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 9
)
��9 :
;
��: ;
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� &
)
��& '
;
��' (
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 4
)
��4 5
;
��5 6
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� -
)
��- .
;
��. /
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
��  
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 3
)
��3 4
;
��4 5
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� $
)
��$ %
;
��% &
}
�� 	
}
�� 
}�� 