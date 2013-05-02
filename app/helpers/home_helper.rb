module HomeHelper
	# MOD KIMADA 5/1/2013
	def self.posts_order(which)
		@p = Post.where(['publish_date <= ?', Date.today]).order('publish_date DESC')
		@posto = @p[which - 1]
	end
end
