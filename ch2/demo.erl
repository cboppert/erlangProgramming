-module(demo).
-export([double/1]).
-author("Francesco Cesarini").
-date("10/25/16").

% This is a comment
% Everything after % is ignored

double(Value) ->
   times(Value, 2).

times(A, B) ->
   A * B.
