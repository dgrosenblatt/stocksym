class Position < ActiveRecord::Base
  belongs_to :user
  belongs_to :stock

  # number of shares
  validates :quantity,
    presence: true,
    numericality: { only_integer: true, greater_than: 0 }


  # price in cents, avoid floating point arithmetic irregularities
  validates :price,
    presence: true,
    numericality: { only_integer: true, greater_than: 0 }

  validates :user_id,
    presence: true

  validates :stock_id,
    presence: true

end
