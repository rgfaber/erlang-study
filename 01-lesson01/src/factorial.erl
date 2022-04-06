%%%-------------------------------------------------------------------
%%% @author rl
%%% @copyright (C) 2022, DisComCo
%%% @doc
%%%
%%% @end
%%% Created : 06. Apr 2022 2:20 PM
%%%-------------------------------------------------------------------
-module(factorial).
-author("rl").

%% API
-export([factorial/1]).

%% Multi-clause function
factorial(1) ->
  1;
factorial(N) ->
  N * factorial(N-1).



