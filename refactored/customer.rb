class Customer
  attr_reader :name

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
      this_amount = rental.total_fee
      result += "\t" + rental.move.title + "\t" + this_amount.to_s + "\n"
      frequent_rental_points += rental.frequent_rental_point

      #add footer line
      result += "The amount you owned is #{total_charge}."
      result += "You earned #{frequent_rental_points} frequent renter points."
      result
    end
  end

  private
  def total_charge
    @rentals.inject(0) {|sum, rental| sum + rental.total_fee}
  end

end