require "sinatra"
require "sinatra/reloader"
require "http"
require "json"

#exchange_rates_key = ENV.fetch("EXCHANGE_RATES_KEY")

get("/") do
  
  erb(:main)
  
end

get("/:from") do
  
  @first_currency = params.fetch(:from)
  erb(:from)

end

get("/:from/:to") do

  @first_currency = params.fetch(:from)
  @second_currency = params.fetch(:to)
  erb(:to)

end
