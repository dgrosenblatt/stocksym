class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :positions

  # all values in cents
  def total_value
    @total_value = cash
    positions.each do |position|
      @total_value += position.stock.current_price
    end
    @total_value
  end
end
