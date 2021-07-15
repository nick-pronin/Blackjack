class Card

  attr_accessor :price, :point, :lear

  POINTS = %w(2 3 4 5 6 7 8 9 10 J Q K A).freeze
  PRICES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11].freeze
  LEARS = %w(♠ ♥ ♣ ♦).freeze

  ACE_MIN_PRICE = 1

  def initialize(point, lear)
    @point = point 
    @lear = lear 
    @price = PRICES[POINTS.index(point)].to_i
  end

  def ace?
    @point == "A"
  end
end
