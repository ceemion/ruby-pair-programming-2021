require 'rails_helper'

RSpec.describe Tenant, type: :model do
  describe "tenant" do
    it "creates a valid tenant" do
      tenant = Tenant.create(name: 'Goldschmidt', api_key: '7c6c0f37-0675-423a-8426-c3ecd9fe212f')
      
      expect(tenant).to be_valid
    end
  end
end
