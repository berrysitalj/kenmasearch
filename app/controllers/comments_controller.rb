class CommentsController < ApplicationController
	skip_before_action :owner_logged_in?
  skip_before_action :user_logged_in?
  
	def new
		@comment = Comment.new
  end

  def create
    @comment = Comment.create params.require(:comment).permit(:content, :image) # POINT
    redirect_to @comment
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id]) 
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update params.require(:comment).permit(:content, :image) # POINT
    redirect_to @comment
  end
end
