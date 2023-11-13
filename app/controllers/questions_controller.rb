class QuestionsController < ApplicationController

  def ask
    render
  end

  def answer
    if params[:answer] == "I am going to work right now!"
      return @answer_coach = "Great!"
    elsif params[:answer].end_with?("?")
      return @answer_coach = "Silly question, get dressed and go to work!"
    else
      return @answer_coach = "I don't care, get dressed and go to work!"
    end
  end
end
