class Question
  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @sum = @num1 + @num2
  end

  def ask_question(name)
    puts "#{name}: What does #{@num1} + #{@num2} equal?"
  end

  def check_answer?(answer)
    @sum == answer
  end

end