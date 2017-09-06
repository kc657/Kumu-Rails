require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:signed_in_user) { FactoryGirl.create(:user) }

  before do
    # stub a method on ApplicationController
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(signed_in_user)
  end

  describe "GET #new" do
    it "assigns @user" do
      get :new
      expect(assigns(:user)).to be_instance_of(User)
    end
  end

  describe "Get #create" do
    it "creates new user" do

    end
  end

end
