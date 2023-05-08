class QuestionsController < ApplicationController
  def home
  end
  def ask
  end
  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "Please write your question!"
    elsif @question.ends_with?(".")
      @answer = "WTF?"
    elsif @question.ends_with?("?")
      @answer = "Good question!"
    else
      @answer = "I don't want to answer."
    end
  end
end
