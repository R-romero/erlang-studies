-module(assignment1).
-export([perimeter/1,perimeter_tests/0,area/1,area_tests/0,enclose/1,enclose_tests/0, binary/1]).

%%%-----------------------------------------------------------------
%% Variable Notes:
%% H for Height, W for Width
%% A for Side
%% R for Radius
%% B for Base
%%%-----------------------------------------------------------------

%%%-----------------------------------------------------------------
%% Define a function perimeter/1 which takes a shape and returns
%% the perimeter of the shape.
%%%-----------------------------------------------------------------
%% Choose a suitable representation of triangles, and augment area/1
%% and perimeter/1 to handle this case too.
%%%-----------------------------------------------------------------


perimeter({rectangle,H,W}) ->
    H*2+W+2;                                
perimeter({pentagon, A}) ->
    A*5;                                    
perimeter({circle, R}) ->
    2*math:pi() * R;                        
perimeter({isoscelesTriangle, A,B}) ->
    2*A+B.                                  

area({rectangle,H,W}) ->
    H*W; 
area({circle, R}) ->
    math:pi()*(R*R);        
area({isoscelesTriangle, A,B}) ->
    B*(math:sqrt((4*(A*A))-B*B))/4.         

%%%--------------------------------------------------------------
%% Define a function enclose/1 that takes a shape an returns the
%% smallest enclosing rectangle of the shape.
%%%--------------------------------------------------------------

enclose({circle,R}) ->
    {rectangle,R*2,R*2};                    
enclose({rectangle,H,W}) ->                 
    {rectangle,H,W};                        
enclose({equilateralTriangle, A}) ->        
        H = (A/2)*math:sqrt(3),             
        {rectangle,H,A};
enclose({isoscelesTriangle,A,B}) ->
    H = math:sqrt((B*B)-(A*A)/4),
    {rectangle,H,B}.

%%%--------------------------------------------------------------
%% Define a function bits/1 that takes a positive integer N and
%% returns the sum of the bits in the binary representation.
%%%--------------------------------------------------------------

binary(N) when N =< 0 ->
    false;
binary(N) when N == 1 ->
        1;
binary(N) when N == 0 ->
        0;
binary(N) when N rem 2 == 0->
    binary(N div 2);
binary (N) when N rem 2 /= 0 ->
    binary(N div 2).

%%%--------------------------------------------------------------
%% Tests
%%%--------------------------------------------------------------
perimeter_tests() ->
    8 = perimeter({rectangle,2,2}),
    25 = perimeter({pentagon, 5}),
    6.283185307179586 = perimeter({circle, 1}),
    9 = perimeter({isoscelesTriangle, 2,5}),
    all_tests_passed.

area_tests() ->
    6 = area({rectangle,2,3}),
    28.274333882308138 = area({circle,3}),
    4.47213595499958 = area({isoscelesTriangle, 3,4}),
    all_tests_passed.

enclose_tests() ->
    {rectangle, 2,2} = enclose({circle,1}),
    {rectangle, 3,3} = enclose({rectangle, 3,3}),
    {rectangle,5.196152422706632,6} = enclose({equilateralTriangle, 6}),
    {rectangle,4.58257569495584,5} = enclose({isoscelesTriangle,4,5}),
    all_tests_passed.
