class Player
  def initialize
    
  end

  def play_game
    rand(1..100) > 50 ? "Winner!" : "Loser!"
  end
end

player1 = Player.new
player2 = Player.new

def player1.play_game
  "Winner!"
end

p player1.play_game
p player2.play_game