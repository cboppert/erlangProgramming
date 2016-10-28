-module(shapes).
-export([area/1]).
-author("Francesco Cesarini").
-date("10/24/2016").

area({square,Side}) ->
   Side * Side;
area({circle, Radius}) ->
   math:pi() * Radius * Radius;
area({triangle, A, B, C}) ->
   S = (A + B + C)/2,
   math:sqrt(S*(S-A)*(S-B)*(S-C));
area(_Other) ->
   {error, invalid_object}.
