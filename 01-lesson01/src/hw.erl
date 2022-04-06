%%%-------------------------------------------------------------------
%%% @author rl
%%% @copyright (C) 2022, <DisComCo>
%%% @doc
%%%
%%% @end
%%% Created : 06. Apr 2022 12:09 PM
%%%-------------------------------------------------------------------
-module(hw).
-author("rl").

%% API
-export([hello_world/0,hello_world/1,hi/0]).

hello_world() ->
  "Hello, world".

hello_world(X) ->
  "Hello " ++ X.

hi() ->
  "Hi there!".

