class PostsController < ApplicationController
	# require 'aws-sdk-v1'
	# require 'aws-sdk'
	def index
		@post = Post.all
	end
 
 	def new
 		@post = Post.new
 	end

 	def create
 		@post = Post.new(post_params)
 		if @post.save
 			redirect_to posts_path
 		else
 			render :new
 		end
 	end

 	private

 	def post_params
 		params.require(:post).permit(:title, :image)
 	end
end