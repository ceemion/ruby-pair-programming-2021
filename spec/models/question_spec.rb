require 'rails_helper'

RSpec.describe Question, type: :model do
  describe "question" do
    it "creates a valid question" do
      user = User.create(name: "Fiyin")
      question = Question.create(title: "A question", is_private: true, user_id: user.id)
      
      expect(question).to be_valid
    end
  end

  describe ".public" do
    it "returns only public questions" do
      user = User.create(name: "Fiyin")
      Question.create(title: "A question", is_private: true, user_id: user.id)
      Question.create(title: "A question Too", is_private: false, user_id: user.id)

      expect(Question.public_questions.count).to eq(1)
    end
  end
end
