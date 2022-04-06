%%%-------------------------------------------------------------------
%%% @author rl
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Apr 2022 9:13 PM
%%%-------------------------------------------------------------------
-module(hof).
-author("rl").

%% API
-export([double/0]).

double() ->
  F = fun(X) -> temp:convert({celsius, X}) end,
  map(F, [1,27,200,47,88,50]).

map(_F, []) ->
  [];
map(F, [First | Rest]) ->
  [F(First) |  map(F, Rest)].