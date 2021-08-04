require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  let!(:user) { User.create(name: "Fiyin") }

  describe ".index" do
    before do
      Question.create(title: "A question", is_private: false, user_id: user.id)
      Question.create(title: "A second question", is_private: true, user_id: user.id)
    end

    it "returns 200" do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it "returns all public questions" do
      get :index
      response_body = JSON.parse(response.body)

      expect(response_body.size).to eq(1)
      expect(response_body.dig(0, 'title')).to eq("A question")
      expect(response_body.dig(0, 'is_private')).to be false
      expect(response_body.dig(0, 'user', 'id')).not_to be nil
    end

    it "returns questions for the same user" do
      get :index
      response_body = JSON.parse(response.body)

      expect(response_body.dig(0, 'user', 'id')).to eq(user.id)
    end
  end
end
