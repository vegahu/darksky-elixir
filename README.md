# darksky-elixir

[Dark Sky API](https://darksky.net/dev/) wrapper in Elixir

Quoting [Dark Sky API documentation](https://darksky.net/dev/docs):

>The Dark Sky API allows you to look up the weather anywhere on the globe, returning (where available):

>Current conditions
Minute-by-minute forecasts out to one hour
Hour-by-hour and day-by-day forecasts out to seven days
Hour-by-hour and day-by-day observations going back decades`


There are two functions available:

- forecast/4
- timemachine/5

They need the API key, latitude, longitude, and time only for timemachine function.

Both have optional parameters, you have to put them in a map, for example:

`forecast("YOUR-API-KEY", 12,1234, -5,4321, %{lang: "es", units: "si"})`

You can check the full list of options here:

- [forecast/4 parameters](https://darksky.net/dev/docs/forecast)
- [timemachine/5 parameters](https://darksky.net/dev/docs/time-machine)

Both functions returns a nested map, you can see samples of the output in the file output_examples.md.

## Examples

`Darksky.forecast("YOUR-API-KEY", 43.545, -5.6626, %{lang: "es", units: "si"})`

`Darksky.timemachine("YOUR-API-KEY", 43.545, -5.6626, 1475430147, %{units: "si", lang: "es"})`
