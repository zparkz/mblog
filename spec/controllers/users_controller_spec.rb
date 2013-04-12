require 'spec_helper'

# MOD KIMADA 4/11/2013
describe UsersController do

  # Regular User
  before (:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "#index" do
   it "no authorization, redirect" do
      get :index
      response.body.should have_content("You are being redirected.")
    end
  end

  describe "#show" do
    it "renders the show template" do
      get :show, :id => @user.id
      expect(response).to render_template(:show)
      response.should be_success
    end

    it "shows the correct user" do
      get :show, id: @user.id
      assigns(:user).should eq(@user)
    end
  end

  describe "#destroy" do
    it "displays the no authorization message" do
      delete :destroy, :id => @user
      response.body.should have_content("You are being redirected.")
    end
  end

end
