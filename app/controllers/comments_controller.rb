class CommentsController < ApplicationController
	skip_before_action :owner_logged_in?, only: [:show, :edit]
  skip_before_action :user_logged_in?
  
	def index
    @comment = Comment.all.order(created_at: :desc).page(params[:page]).per(5)
  end

  def new
    @comment = Comment.new
  end

  def user_new
    
  end

  def create
    @comment = Comment.create(comment_create_params)
    
    if image = params[:comment][:image]
      @comment.image.attach(image)
    end
    
    if @comment.save
      flash[:notice] = "新規登録が完了しました"
      redirect_to @comment
     else
       render("comments/new")
    end
    
    
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def admin_show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id]) 
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.image.attach(params[:image]) if @comment.image.blank?
    if @comment.update(comment_edit_params)
      redirect_to @comment
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    redirect_to("/comments/index")
  end

  private
  def comment_create_params
    params.require(:comment).permit(:content, :random_url, :name, :mail, :tel,
                                    :shopname, :yomi, :shoptel, :addres, :pass,
                                    :businessday, :businesstime1, :pricelist,
                                    :topphoto, :photo1, :photo2, :agegroup,
                                    :reservation, :topcomment, :comment, :tablenum,
                                    :tabletype, :service, :system, :ratio, :rule,
                                    :timeup, :homepage1, :homepage2, :homepage3,
                                    :homepage4, :opening)
  end

  def comment_edit_params
    params.require(:comment).permit(:content, :yomi, :shoptel, :addres, :pass, :image,
                                    :businessday, :businesstime1, :pricelist, :agegroup,
                                    :reservation, :topcomment, :comment, :tablenum,
                                    :tabletype, :service, :system, :ratio, :rule,
                                    :timeup, :homepage1, :homepage2, :homepage3,
                                    :homepage4, :opening)
  end
  

end
