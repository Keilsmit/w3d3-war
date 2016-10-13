require "./deck.rb"

class Game


  attr_accessor :player1, :player2, :player1_wins, :player2_wins, :tie, :round_number

  def initialize
    self.player1 = Deck.new
    self.player2 = Deck.new
    self.player1_wins = 0
    self.player2_wins = 0
    self.tie = 0
    self.round_number = 0
  end
  # Initialize ends here



  def round
    p1_card = player1.draw
    p2_card = player2.draw

    if p1_card.value > p2_card.value
      self.player1_wins += 1
      self.round_number += 1
    elsif p1_card.value < p2_card.value
      self.player2_wins += 1
      self.round_number += 1
    else
      self.tie += 1
      self.round_number += 1
    end
  end
  # Round method ends here

  def full_game
    52.times do
      round
    end
    output
    rematch
  end
  # Full game ends here

  def output
    if player1_wins > player2_wins
      puts "Player 1: (with a score of) #{player1_wins}\n\n Won this game! \n\nAfter #{round_number} rounds and survived #{tie} WARs."
    elsif player1_wins < player2_wins
      puts "Player 2: (with a score of) #{player2_wins}\n\n Won this game! \n\nAfter #{round_number} rounds and survived #{tie} WARs."
    # else
    #   puts "ERRRRRRRRRROOOOOOOOOORRRRRR"
    #   puts player1_wins
    #   puts player2_wins
    #   puts tie
    end
  end

  def rematch
     puts "Would you like a rematch (y/n)?"
      desire = gets.chomp.downcase
        if desire == "y"
          Game.new.full_game
        else
          puts "Thank you for playing! Try again later."
        end
  end
  # Rematch ends here

end
# Game class ends here

game = Game.new
game.full_game
