
require_relative 'card.rb'

class Deck

  attr_accessor :deck

  def initialize
    @deck = []
    create_deck
    mix_deck
  end

  def deal_card
    @deck.pop
  end

  private

  def create_deck
    Card::POINTS.each do |point|
      Card::LEARS.each do |lear|
        @deck << Card.new(point, lear)
      end
    end
    return @deck
  end

  def mix_deck
    @deck.shuffle!
  end
end
