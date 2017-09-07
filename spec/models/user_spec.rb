require 'rails_helper'

RSpec.describe User, type: :model do

  subject(:user) { FactoryGirl.create(:user) }

  describe "first_name" do
    it "returns Kevin" do
      expect(user.first_name).to eq "Kevin"
    end
  end

end
