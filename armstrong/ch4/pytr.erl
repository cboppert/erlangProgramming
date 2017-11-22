-module(pytr).
-export([triples/1]).

% Pythagorean Triple for N
% All Cs for A*A + B*B = C*C and A + B + C < N

triples(N) when N >= 3 -> [ {A, B, C} ||
                            A <- lists:seq(1,N),
                            B <- lists:seq(1,N),
                            C <- lists:seq(1,N),
                            A + B + C =< N,
                            A*A + B*B =:= C*C ].
