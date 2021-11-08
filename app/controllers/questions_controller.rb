class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = 0
    if params[:answer].end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif params[:answer] == "I am going to work"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
