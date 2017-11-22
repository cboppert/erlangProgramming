-module(shop2).
-export([total/1]).
-import(mylists, [sum/1, map/2]).

total(L) -> sum(map(fun({Item, N}) -> shop:cost(Item) * N end, L)).
