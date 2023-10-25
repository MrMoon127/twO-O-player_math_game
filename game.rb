class Game

  def initialize(name)
    @name = name
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def start
    puts "New Game Started. Welcome #{@player1.name} and #{@player2.name}"
    turn
  end

  def show_stats
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def check_score
    if @player1.is_dead
      winner(@player2)
    elsif @player2.is_dead
      winner(@player1)
    end
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)
  end

  def turn
    @player1.new_question
    check_score
    show_stats
    puts '----- NEW TURN -----'
    @player2.new_question
    check_score
    show_stats
    puts '----- NEW TURN -----'
    turn
  end

end