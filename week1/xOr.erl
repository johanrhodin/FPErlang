-module(xOr).
-export([xOr/2, xor2/2, xor3/2, maxThree/3, howManyEqual/3]).

xOr(true, false) ->
  true;
xOr(false, true) ->
  true;
xOr(_,_) ->
  false.

xor2(X, Y) ->
  X =/= Y.

xor3(X, Y) ->
  not(X and Y).

maxThree(A, B, C) ->
  max(A,max(B,C)).

howManyEqual(D, D, D) ->
  3;
howManyEqual(D, D, _) ->
  2;
howManyEqual(_, D, D) ->
  2;
howManyEqual(D, _, D) ->
  2;
howManyEqual(_, _, _) ->
  0.
