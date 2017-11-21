-module(libs_misc).
-export([map/2, for/3, sum/1]).

map(F, [H|T]) -> [F(H)| map(F, T)];
map(_, []) -> [].

% filter(F, [H|T]) when F(H) = true -> [H|filter(F,T)];
% filter(_, []) -> [].

for(Max, Max, F) -> [F(Max)];
for(I, Max, F) -> [F(I)|for(I + 1, Max, F)].

sum([H|T]) -> H + sum(T);
sum([]) -> 0.
