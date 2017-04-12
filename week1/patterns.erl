-module(patterns).
-export([perimeter/1, area/1, enclose/1, bits/1]).

% We will treat the following shape types:
%{circle, {X,Y}, R}
%{rectangle, {X,Y}, H, W}
%
% We assume all triangle to be right-angled. A more complete program would be to let the triangle have sides of arbitrary lengths and and angles. 
% just calculate the base and height. 
% {triangle, {X, Y}, B, H}

area({circle, {_X, _Y}, R}) ->
  math:pi()*R*R;

area({rectangle, {_X, _Y}, H, W}) ->
  H*W;

%area of a triangle is base*height/2
area({triangle, {_X, _Y}, B, H}) ->
  B*H*0.5.

%perimeter of a cirlce is 2*π*R
perimeter({circle, {_Y, _X}, R}) ->
  math:pi()*2*R;

%perimeter of a rectange is 2*H+2*W or H+H+W+W
perimeter({rectangle, {_X, _Y}, H, W}) ->
  H+H+W+W;

%perimeter of a triangle is the base + height + hypothenuse
perimeter({triangle, {_X, _Y}, B, H}) ->
  B+H+math:sqrt(B*B+H*H).

%A circle can be enclosed by a bounding box with square sides of 2R.
enclose({circle, {X, Y}, R}) ->
  {rectangle, {X,Y}, 2*R, 2*R};

%A triangle can be enclosed by a rectangle with sides equal to the base and height of the triangle
enclose({triangle, {X, Y}, B, H}) ->
  {rectangle, {X, Y}, B, H}.

%Sum the bits in a positive Integer number
bits(0) ->
  0;
bits(1) ->
  1;
bits(2) ->
  bits(1);
bits(3) ->
  2;
bits(4) ->
  1;
% This is a "shortcut" if the number is a power of 2
bits(X) when X band -X == X ->
  1;
% This is the main recursion.
bits(X) ->
  bits(X div 4) + bits(X rem 4).
