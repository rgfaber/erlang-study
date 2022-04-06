%%%-------------------------------------------------------------------
%%% @author rl
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Apr 2022 9:34 PM
%%%-------------------------------------------------------------------
-module(talk).
-author("rl").

%% API
-export([bob/2, alice/0, run/0, start_alice/0, start_bob/1]).

alice() ->
  receive
    {message, BobNode} ->
      io:fwrite("Alice got a message\n"),
      BobNode ! message,
      alice();
    finished -> io:fwrite("Alice is finished!\n")
  end.

bob(0, AliceNode) ->
  {alice, AliceNode} ! finished,
  io:fwrite("Bob has finished\n");
bob(N, AliceNode) ->
  {alice, AliceNode} ! {message, self()},
  receive
    message ->
      io:fwrite("Bob got a message\n")
  end,
  bob(N-1, AliceNode).

run() ->
  register(alice, spawn(talk, alice, [])),
  register(bob, spawn(talk, bob, [3])).

start_alice() ->
  register(alice, spawn(talk, alice, [])).

start_bob(AliceNode) ->
  spawn(talk, bob, [3, AliceNode]).