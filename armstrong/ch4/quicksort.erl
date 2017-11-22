-module(quicksort).
-export([sort/1]).

sort([]) -> [];
sort([P|T]) -> sort([X || X <- T, X < P])
               ++ [P] ++
               sort([ X || X <- T, X >= P]).
