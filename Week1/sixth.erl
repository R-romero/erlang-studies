-module(sixth).
-export([fac/1,cntBye/1,fib/1,pNum/1]).

%%Tail Recursion module

%%Tail Recursion Factorial
fac(N) ->
    fac(N,1).

fac(0,P) ->
    P;
fac(N,P) when N>0 ->
    fac(N-1 ,P*N).

%%Tail Recursion Counter
cntBye(0) ->
    io:format("bye~n");
cntBye(N) when(N>0) ->
    io:format("~p~n",[N]),
    cntBye(N-1).

%%Tail Recursion Fibonacci
%%-N"Number", C"Current", P"Past"
fib(N) ->
    fib(N,0,1).

fib(0,C,_) ->
    C;
fib(N,C,P) when N > 0->
    fib(N-1, P+C, C).


%%Tail Recursion for Perfect Number check
%%-N"Number",C"Count",S"Solution"
pNum(N) ->
    N == pNum(N,1,0).

pNum(N,C,S) when C > (N/2)->
    S;
pNum(N,C,S) when N rem C == 0 ->
    pNum(N,C+1,S+C);
pNum(N,C,S) ->
    pNum(N,C+1,S).