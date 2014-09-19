class PostsController < ApplicationController

	def index
		@posts = Post.all.reverse
		@post = Post.new
	end

	def new
		@post = Post.new
	end

	def create
		@posts = Post.all
		@post = Post.new(posts_params)
		if @post.save
			redirect_to posts_path
		else
			render 'new'
		end
	end

	def show
	end

	private
		def posts_params
			params.require(:post).permit(:title, :content)
		end

end
