class QuestionsController < ApplicationController
  def ask
    @say_something = params[:say_something]
  end

  def answer
    @say_something = params[:say_something]
    if @say_something == 'I am going to work'
      @coach_answer = 'Great!'
    elsif @say_something.include?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
