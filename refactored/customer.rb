require_relative 'rental'
require_relative 'movie'
require_relative 'children_price'
require_relative 'new_release_price'
require_relative 'regular_price'
class Customer
  attr_reader :name, :rentals

  def initialize (name)
    @name = name
    @rentals = []
  end

  def add_rental(arg)
    @rentals << arg
  end

  def statement
    frequent_rental_points = 0
    result = "Rental Record for #{@name} \n"

    @rentals.each do |rental|
      result += "\t" + rental.movie.title + "\t" + rental.total_fee.to_s + "\n"
      frequent_rental_points += rental.frequent_rental_point
      #add footer line
    end
    result += "\tThe amount you owned is #{total_charge}."
    result += "You earned #{frequent_rental_points} frequent renter points. \n"
  end

  private
  def total_charge
    @rentals.inject(0) {|sum, rental| sum + rental.total_fee}
  end

end

customer = Customer.new("Mike")
rent1 = Rental.new(Movie.new("Finding Nemo", ChildrenPrice.new), 3)
rent2 = Rental.new(Movie.new("God Father", RegularPrice.new), 4)
rent3 = Rental.new(Movie.new("Insidious", NewReleasePrice.new), 5)
customer.add_rental(rent1)
customer.add_rental(rent2)
customer.add_rental(rent3)
print (customer.statement)
