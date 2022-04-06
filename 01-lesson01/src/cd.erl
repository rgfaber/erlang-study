%%%-------------------------------------------------------------------
%%% @author rl
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Apr 2022 4:05 PM
%%%-------------------------------------------------------------------
-module(cd).
-author("rl").

%% API
-export([listPrices/1]).

listPrices(Currency) ->
  Cars = getCarList(),
  printPrice(Cars, Currency).

getCarList() ->
  ["BMW", "Lamborghini", "Ferrari"].

getCarMap() ->
  #{"BMW" => 150000, "Lamborghini" => 500000, "Ferrari" => 700000}.

convert(Currency, Price) ->
  case Currency of
    usd -> round(Price);
    gbp -> round(Price * 0.76);
    eur -> round(Price * 0.92)
  end.

printPrice([], _Currency) ->
  true;
printPrice([Car | Rest], Currency) ->
  CarMap = getCarMap(),
  Price = maps:get(Car, CarMap),
  ConvertedPrice = convert(Currency, Price),
  io:fwrite("The price for " ++ Car ++ " is " ++ integer_to_list(ConvertedPrice) ++ "\n"),
  printPrice(Rest, Currency).


