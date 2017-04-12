-module(second).
-export([hypotenuse/2,perimeter/2]).

hypotenuse(Side1, Side2) ->
  math:sqrt(first:square(Side1)+first:square(Side2)).

perimeter(Shortside1, Shortside2) ->
  Shortside1+Shortside2+second:hypotenuse(Shortside1,Shortside2).
