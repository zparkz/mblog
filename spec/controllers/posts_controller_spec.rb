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

		# MOD KIMADA 4/24/2013
		it "renders the index template" do
      		get :index
      		expect(response).to render_template("index")
      		response.should be_success
    	end
    	# END MOD 4/24/2013

    	it "delete expired posts when Delete Expired Posts link is followed" do
    		post_params = FactoryGirl.attributes_for(:post_exp)
    		#Post.should_receive(:create).and_return(@post_exp)
  			#expect { post :create, :post => post_params }.to change(Post, :count).by(1) 
    		post :create, :post => post_params
			Post.count.should eql 2
	   		get :index, :delete_expired => "Yes"
    		Post.count.should eql 1
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

	# MOD KIMADA 4/23/2013
	describe "#edit" do
		it "edits a post" do
			get :edit, id: @post.id
		end

    	it "renders the edit template" do
      		get :edit, id: @post.id
      		expect(response).to render_template("edit")
      		response.should be_success
    	end
	end

	describe "#create" do
		it "creates a post" do
			post_params = FactoryGirl.attributes_for(:post_exp, :category => Category.first.id)
			post :create, :post => post_params
			flash[:notice].should eql "Post was successfully created."
		end

		it "renders the new template if post if all parameters are not entered: fail" do
			post :create, :post => {:title => 'XYZ'}
			get :new
      		expect(response).to render_template("new")
      		response.should be_success
		end
	end

	describe "#update" do
		it "updates a post" do
			put :update, id: @post.id, title: "Changing the Title"
			flash[:notice].should eql "Post was successfully updated."
		end

		it "renders the edit template if update fails" do
			put :update, id: @post.id, :post => {title: ""}
			get :edit, id: @post.id
      		expect(response).to render_template("edit")
      		response.should be_success
		end
	end
	# END MOD 4/23/2013
end
