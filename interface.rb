class Interface

  def greeting
    puts WELCOME_MENU
  end

  def ask_name
    puts PLAYER_NAME_MENU
  end

  def receive_name
    gets.chomp
  end

  def show_menu(menu)
    puts ACTIONS_MENU
    index = 1
    menu.each do |menu_item|
      puts "#{index} - #{menu_item[:title]}"
      index += 1
    end
  end

  def receive_choice
    gets.to_i
  end

  def show_pass_course(player)
    puts "#{player.name} пропускает ход"
  end

  def show_cards(player, dealer)
    puts 'Карты игрока'
    player.hand.cards.each { |card| print "#{card.point + card.lear} " }
    puts ''
    puts "Кол-во очков #{player.points}"
    puts 'Карты дилера'
    dealer.hand.cards.each { |_card| print '* ' }
    puts ''
  end

  def show_open_cards(player, dealer)
    puts 'Карты игрока'
    player.hand.cards.each { |card| print "#{card.point + card.lear} " }
    puts ''
    puts "Кол-во очков #{player.points}"
    puts 'Карты дилера'
    dealer.hand.cards.each { |card| print "#{card.point + card.lear} " }
    puts ''
    puts "Кол-во очков #{dealer.points}"
  end

  def show_give_card(player)
    puts "#{player.name} берет карту"
  end

  def show_winner(winner)
    puts "Победитель #{winner.name}"
  end

  def show_draw
    puts 'Ничья'
  end

  def ask_new_game
    puts PLAY_FURTHER_MENU
  end

  def show_cash(player, dealer)
    puts "Состояние игрока #{player.name}: #{player.cash}"
    puts "Состояние дилера: #{dealer.cash}"
  end
end
