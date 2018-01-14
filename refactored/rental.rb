require_relative 'movie'
class Rental
  attr_reader :movie, :days_rented

  def initialize (movie, days_rented)
    @movie, @days_rented = movie, days_rented
  end

  def total_fee
    @movie.charge(@days_rented)
  end

  def frequent_rental_point
    @movie.frequent_renter_points(@days_rented)
  end
end