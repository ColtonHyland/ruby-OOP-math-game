class Player

  attr_accessor :name, :score, :isTurn

  def initialize(name)
    @name = name
    @score = 3
    @isTurn = Boolean
    @answer
  end

  def questionAnswered(isRight)
    if(isRight)
      puts name + ": YES! You are correct."
    else
      puts name + ": Seriously? No!"
    end
  end
end