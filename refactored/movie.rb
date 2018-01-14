class Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDREN = 2

  attr_reader :title
  attr_accessor :price

  def initialize(title, price)
    @price = price
    @title = title
  end

  def charge(days_rent)
    @price.calculate_fee(days_rent)
  end

  def frequent_renter_points (days_rent)
    @price.frequent_renter_points (days_rent)
  end
end