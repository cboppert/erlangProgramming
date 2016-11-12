-module(errors).
-export([factorial/1, test1/1, test2/1]).
-author("Cody Boppert").
-date("10/28/2016").
-chapter("Three").
-book("Programming Erlang by Francesco Cesarini and Simon Thompson").

% function clause error on factorial(-1)
factorial(N) when N > 0 ->
   N * factorial(N - 1);
factorial(0) -> 1.

% case clause error on test1(0)
test1(N) ->
   case N of
      -1 -> false;
      1 -> true
   end.

% if clause on test2(0)
test2(N) ->
   if
      N < 0 -> false;
      N > 0 -> true
   end.

% try catch examples
