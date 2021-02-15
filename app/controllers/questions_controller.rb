class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input_ask = params[:question]
    
    coach_answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

    if @user_input_ask.end_with?("?")
      @answer = coach_answers[1]
    elsif @user_input_ask == "I am going to work"
      @answer = coach_answers[0]
    else
      @answer = coach_answers[2]
    end
  end
end
