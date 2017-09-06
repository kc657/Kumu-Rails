require 'rails_helper'

RSpec.describe User, type: :model do

  subject(:user) { FactoryGirl.create(:user) }

  # describe "#full_name" do
  #   it "joins first name and last name" do
  #     expect(user.full_name).to eq("Kevin Chen")
  #   end
  # end

end
