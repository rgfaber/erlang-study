%%%-------------------------------------------------------------------
%%% @author rl
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Apr 2022 9:26 PM
%%%-------------------------------------------------------------------
-module(speak).
-author("rl").

%% API
-export([run/0, say/2]).

say(_What,0) ->
  done;
say(What, Times) ->
  io:fwrite(What ++ "\n"),
  say(What, Times-1).

run() ->
  spawn(speak, say, ["Hi", 3]),
  spawn(speak, say, ["Bye",3]).