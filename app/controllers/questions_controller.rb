class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    @coach_answer = ''

    if @question == 'I am going to work'
      @coach_answer = 'Great!'
    elsif @question.include? '?'
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = 'I dont care, get dressed and go to work!'
    end
  end
end
