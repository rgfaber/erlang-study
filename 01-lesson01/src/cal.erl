%%%-------------------------------------------------------------------
%%% @author rl
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Apr 2022 3:22 PM
%%%-------------------------------------------------------------------
-module(cal).
-author("rl").

%% API
-export([isLeap/1, days/2]).

isLeap(Year) ->
  if
    Year rem 400 == 0 -> leap;
    Year rem 100 == 0 -> non_leap;
    Year rem 4 == 0 -> leap;
    true -> non_leap
  end.


days(Month, Year) ->
  Leap = isLeap(Year),
  case Month of
    jan -> 31;
    feb when Leap == leap -> 29;
    feb -> 28;
    mar -> 31;
    apr -> 30;
    may -> 31;
    jun -> 30;
    jul -> 31;
    aug -> 31;
    sep -> 30;
    oct -> 31;
    nov -> 30;
    dec -> 31
  end.