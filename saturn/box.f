idiom [box]
import engine/modules/collision-grid


actor super class box

: either0  over 0= over 0= or ;

: /cbox  x 2v@ putCbox  ahb boxGrid addCbox ;
: (*box)  ( w h -- )  box one  w 2v!  /cbox ;
: ?box  ( w h -- )  either0 not if  (*box)  else  2drop  then ;

get-order xmling +order

    : *box  ( pen=xy w h -- )  ['] ?box  -rot   at@ 2+  sectw secth  stride2d ;
    :noname [ is onLoadBox ]   @dims *box ;
  
set-order

box start:  static# flags or! ;
 
