require_relative 'hand'

class Player
  attr_accessor :cash
  attr_reader :name, :hand

  def initialize(name)
    @name = name
    @name.capitalize!
    @hand = Hand.new
  end

  def take_card(deck)
    @hand.cards << deck.deal_card
  end

  def points
    @hand.price
  end

  def max_cards?
    @hand.cards.size >= Hand::MAX_SIZE
  end

  def fold_cards
    @hand.cards = []
  end
end
