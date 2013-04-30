require 'spec_helper'

describe HomeController do
	describe "#index" do
		it "renders the home template" do
      		get :index
      		expect(response).to render_template("index")
      		response.should be_success
    	end
end
end