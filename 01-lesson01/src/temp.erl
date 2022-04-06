%%%-------------------------------------------------------------------
%%% @author rl
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Apr 2022 2:36 PM
%%%-------------------------------------------------------------------
-module(temp).
-author("rl").

%% API
-export([convert/2, convert/1]).

convert(F, fahrenheit) ->
  (F-32)*5/9;
convert(C, celsius) ->
  C * 9/5 + 32.

convert({fahrenheit, X}) ->
  Y = convert(X, fahrenheit),
  {celsius, Y};
convert({celsius, X}) ->
  Y = convert(X, celsius),
  {fahrenheit, Y}.