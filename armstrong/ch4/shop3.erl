-module(shop3).
-export([total/1]).

% Wow that's sick!
total(L) -> mylists:sum([ shop:cost(What) * N || {What, N} <- L ]).
