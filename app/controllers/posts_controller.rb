class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
	  @post = Post.find(params[:id])
	  @post.update(params.require(:post).permit(:title, :description)) 
	  #@post.update(title: params[:title], description: params[:description]) ## this won't work because, technically, you would
	  # need to write as '@post.update(title: params[:post][:title], description: params[:post][:description])' since 'forms_for' adds in the model to the root of the params hash. So, in order to avoid typing out the model name in params, and thus be consistent
	  # with how params are referred to in the create method, we need to require post and permit attributes title, and description.
	  redirect_to post_path(@post)
	end
end