-module(one).
-export([subarraySum/1]).

subarraySum(Arr) ->
    subarraySum(Arr, Arr, 1, 0).

subarraySum(Arr, _, N, S) when erlang:length(Arr) < N ->
    S;
subarraySum(Arr, [H|T], N, S) when erlang:length([H|T]) >= N ->
    subarraySum(Arr, T, N, S + sum([H|T], N));
subarraySum(Arr, _, N, S) ->
    subarraySum(Arr, Arr, N + 1, S).


sum(Arr, N) ->
    sum(Arr, 0, N, 0).

sum([], S, _, _) ->
    S;
sum([H|T], S, N, M) when M < N ->
    sum(T, S + H, N, M + 1);
sum(_, S, _, _) -> S.
