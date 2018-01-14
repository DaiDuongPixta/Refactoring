require_relative 'DefaultPrice'
class RegularPrice
  include DefaultPrice
  def calculate_fee(days_rent)
    this_amount = 2
    this_amount += (days_rent - 2) * 1.5 if days_rent > 1
    this_amount
  end
end
