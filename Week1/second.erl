-module(second).
-export([hypothenuse/2,area/2,perimeter/2]).

hypothenuse(X,Y) ->
    Z = first:square(X)+first:square(Y),
        math:sqrt(Z).

area(X,Y) ->
    A = first:mult(X*Y),
        A/2.

perimeter(X,Y) ->
    Z = hypothenuse(X,Y),
        X+Y+Z.