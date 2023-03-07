class Question

  attr_accessor :ans, :message

  def intitialize()
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @ans = num1 + num2
  end

  def questionMessage(name)
    nums = numbers()
    puts name + ": What does #{nums[0]} plus #{num[1]} equal?"
  end

end