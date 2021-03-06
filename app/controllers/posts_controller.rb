class PostsController < ApplicationController
	def index
		@posts = Post.all
		@post = Post.new
	end

	def show
		@post = Post.find(params[:id])
		@post_comments = @post.post_comments
		@post_comment = PostComment.new
	end

	def create
		post = Post.new(post_params)
		post.user_id = current_user.id
		post.save
		redirect_to posts_path
	end

 private
	def post_params
	    params.require(:post).permit(:title,category_ids: [])
	end
end
