defmodule DarkskyTest do
  use ExUnit.Case
  doctest Darksky


  test "forecast without options" do
    assert {:ok, _} = Darksky.forecast("YOUR-API-KEY", 43.545, -5.6626)
  end

  test "forecast with options" do
    assert {:ok, _} = Darksky.forecast("YOUR-API-KEY", 43.545, -5.6626, %{exclude: "currently,minutely,hourly,daily,alerts,flags", extend: "hourly", lang: "es", units: "auto"})
  end

  test "timemachine without options" do
    assert {:ok, _} = Darksky.timemachine("YOUR-API-KEY", 43.545, -5.6626, "2016-10-01T12:12:12")
  end

  test "timemachine with options" do
    assert {:ok, _} = Darksky.timemachine("YOUR-API-KEY", 43.545, -5.6626, "2016-10-01T12:12:12", %{exclude: "currently,minutely,hourly,daily,alerts,flags", extend: "hourly", lang: "es", units: "auto"})
  end
end
