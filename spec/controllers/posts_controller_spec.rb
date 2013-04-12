require 'spec_helper'

describe PostsController do
	# MOD KIMADA 4/2/2013
	before (:each) do
		@user = FactoryGirl.create(:user)
		sign_in @user
    	@post = FactoryGirl.create(:post)
  	end

	describe "#title" do
		it "returns the correct title" do
			@post.title.should eql "Test Scholarship 1"
		end
	end

	describe "#post_type" do
		it "returns the correct body" do
			@post.body.should eql "Scholarship Body"
		end
	end

	describe "#new" do
		it "renders the new template" do
      		get :new
      		expect(response).to render_template("new")
      		response.should be_success
    	end

		it "is an instance of Post" do
			@post.should be_an_instance_of Post
		end
	end

	describe "#index" do
		it "shows posts" do
			Post.count.should eql 1
		end

		it "renders the index template" do
      		get :index
      		expect(response).to render_template("index")
      		response.should be_success
    	end
	end

	describe "#show" do
		it "renders the show template" do
      		get :show, :id => @post.id
      		expect(response).to render_template(:show)
      		response.should be_success
    	end

		it "shows the correct post" do
			get :show, id: @post.id
			assigns(:post).should eq(@post)
		end
	end

	describe "#destroy" do
		it "deletes the post" do
			expect { delete :destroy, :id => @post.id }.to change(Post, :count).by(-1)
		end
	end
end
