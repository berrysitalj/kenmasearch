class CommentsController < ApplicationController
	skip_before_action :owner_logged_in?
  skip_before_action :user_logged_in?
  
	def index

  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create params.require(:comment).permit(:content)
    if image = params[:comment][:image]
      @comment.image.attach(image)
    end
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
    @comment.image.attach(params[:image]) if @comment.image.blank?
    if @comment.update(comment_params)
      redirect_to @comment
    else
      render 'edit'
    end

  end

  private
    def comment_params
      params.require(:comment).permit(:content, :image)
    end

end