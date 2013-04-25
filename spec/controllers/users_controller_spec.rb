require 'spec_helper'

# MOD KIMADA 4/11/2013
describe UsersController do

  # Regular User
  before (:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "#index" do
   it "regular user: no authorization, redirect" do
      get :index
      response.body.should have_content("You are being redirected.")
    end

    it "test" do
      request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook] 
    end

    # MOD KIMADA 4/25/2013
    it "admin user: shows all users" do
      sign_out @user
      @admin_user = FactoryGirl.create(:admin_user)
      @admin_user.add_role :admin
      sign_in @admin_user

      get :index
      #puts index.html
      #response.body.should have_content("Users")

      sign_out @admin_user
    end
    # END MOD 4/25/2013
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
