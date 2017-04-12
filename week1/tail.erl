-module(tail).
-export([fib/3, fib/1, perfectQ/1]).

fib(0,P, _C) ->
  P;
fib(N, P, C) ->
  fib(N-1, C, P+C).
fib(N) ->
  fib(N, 0, 1).

perfectQ(N, N, S) ->
  N==S;
perfectQ(N, M, S) when N rem M == 0 ->
  perfectQ(N, M+1, S+M);
perfectQ(N, M, S) ->
  perfectQ(N, M+1, S).
perfectQ(N) ->
  perfectQ(N, 1, 0).
