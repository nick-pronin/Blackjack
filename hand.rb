require_relative 'deck'
class Hand
  MAX_SIZE = 3
  MAX_PRICE = 21

  attr_accessor :cards

  def initialize
    @cards = []
  end

  def price
    ace_variation if cards.find(&:ace?)
    cards.map(&:price).sum
  end

  private

  def ace_variation
    return unless cards.map(&:price).sum > MAX_PRICE
    cards.select(&:ace?).each do |card|
      if cards.map(&:price).sum > MAX_PRICE
        card.price = Card::ACE_MIN_PRICE
      end
    end
  end
end
