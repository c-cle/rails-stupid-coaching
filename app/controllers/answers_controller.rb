class AnswersController < ApplicationController
  def reply
    @question = params[:question]
    if @question.to_s.include? '?'
      if @question.to_s == @question.to_s.upcase
        @coach_answer = 'I can feel your motivation! Silly question, get dressed and go to work!'
      else
        @coach_answer =  'Silly question, get dressed and go to work!'
      end
    elsif @question.to_s.upcase == 'I am going to work'.upcase
      @coach_answer =  'Great'
    elsif @question.to_s == @question.to_s.upcase
      @coach_answer =  "I can feel your motivation! I don't care, get dressed and go to work!"
    else
      @coach_answer =  "I don't care, get dressed and go to work!"
    end
  end
end
