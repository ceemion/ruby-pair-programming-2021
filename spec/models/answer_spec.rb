require 'rails_helper'

RSpec.describe Answer, type: :model do
  describe "answer" do
    it "creates is a valid answer" do
      user = User.create(name: "Fiyin")
      question = Question.create(title: "A question", is_private: true, user_id: user.id)
      answer = Answer.create(body: "Answer to your question", question_id: question.id, user_id: user.id)

      expect(answer).to be_valid
    end
  end
end
