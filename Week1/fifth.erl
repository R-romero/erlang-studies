-module(fifth).
-export([fac/1,fib/1,pieces/1,pieces3d/1]).

fac(0) ->
    1;
fac(N) when N>0 ->
    fac(N-1)*N.

%Fibonacci numbers
%Give a recursive definition of the function fib/1 computing the Fibonacci numbers, and give a step-by-step evaluation of fib(4).


fib(0) ->
    0;
fib(1) ->
    1;
fib(X) when X > 1->
    fib(X-1)+fib(X-2).

% STEP-BY-STEP for fib(4)
% fib(4)
% = fib(3) + fib(2)
% = (fib(2) + fib(1)) + 1
% = (1 + 1) + 1
% = 3

%How many pieces?
%Define a function pieces so that pieces(N) tells you the maximum number of pieces into which you can cut a
%piece of paper with N straight line cuts.

pieces(0) ->
    1;
pieces(1) ->
    2;
pieces(N) ->
    N + (N-1) + pieces(N-2).

pieces3d(0) ->
    1;
pieces3d(N) ->
    pieces3d(N-1) + pieces(N-1).
