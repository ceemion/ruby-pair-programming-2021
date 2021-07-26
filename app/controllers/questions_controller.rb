class QuestionsController < ApplicationController
  def index
    questions = Question.public_questions
    render json: questions
  end
end
