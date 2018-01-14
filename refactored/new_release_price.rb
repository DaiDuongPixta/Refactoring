class NewReleasePrice
  def frequent_renter_points (days_rent)
    (days_rent > 1) ? 2 : 1
  end

  def calculate_fee(days_rent)
    3 * days_rent
  end
end