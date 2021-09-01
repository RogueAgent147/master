-module(shop).
-export([cost/1]).

%%% Supposed we had a shopping list that looks like this 
cost(oranges) -> 5;
cost(newspaper) -> 3;
cost(apples) -> 5;
cost(pears) -> 5;
cost(milk) -> 5.