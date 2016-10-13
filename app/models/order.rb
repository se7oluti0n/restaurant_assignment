class Order < ApplicationRecord
  belongs_to :food_item

  def coupon
  end
end
