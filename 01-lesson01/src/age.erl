%%%-------------------------------------------------------------------
%%% @author rl
%%% @copyright (C) 2022, <DisComCo>
%%% @doc
%%%
%%% @end
%%% Created : 06. Apr 2022 3:13 PM
%%%-------------------------------------------------------------------
-module(age).
-author("rl").

%% API
-export([getAge/1]).

getAge(Name) ->
  AgeMap = #{"Alice" => 22, "John" => 42, "Paul" => 38},
  maps:get(Name, AgeMap, -1).