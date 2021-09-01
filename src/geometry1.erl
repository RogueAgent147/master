-module(geometry1).
-export([test/0, area/1, area/1]).

%%% A looks at what the power of pattern matching 
test() ->
   12 = area({rectangle, 3,4}),
   144 = area({square, 12}),
   452.448 = area({circle, 12}),
   test_worked.

%%% If the 12 and 144 doesn't meet the requirement is not pattern matched but if it does 
%%% then this program is a goal.
area({rectangle, Width, Height}) -> Width * Height;
area({square, Side}) -> Side* Side;
 area ({circle, Radius}) ->  3.142 * Radius * Radius.   % Adding circles to the calcs.
