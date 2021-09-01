-module(lib_misc).
-compile(export_all).

%% How to write a sort algorithm using two list comprehension.

qsort([]) -> [];
qsort([Pivot|T]) ->
   qsort([X || X <- T, X < Pivot])
   ++ [Pivot] ++ % Using ++ in this way is generally considered good coding practice 
   qsort([X || X <- T, X >= Pivot]).
   %% So let assume 5 is pivot where the list starts from [5,2,3,4,1,6,8,9,7,10]
   %% So all element less than 5 @ 1,2,3,4 ++ pivot(5) ++ all element greater than 5 @ 6,7,8,9,10
   %% Erlang does the sequential arrangement. 

   pythag(N) ->
      [{A,B,C} || 
         A <- lists:seq(1, N),% sequence of integers from 1 to N
         B <- lists:seq(1, N),
         C <- lists:seq(1, N),
         A+B+C =< N,
         A*A + B*B =:= C*C].

   perms([]) -> [[]];
   perms(L) ->  [[H|T] || H <- L , T <- perms(L--[H])]. %  Anagrams it applies to cracking safes if youv'e watched heist movies
   %% substracts the element of y from x x--y or l--h take  h from l in all possible way and return [H|T]
   
   %% Accumulators
   odds_and_evens1(L) -> 
      Odds = [X || X <- L, (X rem 2) =:= 1],
      Evens = [X || X <- L, (X rem 2) =:= 0],
      {Odds, Evens }.% this is an accumulator.
      %% The list is traverse note not good coding practice


   %% Thesame code below is a better presentation of accumulators
   %% The list below is traversed only once
   odds_and_evens2(L)->
      odds_and_evens_acc(L, [], []).

   odds_and_evens_acc([H|T], Odds, Evens)->
      case (H rem 2) of 
         1 -> odds_and_evens_acc(T, [H|Odds], Evens);
         0 -> odds_and_evens_acc(T, Odds, [H|Evens])
   end;
   odds_and_evens_acc([],Odds, Evens) ->
   {lists:reverse(Odds), lists:reverse(Evens)}.

   sqrt(X) when X < 0 ->
      error({squarRootNegativeArgument, X});
   sqrt(X) -> 
      math:sqrt(X)
   case f(X) of
      {ok, Val} ->
         do_something_with(Val);
      {error, Why} ->
         do_something_with(Why)
   end.
