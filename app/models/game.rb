class Game < ActiveRecord::Base
  def getResult
    return self.game_result
  end

  def newGame(myChoice)
    computerChoice = ''
    myToss = if rand(3) == 1 then
      computerChoice = 'rock'
    elsif myToss == 2
      computerChoice = 'paper'
    else
      computerChoice = 'scissors'
    end
    puts 'mychoice:' + myChoice
    puts 'computerChoice:' + computerChoice
    self.game_result = compare(myChoice,computerChoice)
    puts 'gameresult:' + self.game_result
    return self.game_result
  end

  def compare(myChoice,computerChoice)
    if myChoice == 'rock' && computerChoice == 'paper' then
      return 'lose'
    end
    if myChoice == 'rock' && computerChoice == 'rock' then
      return 'tie'
    end
    if myChoice == 'rock' && computerChoice == 'scissors' then
      return 'win'
    end

    if myChoice == 'paper' && computerChoice == 'paper' then
      return 'tie'
    end
    if myChoice == 'paper' && computerChoice == 'rock' then
      return 'lose'
    end
    if myChoice == 'paper' && computerChoice == 'scissors' then
      return 'win'
    end

    if myChoice == 'scissors' && computerChoice == 'paper' then
      return 'win'
    end
    if myChoice == 'scissors' && computerChoice == 'rock' then
      return 'lose'
    end
    if myChoice == 'scissors' && computerChoice == 'scissors' then
      return 'tie'
    end
  end
end
