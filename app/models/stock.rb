class Stock < ActiveRecord::Base
  # all records created from seed file
  has_many :positions

  # current price in cents from Yahoo Finance API
  def current_price
    uri = URI.parse("http://finance.yahoo.com/webservice/v1/symbols/#{ticker}/quote?format=json")
    response = JSON.parse(Net::HTTP.get(uri))
    (response["list"]["resources"][0]["resource"]["fields"]["price"].to_f*100).to_i
  end
end
