### Part II - rock, paper, scissors

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def right_strategy?(string)
    string == "r" or string == "p" or string == "s"
end

def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    # your code here
    a = game[0][1].downcase
    b = game[1][1].downcase
    raise NoSuchStrategyError unless right_strategy?(a) and right_strategy?(b) 
    if (a == "r" and b != "p") or (a == "p" and b != "s" ) or ( a == "s" and b != "r") then 
        game[0]
    else
        game[1]
    end
end

def rps_tournament_winner(tournament)
    # your code here
    l_winner = tournament[0]
    r_winner = tournament[1]
    if l_winner.class == String then
      raise StandardError unless r_winner.class == String #Make sure that it is well formed
      return tournament
    end
    c_game = [rps_tournament_winner(l_winner), rps_tournament_winner(r_winner)]
    rps_game_winner(c_game)

end
