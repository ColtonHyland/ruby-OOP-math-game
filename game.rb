include 'player'
include 'question'

class Game

  attr_accessor :isOver, :playerTurn

  def initialize()
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @playerTurn = 1
    @isOver = false
  end

  def roundOver(isOver)

  end

  def changeTurns()
    if(@playerTurn == 1)
      @playerTurn = 0
    else
      @playerTurn = 1
    end
  end

  def outcome()
    # Player 1 wins with a score of 1/3
  end

  def runGame(isOver)

    while(!isOver)
      newQuestion = Question.new

      if(@playerTurn == 1)
        asker = @player1
        answerer = @player2
        question.questionMessage(asker.name)
      else
        asker = @player2
        answerer = @player1
        question.questionMessage(asker.name)
      end

      changeTurns()
      puts answerer
      input = gets.chomp
      asker.questionAnswered(input.to_i == question.ans)


    end

  end
end
