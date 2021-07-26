require 'rails_helper'

RSpec.describe Question, type: :model do
  describe "question" do
    it "creates is a valid question" do
      user = User.create(name: "Fiyin")
      question = Question.create(title: "A question", is_private: true, user_id: user.id)
      
      expect(question).to be_valid
    end
  end
end
