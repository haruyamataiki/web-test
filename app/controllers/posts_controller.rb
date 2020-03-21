class PostsController < ApplicationController
	def index
		@posts = Post.all
		@posts = Post.new
	end

	def show
		@post = Post.find(params[:id])
	end

 private
	def post_params
	    params.require(:post).permit(:title)
	end
end
