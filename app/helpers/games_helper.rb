module GamesHelper
  def total_wins(games)
    num_games_won = 0
    @games.each do |game|
      gameResult = game.game_result
      puts gameResult
      if (gameResult == 'win') then
        num_games_won += 1
      end
    end
    return num_games_won.to_s
  end

  def total_lost(games)
    num_games_lost = 0
    @games.each do |game|
      gameResult = game.game_result
      puts gameResult
      if (gameResult == 'lose') then
        num_games_lost += 1
      end
    end
    return num_games_lost.to_s
  end
   
  def total_tied(games)
    num_games_tied = 0
    @games.each do |game|
      gameResult = game.game_result
      puts gameResult
      if (gameResult == 'tie') then
        num_games_tied += 1
      end
    end
    return num_games_tied.to_s
  end

  def total_games(games)
    num_games_played = 0
    @games.each do |game|
      num_games_played += 1
    end
    return num_games_played.to_s
  end

  def total_unknown(games)
    num_games_unknown = 0
    @games.each do |game|
      gameResult = game.game_result
      puts gameResult
      if (gameResult == nil) then
        num_games_unknown += 1
      end
    end
    return num_games_unknown.to_s
  end

end
