-module(recu).
-export([fib/1, cut/1]).
fib(1) ->
  1;
fib(0) ->
  0;
fib(N) ->
  fib(N-1)+fib(N-2).

cut(1) ->
  2;
cut(N) ->
  cut(N-1) +N.

