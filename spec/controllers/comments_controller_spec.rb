require 'spec_helper'

describe CommentsController do
	# MOD KIMADA 4/11/2013
	before (:each) do
		@user = FactoryGirl.create(:user)
		sign_in @user
    	@comment = FactoryGirl.create(:comment)
    	@post = FactoryGirl.create(:post)
  	end

	describe "#index" do
		it "shows all comments" do
			Comment.all.count.should eql 1
		end

		it "renders the index template" do
      		get :index, :post_id => @post.id
      		expect(response).to render_template("index")
      		response.should be_success
    	end
	end

	describe "#show" do
		it "renders the show template" do
      		get :show, :id => @comment.id, :post_id => @post.id
      		expect(response).to render_template(:show)
      		response.should be_success
    	end

		it "shows the correct comment" do
			get :show, id: @comment.id, :post_id => @post.id
			assigns(:comment).should eq(@comment)
		end
	end

	describe "#destroy" do
		it "deletes a comment" do
			expect { delete :destroy, :id => @comment.id, :post_id => @post.id }.to change(Comment, :count).by(-1)
		end
	end
end
