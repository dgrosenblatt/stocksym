class Stock < ActiveRecord::Base
  # all records created from seed file
  has_many :positions

  def current_price
    # yahoo finance api call yahoo.com/#{ticker}/format=json
    # return price in cents
    return 2500
  end
end
