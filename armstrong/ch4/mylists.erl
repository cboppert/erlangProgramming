-module(mylists).
-export([map/2, sum/1]).

map(F, [H|T]) -> [F(H)|map(F,T)];
map(_, []) -> [].

sum([H|T]) -> H + sum(T);
sum([]) -> 0.
