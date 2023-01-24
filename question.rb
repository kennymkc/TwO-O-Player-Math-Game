class Question
  attr_reader :num1, :num2, :correct_answer, :player

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @correct_answer = @num1 + @num2
  end

  def new_question(player)
    puts "#{player.name}: What does #{num1} plus #{num2} equal?"
    print "> "
    answer = $stdin.gets.chomp.to_i
    if answer == correct_answer
      puts "#{player.name}: YES! You are correct."
    else
      puts "#{player.name}: Seriously? No!"
      player.wrong_answer
    end
  end

end