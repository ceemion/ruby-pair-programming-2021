require 'rails_helper'

RSpec.describe User, type: :model do
  describe "user" do
    it "creates a valid user" do
      user = User.create(name: "Fiyin")
      
      expect(user).to be_valid
    end
  end
end
