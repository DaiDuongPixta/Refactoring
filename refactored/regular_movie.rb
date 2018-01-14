require 'movie'
class Regular_movie < Mo
  def initialize (title)
    @title = title
    @price_code = Movie::REGULAR
  end

  def calculate_fee(days_rent)
    this_amount = 2
    this_amount += (days_rent - 2) * 1.5 if days_rent > 1
    this_amount
  end
end