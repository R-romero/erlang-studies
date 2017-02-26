-module(fourth).
-export([xOrF1/2,xOrF2/2,xOrF3/2,maxThree/3,howManyEqual/3]).

%Exclusive or
%In the previous video step on pattern matching we saw two ways of defining “exclusive or”.
%Give at least three others.

xOrF1(X,Y) ->   
    X=/=Y.

xOrF2(X,Y) ->
    X == not Y.

xOrF3(X,Y) ->
    not (X==Y).

%Maximum of three
%Give a definition of the function maxThree which takes three integers and returns the maximum of the three.
%You can use the max function, which gives the maximum of two numbers, in writing your definition.

maxThree(X,Y,Z) ->
    max(max(X,Y),Z).

%How many equal?
%Give a definition of the function howManyEqual which takes three integers and returns an integer,
%counting how many of its three arguments are equal.

howManyEqual(X,X,X) -> 3;
howManyEqual(X,X,_) -> 2;
howManyEqual(X,_,X) -> 2;
howManyEqual(_,X,X) -> 2;
howManyEqual(_,_,_) -> 0.
    
    
 