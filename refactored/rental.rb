require 'movie'
class Rental
  attr_reader :movie, :days_rented

  def initialize (movie, days_rented)
    @movie, @days_rented = movie, days_rented
  end

  def total_fee
    @movie.calculate_fee(@days_rented)
  end

  def frequent_rental_point
    points = 1
    if @movie.price_code == Movie::NEW_RELEASE && @days_rented > 1
      points += 1
    end
    points
  end
end