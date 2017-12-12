require 'forecast_io'
require 'typhoeus/adapters/faraday'

ForecastIO.configure do |configuration|
  configuration.api_key = '5de33860473ea62fa3887b1002d6ad48'
end

forecast = ForecastIO.forecast(37.8267, -122.423, params: { units: 'si' })

Faraday.default_adapter = :typhoeus

puts forecast.latitude