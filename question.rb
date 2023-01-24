# Generates a math addition question by randomly generating two numbers between 1 and 20 and adding them together
class Question
  attr_accessor :question, :answer

  def initialize
    @question = question
    @answer = answer
  end

  def generate_question
    first_num = rand(1..20)
    second_num = rand(1..20)
    @question = "What does #{first_num} + #{second_num} equal?"
    @answer = first_num + second_num
  end
end