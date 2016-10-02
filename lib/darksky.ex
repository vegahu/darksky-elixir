defmodule Darksky do

@moduledoc """
This module warps the two requests of Darksky API:
  - Forescast
  - Timemachine

The result is a map.

A key is needed.

Go to <https://darksky.net/dev/> for a key and documentation.


"""


  def forecast(latitude, longitude, api_key, opts \\ %{}) when is_map(opts) do
    forecast = HTTPotion.get("https://api.darksky.net/forecast/#{api_key}/#{latitude},#{longitude}", [query: opts])
    JSON.decode(forecast.body)
  end

  def timemachine(latitude, longitude, date, api_key, opts \\ %{}) when is_number(date) and is_map(opts) do
    forecast = HTTPotion.get("https://api.darksky.net/forecast/#{api_key}/#{latitude},#{longitude},#{date}", [query: opts])
    JSON.decode(forecast.body)

  end

end
