%%%-------------------------------------------------------------------
%%% @author rl
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Apr 2022 3:56 PM
%%%-------------------------------------------------------------------
-module(greet).
-author("rl").

%% API
-export([greet/1]).

greet([]) ->
  true;
greet([First| Rest]) ->
  io:fwrite("Hello " ++ First ++ "\n"),
  greet(Rest).

