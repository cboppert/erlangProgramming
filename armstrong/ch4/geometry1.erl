-module(geometry1).
-export([test/0,area/1]).

test() ->
   12 = area({rectangle, 3, 4}),
   16 = area({square, 4}),
   50.2654816 = area({circle, 4}),
   tests_worked.

% Clauses should be ordered from most used to least if possible
% as patterns are compared in the order the clauses are defined
area({rectangle, Width, Height}) -> Width * Height;
area({square, Side}) -> Side * Side;
area({circle, Radius}) -> 3.1415926 * Radius * Radius.
