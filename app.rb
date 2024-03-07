require "sinatra"
require "sinatra/reloader"

exchange_rates_key = ENV.fetch("EXCHANGE_RATES_KEY")

get("/") do
  
  erb(:main)
  
end
