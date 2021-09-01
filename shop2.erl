-module(shop2).
-export([total/1]).
-import(lists, [map/2, sum/1]).

total(L) -> 
sum(map(fun({What, N})-> shop:cost(What) * N end, L)).

%%% Done with list comprehension

%% total1(L) -> lists;sum([shop:cost(What) * N  || {What, N} <- L]).