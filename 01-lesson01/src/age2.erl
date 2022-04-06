%%%-------------------------------------------------------------------
%%% @author rl
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Apr 2022 9:02 PM
%%%-------------------------------------------------------------------
-module(age2).
-author("rl").

%% API
-export([getType/1]).

getType(N) when N < 13 ->
  child;
getType(N) when N < 18 ->
  teen;
getType(N) when N > 17 ->
  adult.
