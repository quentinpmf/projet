ForecastIO.configure do |configuration|
  configuration.default_params = {units: 'si'}
  configuration.api_key = Rails.application.secrets.secret_forecast
end