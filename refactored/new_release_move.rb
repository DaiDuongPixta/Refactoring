require 'movie'
class New_release_move < Movie
    def initialize (title)
      @title = title
      @price_code = Movie::NEW_RELEASE
    end

    def calculate_fee(days_rent)
      this_amount = 3 * days_rent
      this_amount
    end
end