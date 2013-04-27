require 'spec_helper'

describe HomeController do
	describe "#home" do
		it "renders the home template" do
      		get :home
      		expect(response).to render_template("home")
      		response.should be_success
    	end
end
end