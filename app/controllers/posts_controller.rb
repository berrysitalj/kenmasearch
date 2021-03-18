class PostsController < ApplicationController
  skip_before_action :owner_logged_in?
  skip_before_action :user_logged_in?
  
  def index
    @user = User.all
  end

  def show
  	@user = User.find_by(id: params[:id])
  end

  def new
  	
  end

  def create
  	@user = User.new(userid: params[:userid])
    @user.save
    redirect_to("/posts/index")
  end

  def edit
    @user = User.find_by(id: params[:id])
  end
  
  def update
    @user = User.find_by(id: params[:id])
    @user.userid = params[:userid]
    @user.save
    redirect_to("/posts/index")
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end
end
