require_relative 'DefaultPrice'

class ChildrenPrice
  include DefaultPrice

  def calculate_fee(days_rent)
    this_amount = 1.5
    this_amount += (days_rent - 3) * 1.5 if days_rent > 3
    this_amount
  end

end