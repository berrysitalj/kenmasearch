class CommentsController < ApplicationController
	skip_before_action :owner_logged_in?, only: [:edit, :update,]
  skip_before_action :user_logged_in?
  
	def index
    @comment = Comment.all.order(updated_at: :desc).page(params[:page]).per(5)
  end

  def show
    @comment = Comment.find_by(random_url: params[:id])
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
      redirect_to("/comments/#{@comment.random_url}")
     else
       render("comments/new")
    end
    
    
  end

  def admin_show
    @comment = Comment.find_by(random_url: params[:id])
  end

  def edit
    @comment = Comment.find_by(random_url: params[:id])
    @new_random_url = @comment.random_url + "_update"
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.image.attach(params[:image]) if @comment.image.blank?
    @comment.random_url = @comment.random_url + "_updated"
    if @comment.update(comment_edit_params)
      redirect_to("/recruit/send_completely")
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find_by(random_url: params[:id])
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
    params.require(:comment).permit(:yomi, :shoptel, :addres, :pass, :image, :mail,
                                    :businessday, :businesstime1, :pricelist, :agegroup,
                                    :reservation, :topcomment, :comment, :tablenum,
                                    :tabletype, :service, :system, :ratio, :rule,
                                    :timeup, :homepage1, :homepage2, :homepage3,
                                    :homepage4, :opening)
  end
  

end
