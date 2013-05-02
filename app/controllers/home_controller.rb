class HomeController < ApplicationController
	# MOD KIMADA 5/1/2013
	include HomeHelper
  
  	def index
    #@users = User.all
    	@post1 = HomeHelper::posts_order(1)
    	@post2 = HomeHelper::posts_order(2)
    	@post3 = HomeHelper::posts_order(3)
  	end
end
