class QuestionDecorator < ApplicationDecorator
  delegate_all

  def show_field_question
    binding.pry
    "#{object.question.title}: #{object.question.description}"
  end
end
