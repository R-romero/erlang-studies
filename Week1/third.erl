-module(third).
-export([is_zero/1,xOr/2,xOrF/2]).

is_zero(0) ->
    true;
is_zero(_) -> %Argument _ is ignored by Erlang compiler, this is useful when you want to do a "catch all" kind of argument
false.

xOr(true,false) ->
    true;
xOr(false,true) ->
    true;
xOr(_,_) ->
    false.

xOrF(X,X) -> %Here we take a different approach by first eliminating the false results(in this case, if X = Y(X))
    false;      %and then matching anything different as true
xOrF(_,_) -> 
    true.